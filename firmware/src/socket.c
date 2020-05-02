#include "socket.h"

#include <sys/socket.h>     // for socket and bind
#include <sys/un.h>         // for sockaddr_un
#include <unistd.h>         // for write

#include <stdio.h>          // for printf
#include <string.h>         // for strcat, strlen, 
#include <stdlib.h>         // for exit

#include <signal.h>         // for sigaction
#include <err.h>			// for err

static int listen_socket_fd = -1;
static int client_socket_fd = -1;

// refs: https://linux.die.net/man/7/unix
// https://www.gnu.org/software/libc/manual/html_node/Sigaction-Function-Example.html
 
static void
sigpipe_handler(int signum)
{
    printf("SIGPIPE received! Client disconnected!\n");
    client_socket_fd = -1;
}


static void
_sigpipe_config(void)
{
    struct sigaction act;
    memset(&act, 0, sizeof(act));
    act.sa_handler = sigpipe_handler;//SIG_IGN;
    act.sa_flags = SA_RESTART;

    int result = sigaction(SIGPIPE, &act, NULL);
    if (result != 0)
        err(1, "sigaction");
}


int
create_socket(const char *socket_path)
{
    // Create socket
    listen_socket_fd = socket(AF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0);
    if (listen_socket_fd < 0)
    {
        printf("create_socket: socket() failed\n");
        return -1;
    } 

    // Bind to socket
    struct sockaddr_un saddr;
    saddr.sun_family = AF_UNIX;
    strcpy(saddr.sun_path, socket_path);
    unlink(socket_path);
    int ret = bind(listen_socket_fd, (struct sockaddr *)&saddr, sizeof(saddr));
    if (ret != 0)
    {
        printf("create_socket: bind() to %s failed\n", saddr.sun_path);
        return ret;
    }

    const unsigned int number_of_connections = 1;
    ret = listen(listen_socket_fd, number_of_connections);
    if (ret != 0) 
    {
        printf("create_socket: listen() failed\n");
        return ret;
    }

	// Configure SIGPIPE signal
    _sigpipe_config();

    return 0;
}

int send_to_socket(const char *socket_path, 
                   const double *data[], 
                   unsigned int data_length)
{
    // Defines each data format to be written in fifo
    const char format[] = "%09.6f,"; 
    const char format_length = 15;  // "999.999999," = 15 chars 

    // Computes the total lenght for string: (data + "\n\0")
    ssize_t str_length = (format_length * data_length) +2;
    char str[str_length];
    memset(str, 0, str_length);

    // Writes each data to string
    int ret = 0;
    char data_str[format_length];
    for (unsigned int i = 0; i < data_length; i++)
    {
        snprintf(data_str, format_length, format, *data[i]);
        strcat(str, data_str);
    }
    strcat(str, "\n");

    // Opens client socket
    if (client_socket_fd == -1) {
        ret = client_socket_fd = accept(listen_socket_fd, NULL, NULL);
        if (ret == -1) return ret;
    }

    // Writes string into socket
    if (client_socket_fd != -1)
        ret = send(client_socket_fd, str, strlen(str), 0);

    return ret;
}

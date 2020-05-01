#ifndef _SOCKET_H
#define _SOCKET_H

int create_socket(const char *socket_path);

int send_to_socket(const char *socket_path, 
                   const double *data, 
                   unsigned int data_length);

#endif /* ifndef _SOCKET_H */

import matplotlib.pyplot as plt
f = open("inc/fake_painel.h","w")
x = []
z = []
i=8
points=600
f.write("#ifndef _FAKE_PAINEL_H\n#define _FAKE_PAINEL_H\n\n")
f.write("float current_painel[%d] = {"% points)
for j in range(points):
    i=((100/((j*0.1)-41.25))+80)/10
    if(j>399):
        i=0.02
    print(i*j/10)
    x.append(i)
    z.append(j)
    f.write("%f"% i)
    if(j!=points-1):
        f.write(",")
f.write("};\n")
f.write("#endif //_FAKE_PAINEL_H")
f.close()
print(x)
plt.plot(range(points),x)
plt.show()





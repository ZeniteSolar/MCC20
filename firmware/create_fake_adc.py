import matplotlib.pyplot as plt
f = open("inc/fake_adc.h","w")
x = []
i=8
f.write("int power_dt[160] = {")
for j in range(400):
    i=(100/(j-400.3))+80
    print(i)
    x.append(i)
    f.write("%d"% i)
    if(j!=159):
        f.write(",")
f.write("};")
f.close()
print(x)
plt.plot(range(400),x)
plt.show()





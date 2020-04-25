f = open("inc/fake_adc.h","w")

p=0
f.write("int power_dt[160] = {")
for j in range(160):
    if j<120:
        p=p+1
    else: p=p-3
    print(p)
    f.write("%d"% p)
    if(j!=159):
        f.write(",")
f.write("};")
f.close()






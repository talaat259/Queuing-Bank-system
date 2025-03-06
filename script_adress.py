def time(pcount, tcount):
    if((tcount>0) and (pcount>0)) :
        x = (3 * (pcount + (tcount - 1))) / tcount
    elif(pcount==0):
        x=0
    else:
        
        x=255
    return x

adress = []
#8'd0: data_temp = 32'ha5c66363;

for i in range(7):
    for j in range(3):
        # Ensure both i and j are converted to 3-bit binary
        num_of_cust = str(bin(i))[2:].zfill(3)
        num_of_tellers = str(bin(j))[2:].zfill(2)
       # print(f"tellers={num_of_tellers}  number{num_of_cust}")
        adress.append((num_of_tellers + num_of_cust,int(time(i,j))))
        #print('-'*10)
        with open("Desktop/verilog_script.txt","a",) as file:
            x= "5'b"+ num_of_tellers + num_of_cust +": data_temp = "+"8'b"+str(bin(int(time(i,j)))[2:].zfill(8))+";"+"\n"
            file.write(x)
        print(x)

print(adress)
print(len(adress))

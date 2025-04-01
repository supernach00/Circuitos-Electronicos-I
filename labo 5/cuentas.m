
clc
clear
beta = 200
Icq=565.2E-6
geme = gm(Icq)
errepi = rpi(beta,Icq)
Rc = 10E3;
Ree = 10E3;
RE = 100;
%sin resistencias Re
Ad = (-geme*Rc)/2
Add = 2*Ad
Acc = (-beta*Rc)/((beta+1)*(2*Ree)+errepi)

Acc_aprox = (Rc/(2*Ree))
mag2db(80/0.49)

%con resistencias Re

Ad_con_Re = (-beta*Rc)/(2*(beta+1)*(RE)+ errepi)
Add_con_Re = 2*Ad_con_Re
Acc_con_Re = (-beta*Rc)/((beta+1)*(RE + 2*Ree)+errepi)

data socecon;
     input x1-x5;
cards;
5700   12.8   2500   270   25000
1000   10.9    600    10   10000
3400    8.8   1000    10    9000
3800   13.6   1700   140   25000
4000   12.8   1600   140   25000
8200    8.3   2600    60   12000
1200   11.4    400    10   16000
9100   11.5   3300    60   14000
9900   12.5   3400   180   18000
9600   13.7   3600   390   25000
9600    9.6   3300    80   12000
9400   11.4   4000   100   13000
;
proc factor data=socecon simple corr;
run;
proc factor data=socecon priors=smc preplot
          rotate=varimax reorder plot;
run;
proc factor data=socecon method=ml heywood n=2;
run;

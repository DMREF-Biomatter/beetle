function ETOTAL = MechStiffness(L1,L2,AROD,ABL,E1,E2,EPIL,NU1,NU2)
%computing the coefficients for area of the bi-layer
FBL=L1/(L1+L2);
K1=((FBL*E1/(1-NU1))+((1-FBL)*E2/(1-NU2)))^(-1);
K2=(FBL*NU1/(1-NU1))+((1-FBL)*NU2/(1-NU2));

EBL=((FBL*(1-2*NU1)*(1+NU1)/(E1*(1-NU1))) + ...
    ((1-FBL)*(1-2*NU2)*(1+NU2)/(E2*(1-NU2)))...
    + (2*FBL*NU1*K1*K2/(1-NU1)) + (2*(1-FBL)*NU2*K1*K2/(1-NU2)))^(-1);

%here we use the bi-layer stiffness to compute the stifness of the overall
%beetle by accounting for the pillars and the bi-layer as a seprate
%homogeneous material. Effects of poissons ratio between the pillars and
%the bi-layer are ignored and numerical simulation has shown little to no
%effect.

FPIL=AROD/(ABL+AROD);
ETOTAL=FPIL*EPIL+(1-FPIL)*EBL;

end


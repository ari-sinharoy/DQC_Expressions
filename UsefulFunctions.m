(* ::Package:: *)

(* ::Text:: *)
(*Gaussian and skew gaussian functions*)


\[CapitalXi][x_,\[Mu]_,\[Sigma]_]:=Sqrt[\[Pi]/2] (1/Sqrt[1/\[Sigma]^2]+\[Sigma] Erf[(x-\[Mu])/(Sqrt[2] \[Sigma])])
G[x_,\[Mu]_,\[Sigma]_] := 1/(Sqrt[2*\[Pi]]*\[Sigma])*Exp[-((x-\[Mu])^2/(2*\[Sigma]^2))]
skew$G[x_,\[Mu]_,\[Sigma]_,s_]:=2/(Sqrt[2*\[Pi]]*\[Sigma])*Exp[-((x-\[Mu])^2/(2*\[Sigma]^2))]*\[CapitalXi][s*x,\[Mu],\[Sigma]]


(* ::Input:: *)
(*(* Formula to calculate sum of ArcTan's and ArcTan of half angle *)*)


sum$atan[x_,y_]:=ArcTan[(x+y)/(1-x*y)];
dbl$tan[atan_]:=Module[{A,B},A=Tan[atan];B=A/(1+Sqrt[1+A^2]);Return[2*ArcTan[B]]]


(* ::Text:: *)
(*1D FFT Code *)


fft[dat_]:=
Module[{dat$f,rot$,dim},
dim = Dimensions[dat][[1]];
rot$ = If[OddQ[dim],(dim+1)/2,(dim)/2+1];
dat$f = RotateLeft[Fourier[dat],rot$];Return[Normalize[dat$f]]]

ifft[dat_]:=
Module[{dat$f,rot$,dim},
dim = Dimensions[dat][[1]];
rot$ = If[OddQ[dim],(dim+1)/2,(dim)/2+1];
dat$f = RotateLeft[InverseFourier[dat],rot$];Return[Normalize[dat$f]]]


(* ::Text:: *)
(*2D FFT Code *)


fft2[dat_]:=
Module[{dat$c,dat$f,rot$,dim1,dim2},
{dim1,dim2} = Dimensions[dat];
rot$ = {If[OddQ[dim1],(dim1+1)/2,(dim1/2)+1],If[OddQ[dim2],(dim2+1)/2,(dim2/2)+1]};
dat$c = Fourier[dat];
dat$f = RotateLeft[dat$c,rot$];Return[dat$f]]

ifft2[dat_]:=
Module[{dat$c,dat$f,rot$,dim1,dim2},
{dim1,dim2} = Dimensions[dat];
rot$ = {If[OddQ[dim1],(dim1+1)/2,(dim1/2)+1],If[OddQ[dim2],(dim2+1)/2,(dim2/2)+1]};
dat$c = InverseFourier[dat];
dat$f = RotateLeft[dat$c,rot$];Return[dat$f]]


(* ::Text:: *)
(*Conversion between frequency and T*)


ftoT[x_]:=Module[{h,\[Mu]b},\[Mu]b = 9.274*10^-24;h=6.626*10^-34;Return[h/(2.0036*\[Mu]b)*x]];
Ttof[x_]:=Module[{h,\[Mu]b},\[Mu]b = 9.274*10^-24;h=6.626*10^-34;Return[(2.0036*\[Mu]b)/h*x]];


(* ::Text:: *)
(*Root mean square deviation*)


rmsd[dat1_,dat2_]:=
Module[{dim},
If[Dimensions[dat1]==Dimensions[dat2],Return[Mean[(dat1-dat2)^2]^(1/2)//N],
Print["Error: Datasets are of unequal lengths"]]]


(* ::Text:: *)
(*Min-Max scaling*)


sc$mm[dat_]:=
Module[{min,max,sc$dat},
max = Max[dat];min = Min[dat];
sc$dat = (dat-min)/(max-min);
Return[sc$dat]]


(* ::Text:: *)
(*List Convolve*)


LC$m[ker_,dat_]:=
Module[{dim,dat$1,n,i,dat$f},
n = Dimensions[ker][[1]]; 
dat$1 = ArrayPad[dat,Round[(n-1)/2]];dim = Dimensions[dat$1][[1]];
i = 0;
dat$f = {};While[i<=dim-n,dat$f = Append[dat$f,Mean[ker*dat$1[[i+1;;i+n]]]];i++];
Return[dat$f]]


(* ::Text:: *)
(*List Convolve #2*)


LC$m2[dat_,r0_,\[Sigma]_,m_,n1_,n2_]:=
Module[{dim,c$tab,p$tab,c,dat$a,dat$b},
c$tab = Solve[c/r0^3==#,c][[1,1,2]]&/@dat[[All,1]];
p$tab = dat[[All,2]];
dat$a = Table[{c$tab[[#]]/r^3,p$tab[[#]]*G[r,r0,\[Sigma]]},{r,r0-m*\[Sigma],r0+m*\[Sigma],(2*m*\[Sigma])/n1}]&/@Range[Dimensions[dat][[1]]];
dat$b = Mean/@Partition[SortBy[Flatten[dat$a,1],First],n2];
Return[dat$b]]


(* ::Text:: *)
(*Extract Operators from an Expression*)


op$ext[elem_]:=
Module[{pos,ans},pos=Position[OperatorQ/@Level[elem,1],True];
ans=Level[elem,1][[pos[[1,1]]]];
Return[ans]];


(* ::Text:: *)
(*Collect Scalar Coefficients by Operators*)


col$op[exp_,op_,s_]:= 
Module[{op$l,exp$l,dim,exp$s,j},
exp$l = exp//Expand;dim = Dimensions[exp$l][[1]];
op$l = {};
For[j=1,j<=dim,j++,op$l = Append[op$l,op$ext[exp$l[[j]]]]];
op$l = DeleteDuplicates[op$l];
If[op==1,exp$s = Simplify[#,TimeConstraint->s]&/@Collect[exp$l,op$l],If[op==2,exp$s = FullSimplify[#,TimeConstraint->s]&/@Collect[exp$l,op$l],exp$s = Collect[exp$l,op$l]]];
Return[exp$s]];


Print["Useful functions loaded. Run the command, uf$list[] to get a list of functions"]

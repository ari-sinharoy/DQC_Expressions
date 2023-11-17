(* ::Package:: *)

(* Created by
 * John Marohn, Cornell University
 * 
 * Modified by
 * Aritro Sinha Roy, Cornell University
 *)

CreateOperator[{{Ixe1,Iye1,Ize1},{Ixe2,Iye2,Ize2},{Ixe3,Iye3,Ize3},{Ixe4,Iye4,Ize4},{Ixe5,Iye5,Ize5},{Ixe6,Iye6,Ize6},{Ixe7,Iye7,Ize7},{Ixe8,Iye8,Ize8},{Ixe9,Iye9,Ize9},{Ixe10,Iye10,Ize10}}]


Ixe1 /: Comm[Ixe1,Iye1] =  I Ize1;
Ixe1 /: Comm[Ixe1,Ize1] = -I Iye1;
Iye1 /: Comm[Iye1,Ixe1] = -I Ize1;
Iye1 /: Comm[Iye1,Ize1] =  I Ixe1;
Ize1 /: Comm[Ize1,Iye1] = -I Ixe1;
Ize1 /: Comm[Ize1,Ixe1] =  I Iye1; 

Ize1 /: Mult[a___,Ize1,Ize1,b___] := Mult[a,b]/4;
Iye1 /: Mult[a___,Iye1,Iye1,b___] := Mult[a,b]/4;
Ixe1 /: Mult[a___,Ixe1,Ixe1,b___] := Mult[a,b]/4;

Ize1 /: Mult[a___,Ize1,Ixe1,b___] :=  I Mult[a,Iye1,b]/2;
Ize1 /: Mult[a___,Ize1,Iye1,b___] := -I Mult[a,Ixe1,b]/2;

Iye1 /: Mult[a___,Iye1,Ixe1,b___] := -I Mult[a,Ize1,b]/2;
Iye1 /: Mult[a___,Iye1,Ize1,b___] :=  I Mult[a,Ixe1,b]/2;

Ixe1 /: Mult[a___,Ixe1,Ize1,b___] := -I Mult[a,Iye1,b]/2;
Ixe1 /: Mult[a___,Ixe1,Iye1,b___] :=  I Mult[a,Ize1,b]/2;

Print["Loaded Ixe1, Iye1, Ize1"];


Ixe2 /: Comm[Ixe2,Iye2] =  I Ize2;
Ixe2 /: Comm[Ixe2,Ize2] = -I Iye2;
Iye2 /: Comm[Iye2,Ixe2] = -I Ize2;
Iye2 /: Comm[Iye2,Ize2] =  I Ixe2;
Ize2 /: Comm[Ize2,Iye2] = -I Ixe2;
Ize2 /: Comm[Ize2,Ixe2] =  I Iye2; 

Ize2 /: Mult[a___,Ize2,Ize2,b___] := Mult[a,b]/4;
Iye2 /: Mult[a___,Iye2,Iye2,b___] := Mult[a,b]/4;
Ixe2 /: Mult[a___,Ixe2,Ixe2,b___] := Mult[a,b]/4;

Ize2 /: Mult[a___,Ize2,Ixe2,b___] :=  I Mult[a,Iye2,b]/2;
Ize2 /: Mult[a___,Ize2,Iye2,b___] := -I Mult[a,Ixe2,b]/2;

Iye2 /: Mult[a___,Iye2,Ixe2,b___] := -I Mult[a,Ize2,b]/2;
Iye2 /: Mult[a___,Iye2,Ize2,b___] :=  I Mult[a,Ixe2,b]/2;

Ixe2 /: Mult[a___,Ixe2,Ize2,b___] := -I Mult[a,Iye2,b]/2;
Ixe2 /: Mult[a___,Ixe2,Iye2,b___] :=  I Mult[a,Ize2,b]/2;

Print["Loaded Ixe2, Iye2, Ize2"];


Ixe3 /: Comm[Ixe3,Iye3] =  I Ize3;
Ixe3 /: Comm[Ixe3,Ize3] = -I Iye3;
Iye3 /: Comm[Iye3,Ixe3] = -I Ize3;
Iye3 /: Comm[Iye3,Ize3] =  I Ixe3;
Ize3 /: Comm[Ize3,Iye3] = -I Ixe3;
Ize3 /: Comm[Ize3,Ixe3] =  I Iye3; 

Ize3 /: Mult[a___,Ize3,Ize3,b___] := Mult[a,b]/4;
Iye3 /: Mult[a___,Iye3,Iye3,b___] := Mult[a,b]/4;
Ixe3 /: Mult[a___,Ixe3,Ixe3,b___] := Mult[a,b]/4;

Ize3 /: Mult[a___,Ize3,Ixe3,b___] :=  I Mult[a,Iye3,b]/2;
Ize3 /: Mult[a___,Ize3,Iye3,b___] := -I Mult[a,Ixe3,b]/2;

Iye3 /: Mult[a___,Iye3,Ixe3,b___] := -I Mult[a,Ize3,b]/2;
Iye3 /: Mult[a___,Iye3,Ize3,b___] :=  I Mult[a,Ixe3,b]/2;

Ixe3 /: Mult[a___,Ixe3,Ize3,b___] := -I Mult[a,Iye3,b]/2;
Ixe3 /: Mult[a___,Ixe3,Iye3,b___] :=  I Mult[a,Ize3,b]/2;

Print["Loaded Ixe3, Iye3, Ize3"];


Ixe4 /: Comm[Ixe4,Iye4] =  I Ize4;
Ixe4 /: Comm[Ixe4,Ize4] = -I Iye4;
Iye4 /: Comm[Iye4,Ixe4] = -I Ize4;
Iye4 /: Comm[Iye4,Ize4] =  I Ixe4;
Ize4 /: Comm[Ize4,Iye4] = -I Ixe4;
Ize4 /: Comm[Ize4,Ixe4] =  I Iye4; 

Ize4 /: Mult[a___,Ize4,Ize4,b___] := Mult[a,b]/4;
Iye4 /: Mult[a___,Iye4,Iye4,b___] := Mult[a,b]/4;
Ixe4 /: Mult[a___,Ixe4,Ixe4,b___] := Mult[a,b]/4;

Ize4 /: Mult[a___,Ize4,Ixe4,b___] :=  I Mult[a,Iye4,b]/2;
Ize4 /: Mult[a___,Ize4,Iye4,b___] := -I Mult[a,Ixe4,b]/2;

Iye4 /: Mult[a___,Iye4,Ixe4,b___] := -I Mult[a,Ize4,b]/2;
Iye4 /: Mult[a___,Iye4,Ize4,b___] :=  I Mult[a,Ixe4,b]/2;

Ixe4 /: Mult[a___,Ixe4,Ize4,b___] := -I Mult[a,Iye4,b]/2;
Ixe4 /: Mult[a___,Ixe4,Iye4,b___] :=  I Mult[a,Ize4,b]/2;

Print["Loaded Ixe4, Iye4, Ize4"];


Ixe5 /: Comm[Ixe5,Iye5] =  I Ize5;
Ixe5 /: Comm[Ixe5,Ize5] = -I Iye5;
Iye5 /: Comm[Iye5,Ixe5] = -I Ize5;
Iye5 /: Comm[Iye5,Ize5] =  I Ixe5;
Ize5 /: Comm[Ize5,Iye5] = -I Ixe5;
Ize5 /: Comm[Ize5,Ixe5] =  I Iye5; 

Ize5 /: Mult[a___,Ize5,Ize5,b___] := Mult[a,b]/4;
Iye5 /: Mult[a___,Iye5,Iye5,b___] := Mult[a,b]/4;
Ixe5 /: Mult[a___,Ixe5,Ixe5,b___] := Mult[a,b]/4;

Ize5 /: Mult[a___,Ize5,Ixe5,b___] :=  I Mult[a,Iye5,b]/2;
Ize5 /: Mult[a___,Ize5,Iye5,b___] := -I Mult[a,Ixe5,b]/2;

Iye5 /: Mult[a___,Iye5,Ixe5,b___] := -I Mult[a,Ize5,b]/2;
Iye5 /: Mult[a___,Iye5,Ize5,b___] :=  I Mult[a,Ixe5,b]/2;

Ixe5 /: Mult[a___,Ixe5,Ize5,b___] := -I Mult[a,Iye5,b]/2;
Ixe5 /: Mult[a___,Ixe5,Iye5,b___] :=  I Mult[a,Ize5,b]/2;

Print["Loaded Ixe5, Iye5, Ize5"];


Ixe6 /: Comm[Ixe6,Iye6] =  I Ize6;
Ixe6 /: Comm[Ixe6,Ize6] = -I Iye6;
Iye6 /: Comm[Iye6,Ixe6] = -I Ize6;
Iye6 /: Comm[Iye6,Ize6] =  I Ixe6;
Ize6 /: Comm[Ize6,Iye6] = -I Ixe6;
Ize6 /: Comm[Ize6,Ixe6] =  I Iye6; 

Ize6 /: Mult[a___,Ize6,Ize6,b___] := Mult[a,b]/4;
Iye6 /: Mult[a___,Iye6,Iye6,b___] := Mult[a,b]/4;
Ixe6 /: Mult[a___,Ixe6,Ixe6,b___] := Mult[a,b]/4;

Ize6 /: Mult[a___,Ize6,Ixe6,b___] :=  I Mult[a,Iye6,b]/2;
Ize6 /: Mult[a___,Ize6,Iye6,b___] := -I Mult[a,Ixe6,b]/2;

Iye6 /: Mult[a___,Iye6,Ixe6,b___] := -I Mult[a,Ize6,b]/2;
Iye6 /: Mult[a___,Iye6,Ize6,b___] :=  I Mult[a,Ixe6,b]/2;

Ixe6 /: Mult[a___,Ixe6,Ize6,b___] := -I Mult[a,Iye6,b]/2;
Ixe6 /: Mult[a___,Ixe6,Iye6,b___] :=  I Mult[a,Ize6,b]/2;

Print["Loaded Ixe6, Iye6, Ize6"];


Ixe7 /: Comm[Ixe7,Iye7] =  I Ize7;
Ixe7 /: Comm[Ixe7,Ize7] = -I Iye7;
Iye7 /: Comm[Iye7,Ixe7] = -I Ize7;
Iye7 /: Comm[Iye7,Ize7] =  I Ixe7;
Ize7 /: Comm[Ize7,Iye7] = -I Ixe7;
Ize7 /: Comm[Ize7,Ixe7] =  I Iye7; 

Ize7 /: Mult[a___,Ize7,Ize7,b___] := Mult[a,b]/4;
Iye7 /: Mult[a___,Iye7,Iye7,b___] := Mult[a,b]/4;
Ixe7 /: Mult[a___,Ixe7,Ixe7,b___] := Mult[a,b]/4;

Ize7 /: Mult[a___,Ize7,Ixe7,b___] :=  I Mult[a,Iye7,b]/2;
Ize7 /: Mult[a___,Ize7,Iye7,b___] := -I Mult[a,Ixe7,b]/2;

Iye7 /: Mult[a___,Iye7,Ixe7,b___] := -I Mult[a,Ize7,b]/2;
Iye7 /: Mult[a___,Iye7,Ize7,b___] :=  I Mult[a,Ixe7,b]/2;

Ixe7 /: Mult[a___,Ixe7,Ize7,b___] := -I Mult[a,Iye7,b]/2;
Ixe7 /: Mult[a___,Ixe7,Iye7,b___] :=  I Mult[a,Ize7,b]/2;

Print["Loaded Ixe7, Iye7, Ize7"];


Ixe8 /: Comm[Ixe8,Iye8] =  I Ize8;
Ixe8 /: Comm[Ixe8,Ize8] = -I Iye8;
Iye8 /: Comm[Iye8,Ixe8] = -I Ize8;
Iye8 /: Comm[Iye8,Ize8] =  I Ixe8;
Ize8 /: Comm[Ize8,Iye8] = -I Ixe8;
Ize8 /: Comm[Ize8,Ixe8] =  I Iye8; 

Ize8 /: Mult[a___,Ize8,Ize8,b___] := Mult[a,b]/4;
Iye8 /: Mult[a___,Iye8,Iye8,b___] := Mult[a,b]/4;
Ixe8 /: Mult[a___,Ixe8,Ixe8,b___] := Mult[a,b]/4;

Ize8 /: Mult[a___,Ize8,Ixe8,b___] :=  I Mult[a,Iye8,b]/2;
Ize8 /: Mult[a___,Ize8,Iye8,b___] := -I Mult[a,Ixe8,b]/2;

Iye8 /: Mult[a___,Iye8,Ixe8,b___] := -I Mult[a,Ize8,b]/2;
Iye8 /: Mult[a___,Iye8,Ize8,b___] :=  I Mult[a,Ixe8,b]/2;

Ixe8 /: Mult[a___,Ixe8,Ize8,b___] := -I Mult[a,Iye8,b]/2;
Ixe8 /: Mult[a___,Ixe8,Iye8,b___] :=  I Mult[a,Ize8,b]/2;

Print["Loaded Ixe8, Iye8, Ize8"];


Ixe9 /: Comm[Ixe9,Iye9] =  I Ize9;
Ixe9 /: Comm[Ixe9,Ize9] = -I Iye9;
Iye9 /: Comm[Iye9,Ixe9] = -I Ize9;
Iye9 /: Comm[Iye9,Ize9] =  I Ixe9;
Ize9 /: Comm[Ize9,Iye9] = -I Ixe9;
Ize9 /: Comm[Ize9,Ixe9] =  I Iye9; 

Ize9 /: Mult[a___,Ize9,Ize9,b___] := Mult[a,b]/4;
Iye9 /: Mult[a___,Iye9,Iye9,b___] := Mult[a,b]/4;
Ixe9 /: Mult[a___,Ixe9,Ixe9,b___] := Mult[a,b]/4;

Ize9 /: Mult[a___,Ize9,Ixe9,b___] :=  I Mult[a,Iye9,b]/2;
Ize9 /: Mult[a___,Ize9,Iye9,b___] := -I Mult[a,Ixe9,b]/2;

Iye9 /: Mult[a___,Iye9,Ixe9,b___] := -I Mult[a,Ize9,b]/2;
Iye9 /: Mult[a___,Iye9,Ize9,b___] :=  I Mult[a,Ixe9,b]/2;

Ixe9 /: Mult[a___,Ixe9,Ize9,b___] := -I Mult[a,Iye9,b]/2;
Ixe9 /: Mult[a___,Ixe9,Iye9,b___] :=  I Mult[a,Ize9,b]/2;

Print["Loaded Ixe9, Iye9, Ize9"];


Ixe10 /: Comm[Ixe10,Iye10] =  I Ize10;
Ixe10 /: Comm[Ixe10,Ize10] = -I Iye10;
Iye10 /: Comm[Iye10,Ixe10] = -I Ize10;
Iye10 /: Comm[Iye10,Ize10] =  I Ixe10;
Ize10 /: Comm[Ize10,Iye10] = -I Ixe10;
Ize10 /: Comm[Ize10,Ixe10] =  I Iye10; 

Ize10 /: Mult[a___,Ize10,Ize10,b___] := Mult[a,b]/4;
Iye10 /: Mult[a___,Iye10,Iye10,b___] := Mult[a,b]/4;
Ixe10 /: Mult[a___,Ixe10,Ixe10,b___] := Mult[a,b]/4;

Ize10 /: Mult[a___,Ize10,Ixe10,b___] :=  I Mult[a,Iye10,b]/2;
Ize10 /: Mult[a___,Ize10,Iye10,b___] := -I Mult[a,Ixe10,b]/2;

Iye10 /: Mult[a___,Iye10,Ixe10,b___] := -I Mult[a,Ize10,b]/2;
Iye10 /: Mult[a___,Iye10,Ize10,b___] :=  I Mult[a,Ixe10,b]/2;

Ixe10 /: Mult[a___,Ixe10,Ize10,b___] := -I Mult[a,Iye10,b]/2;
Ixe10 /: Mult[a___,Ixe10,Iye10,b___] :=  I Mult[a,Ize10,b]/2;

Print["Loaded Ixe10, Iye10, Ize10"];

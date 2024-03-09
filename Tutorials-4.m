%%

% 3. COURSECON International Summer Seminars - 2023 July & August

% Genç Ekonomistler Kulübü

% Lecture: Asst. Prof. Pınar Tat / Gebze Technical University

% Create (Applied) : Yasin Tosun / Siegen University

%{

%  ****************** LESSON 4 : Derivative ***********************

% Derivative Rules – Fixed Rule

clc ; clear ; clear all ;
syms x a
f(x, a) = a*x
dfk = diff(f,x)

clc ; clear ; clear all ;
syms x
f(x) = 3*x^2 - 4;
dfk = diff(f,x)

clc ; clear ; clear all ;
syms x
f(x) = 3*x^2 - 4*x + 6;
dfk = diff(f,x)
%2derivative
dfk1 = diff(diff(f,x))

% Derivation Rules – Power Rule (Polynomial Rule)

clc ; clear ; clear all ;
syms x a k
f(x, a, k) = a*x^k
dfk = diff(f,x)

% Derivative Rules – Chain Rule

clc ; clear ; clear all ;
syms x a k
f(x, a, k) = (a*x)^k
dfk = diff(f,x)

% Derivative Rules–Sum (and difference) Rule

clc ; clear ; clear all ;
syms x a b c d
f(x, a, b, c, d) = a*x^b + c*x^d
dfk = diff(f,x)

% Derivation Rules – Multiplication Rule

clc ; clear ; clear all ;
syms x a b c d
f(x, a, b, c) = (a*x^b)*(c*x^d)
dfk = diff(f,x)

% Derivative Rules – Quotient Rule

clc ; clear ; clear all ;
syms x a b c d
f(x, a, b, c) = (a*x^b)/(c*x^d)
dfk = diff(f,x)

% Derivative Rules – Exponential

clc ; clear ; clear all ;
syms x a
f(x, a) = exp(a*x)
dfk = diff(f,x)

This is a special case of any power function.

clc ; clear ; clear all ;
syms x a c
f(x, a, c) = c^(a*x)
dfk = diff(f,x)

% Derivation Rules – Logarithmic

clc ; clear ; clear all ;
syms x a
f(x, a) = log(a*x)
dfk = diff(f,x)

%     *EXAMPLES*

% Single Variable Derivative

clc ; clear ; clear all ;
syms x
f = cos(8*x)
g = sin(5*x)*exp(x)
h =(2*x^2+1)/(3*x)
diff(f)
diff(g)
diff(h)

%Derivative of Constant

clc ; clear ; clear all ;
constant = sym('5');
diff(constant)

% 2nd Order Derivative

clc ; clear ; clear all ;
syms x
f = x^3
diff(f,2)
%or
diff(diff(f))

Finding Price and Quantity in % Supply - Demand Functions
clc ; clear ; clear all ;
q1=100-2*p;
q2=-40+4*p;
q=(q1 + q2)/2;
a=100
b=-2
c=-40
d=4
p=(a+c)/(b+d)
q=(a*d - b*c)/(b+d)
%Are the results accurate?
************ OR ********
clc ; clear ; clear all ;
syms p q
solution = solve([100-2*p==q,-40+4*p==q],[p,q]);
solution.p
solution.q

% Marginal Cost and Revenue Function Example

clc ; clear ; clear all ;
AR= 15 - q;
R= (AR)*q;
syms q
g(q) = R
diff(g,q)
MR=diff(g,q)
%********************
clc ; clear ; clear all ;
C=q^3 - 4*q^2 + 10*q + 75
f(q)= C;
syms q
f(q) = q^3 - 4*q^2 + 10*q + 75
diff(f,q);
MC = diff(f,q)

% Chain Rule Example

clc ; clear ; clear all ;
syms u v x(u,v) y(u,v) z(x,y)
z = exp(x*y) ;
x = 2*u+v ;
y = u/v ;
dz_du = diff(z,u)

clc ; clear ; clear all ;
syms y(x) z(y)
z=3*y^2;
y=2*x+5;
Dyt = diff(y,x)
Dzt = diff(z,x)
result = Dzt * Dyt

% Partial Derivative

clc ; clear ; clear all ;
syms x y
f = sin(x*y)
diff(f,x)

clc ; clear ; clear all ;
syms x y
f = x^2*y^3
diff(f,x)
diff(f,y)

clc ; clear ; clear all ;
syms x y
z=3*x^2 + x*y + 4*y^2;
Dzdx=diff(z,x);
Dzdy=diff(z,y);
%******Let's print the following statements on the command line*****
Dzdx;
Dzdy;

% Derivative in Matrices

syms x
A = [cos(4*x) 3*x ; x sin(5*x)]
diff(A)


% Price Elasticity of Demand Example
clc ; clear ; clear all ;
syms p
q = 100 - 2*p
dq=diff(q,p);
p=1;
q=50;
delta=p/q;
e=dq*delta

% Price Elasticity of Demand Example - 2
clc ; clear ; clear all ;
p = 20;
y = 5000;
q = 100 - 2*p + .02*y
Quantity = q;
%********************
syms p y
q = 100 - 2*p + .02*5000
q1 = q
dq1=diff(q1,p);
p=20
delta=p/Quantity;
e=dq1*delta

% Income Elasticity of Demand Example
clc ; clear ; clear all ;
p = 20;
y = 5000;
q = 100 - 2*p + .02*y
Quantity = q;
%********************
syms p y
q = 100 - 2*20 + .02*y
q1 = q
dq1 = diff(q1,y);
y = 5000
delta = y/Quantity;
e = dq1*delta


%}

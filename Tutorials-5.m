%%

% 3. COURSECON International Summer Seminars - 2023 July & August

% Genç Ekonomistler Kulübü

% Lecture: Asst. Prof. Pınar Tat / Gebze Technical University

% Create (Applied) : Yasin Tosun / Siegen University 

%{

%  ****************** LESSON 5 : Solve Equatioms ***********************

%Solution of Linear Equation with Two Unknowns
clc ; clear ; clear all ;
f = 2x + 3y = 5
g = 3x + 4y = 10
A = [2 3; 3 4];
B = [5;10];
ANS = A\B;
% ************* OR **********
syms x y z
solution = solve([2*x + 3*y == 5,3*x + 4*y == 10],[x,y]);
solution.x
solution.y

%Solution of NonLinear Equation with Two Unknowns
clc ; clear ; clear all ;
syms x y
f = y - 4*x^2 +3;
g = .25*x^2 + y^2 -1;
syms x y
[a b] = solve(f,g);
[a b]
double([a b])
% ************* OR **********
syms x y
solution = solve([y - 4*x^2 == -3, .25*x^2 + y^2 == 1],[x,y]);
solution.x
solution.y


%Linear equation solution with three unknowns
clc ; clear ; clear all ;
% f = 2x + 3y + 5z = 5
%g = 3x + 4y + 7z = 10
% h = x + y + z = 13
A = [2 3 5; 3 4 7; 1 1 1];
B = [5;10;13];
ANS = A\B;
************** OR **************
syms x y z
solution = solve([2*x + 3*y + 5*z == 5 ,3*x + 4*y + 7*z == 10, x + y + z == 13],[x,y, z]);
solution
solution.x
solution.y
solution.z

% Additional Sample
clc ; clear ; clear all ;
% f = 2x + y + z = 7
% g = 2x - y + 2z = 6
% h = x - 2y + z = 0
A = [2 1 1; 2 -1 2; 1 -2 1];
B = [7;6;0];
ANS = A\B;
% ************* OR **********
syms x y z
solution = solve([2*x + y + z == 7,2*x - y + 2*z == 6,x - 2*y + z == 0],[x,y,z]);
solution.x
solution.y
solution.z

% NonLinear Equation Solution with Three Unknowns
clc ; clear ; clear all ;
% f = 4*x^2 + 9*y^2 + z^2 = 25
% g = 9*x^2 + 16*y^2 + z^2 = 100
% h = x^2 + y^2 + z^2 == 169
syms x y z
solution = solve([4*x^2 + 9*y^2 + z^2 == 25 ,9*x^2 + 16*y^2 + z^2 == 100, x^2 + y^2 + z^2 == 169],[x,y,z]);
solution
solution.x
solution.y
solution.z

% *Implicit Function*

%Example-1

clc ; clear ; clear all ;
syms x y
fimplicit(x^2 - y^2 == 1)
%********* OR *************
clc ; clear ; clear all ;
syms f(x,y)
f(x,y) = x^2 - y^2 - 1;
fimplicit(f)

%Example-2

clc ; clear ; clear all ;
syms x y
fimplicit(x^2 - y^2 == 9)
%********* OR *************
clc ; clear ; clear all ;
syms f(x,y)
f(x,y) = x^2 - y^2 - 9;
fimplicit(f)

% Example - 3: Limit Ranges in Variables

%intervals −4<x<0 and −2<y<2
clc ; clear ; clear all ;
syms x y
circle = x^2 + y^2 == 3;
fimplicit(circle, [-4 0 -2 2])

% Example - 4: Two-Equation Implicit Func. Drawing in a Single Image

clc ; clear ; clear all ;
syms x y
circle1 = x^2 + y^2 == 1;
circle2 = x^2 + y^2 == 3;

subplot(2,1,1)
fimplicit([circle1 circle2])
title('Multiple Equations Using Vector Input')

subplot(2,1,2)
fimplicit(circle1)
hold on
fimplicit(circle2)
title('Multiple Equations Using hold on Command')

hold off

%Example - 5: Change of Graphical Notations of Example 4

clc ; clear ; clear all ;
syms x y
circle = x^2 + y^2;
fimplicit(circle == 1, 'Linewidth', 2)
hold on
fimplicit(circle == 2, '--or')
fimplicit(circle == 3, '-.*c')
legend('show','Location','best')
hold off


%Relative Minimum / Maximum - Critical Value
clc ; clear ; clear all ;
syms x
y=x^3-12*x^2+36*x+8
Let's look at the % chart.
y = @(x) x^3-12*x^2+36*x+8;
fplot(y)
%1st order derivative with respect to x
dx=diff(y,x)
solution = solve([3*x^2 - 24*x + 36 == 0],[x]);
solution(1,1) %root1
solution(2,1) %root2
% x1=solution(1,1)
% x2=solution(2,1)
%Let's draw the function graph.
y = @(x) x^3-12*x^2+36*x+8;
fplot(@(x) x^3-12*x^2+36*x+8,[0 8],'b')


%}
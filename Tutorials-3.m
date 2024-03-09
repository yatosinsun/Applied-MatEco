%%

% 3. COURSECON International Summer Seminars - 2023 July & August

% Genç Ekonomistler Kulübü

% Lecture: Asst. Prof. Pınar Tat / Gebze Technical University

% Create (Applied) : Yasin Tosun / Siegen University 

%{
%  ****************** LESSON 3: Matrix Algebra ***********************

% We had associative, commutative and distributive laws for scalar algebra,
% we can think of these as the following six bullet points.
% Only the multiplicative-commutative law no longer works for the matrix,
% other rules work for matrix and scalar algebra.

% Relational laws work the same way as in scalar algebra for matrix
%
% (A+B)+C=A+(B+C)
%
% (A⋅B)⋅C=A⋅(B⋅C)
%
% Commutative Law also works for addition
%
% A+B=B+A
%
% with scalars, we know
%
% 3⋅4=4⋅3
%
% but commutative law for matrix multiplication does not work
%
% A⋅B≠B⋅A
%
% Matrix sizes may not even match for multiplication.
%
% and the Distribution Law still applies to the matrix
%
% A⋅(B+C)=A⋅B+A⋅C
%
% (B+C)⋅A=B⋅A+C⋅A


% Non-Square
clc ; clear ; clear all ;
A = rand(2,3); %A=2x3

B = rand(3,4); %B=3x4

disp(A*B)

r = randi(10,5) 10% row 5 column random matrix between 1 and 1
r = randi([-5,5],10,1) Random matrix with 10 rows and 5 columns between -5 and 5%

Since the %mxn size does not hold, the transaction will not be approved anyway.
C=(B*A);
disp C

%Let's create a warning message.
try
     B*A
catch me
     disp('does not work! Dimension mismatch')
end

%Well, if the mxn size were the same;

% Square
clc ; clear ; clear all ;
A = rand(3,3)
B = rand(3,3)
A*B
B*A
%Even if the mxn size fits here, the results will not be the same.

% *Transpose*

% Given matrix A and scalar value r:
%
% 1. (r⋅A)^T=r⋅A^T
%
2%: (A^T)^T=A
%
3%: (A+B)^T=A^T+B^T
%
4%: (A⋅B)^T=B^T⋅A^T

clc ; clear ; clear all ;

A = rand(2,3) %A = 2x3

Atranspose = (A') %Atranspose = 3x2

% *Scalar Multiplication/Division, Addition/Subtraction*

% If we multiply a matrix by a number, we multiply each element of that matrix by that number.
Addition, subtraction and division of a matrix with a scalar value % work the same way

clc ; clear ; clear all ;

c = 10

matA = rand(3,2)

%Impact

c*matA

%Divide

matA/c

%Extraction

matA - c

%Collection

matA + c

% *Addition and Subtraction*

% You can add/subtract two matrices of the same size.

%Collection

clc ; clear ; clear all ;

colVecA = rand(3,1)

colVecB = rand(3,1)

colVecA + colVecB

%Extraction

clc ; clear ; clear all ;

matA = rand(3,2)

matB = rand(3,2)

matA - matB

% Matrix Multiplication
% When we try to multiply two matrices together: A⋅B
% for example, the number of columns of the matrix A and the number of rows of the matrix B have to match.

clc ; clear ; clear all ;
L = 3;
M = 4;
N = 2;
matA = rand(L, M)
matB = rand(M, N)
matC = matA*matB

clc ; clear ; clear all ;
L = 2;
M = 10;
N = 1;
matA = rand(L, M)
matB = rand(M, N)
matC = matA*matB


% *Matrix Creation*

% There are various ways to create a matrix. Let's examine these with examples.

clc ; clear ; clear all ;
colVec = [5;2;3;10] %colVec = 4x1
colVecRand = rand(4,1) %colVecRand = 4x1

clc ; clear ; clear all ;
rowVec = [3,2,4,5] %rowVec = 1x4
rowVecRand = rand(1,4) %rowVecRand = 1x4

clc ; clear ; clear all ;
matA = [1,2,1;
          3,4,10]

clc ; clear ; clear all ;
matRand = rand(2,3)

clc ; clear ; clear all ;
matRand = ceil(rand(2,3)*10)

% Rand produces random values between 0 and 1.
%
% We can also do these as multiplication operations.

% *Unit and Zero Matrix*

% If a matrix A is square matrix with the same number of rows and columns,
% and all diagonal elements are 1 and non-diagonal elements are 0 , then
%A is an identity matrix:

clc ; clear ; clear all ;
id = eye(4)

M = magic(4)
x = M*id


clc ; clear ; clear all ;
id = zeros(4)

M = magic(4)
x = M*id


% *Lower-Triangle Matrix and Upper-Triangle Matrix*
%
A lower triangular matrix % is a square matrix if:
%
% The square matrix A is a lower triangular matrix if: Ai,j = 0 if i < j
%
% The square matrix A is an upper triangular matrix if: Ai,j = 0 if i > j

clc ; clear ; clear all ;
lowerTriangular = tril(matSquare) %lower triangle
upperTriangular = triu(matSquare) %upper triangle


% *3D Matrices*

clc ; clear ; clear all ;
tenA = zeros(3,3,3);
tenA(:,:,1) = rand(3,3);
tenA(:,:,2) = rand(3,3);
disp(tenA);

% * Inverse Matrix*

clc ; clear ; clear all ;
X = [1 0 2; -1 5 0; 0 3 -9]
Y = inv(X)
*To verify, if we multiply itself by its inverse, we get the identity matrix.
Y*X

clc ; clear ; clear all ;
X = rand(3,3)
Xinverse = X^(-1)
Identity = X*Xinverse

% *Determinant*

clc ; clear ; clear all ;
A=[4 3;
    5 6];
d = det(A)

clc ; clear ; clear all ;
A = [1 -2 4; -5 2 0; 1 0 3]
d = det(A)

clc ; clear ; clear all ;
A = [2 1 3; 4 5 6; 7 8 9]
d = det(A) %Sarus method

*Calculating the Inverse Using Classic Adjoint and Determinant*

2x2 Matrix
clc ; clear ; clear all ;
syms a b c d
a=3;
b=2;
c=1;
d=0;
A = [a b; cd];
invA = adjoint(A)/det(A)
isAlways(invA == inv(A))

3x3 Matrix
clc ; clear ; clear all ;
syms a b c d e f g
a=-1;
b=0;
c=1;
d=2;
e=3;
f=4;
g=7;
A = [f c a; b e d; e b g];
invA = adjoint(A)/det(A)
isAlways(invA == inv(A))
%}

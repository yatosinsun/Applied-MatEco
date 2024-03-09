%%

%{


% 3. COURSECON International Summer Seminars - 2023 July & August

% Genç Ekonomistler Kulübü

% Lecture: Asst. Prof. Pınar Tat / Gebze Technical University

% Create (Applied) : Yasin Tosun / Siegen University 

% *LESSON 1: INTRODUCTION*

% CHAPTER 1 - Interface Introduction
% Use the latest version.
%
% This area where we write our codes and notes is called "Script".
% We can access this field in 3 ways:
% 1)New Script Button
% 2)New - Script
% 3)CTRL + N
%
We can use CTRL + S to save %.
% We can access the files we saved by clicking the Open button.
%
When we press the %Run key, the codes run.
% Layout can be used for screen arrangement.
% We can use Preferences in some text layouts.
%}

%{
% SECTION 2 - VARIABLE
%
% It is forbidden to use Turkish characters when defining variables.
% The first character in the variable name cannot be a number, special characters or punctuation marks.
% Variable names cannot exceed 63 characters in length.
%
% Assigning Value to Variable
% The value assignment operator is the = operator.
% There must be a variable to the left of the %= operator.
% If it is to the right of the % = operator;
% 1. Fixed Value
% 2. Software Operations and Equations
% 3. May vary.
% at the end; sign should be placed.
% In this case, whatever variable is on the right is transferred or assigned to the left.

number1 = 5;
number2 = 78;
number3 = number2;
%These operations we perform will appear in Workspace.

%}

%{
CHAPTER 3 - NUMERICAL TYPES

% We use the "whos" command when we want to get information about a number.
%
% here is 1x1 matrix size
% Double comes automatically. This type accommodates both decimal and whole numbers.
% Byte type indicates the size. Since 1 byte is 8 bits, its size is 64 bits.
% The larger the data capacity, the larger the number can be assigned.
% If we want to reduce the size and want it to contain both decimal and integer numbers, we use single.
When % becomes single, the byte decreases to 4.

number4 = 10.4;
whos number4

number41 = single(10.4);
whos number41

The %Integer8 type is also 8 bits. This holds a value between -128 and 127
number5 = int8(10);
whos number5
number52 = int8(128);
whos sayi52
If you assign a value outside these limits, it will not accept it and will take the limit values.

For %unsign integer, it cannot take negative numbers.
number6 = uint8(-4);
whos number6
When we say %, it takes this as 0
%}

%{
CHAPTER 4
% While each character value is a separate concept, the string is a whole.

name = "gecko" ;
whose name
%This is string

pseudonym = 'geko' ;
whos pseudonym
%This is the character.
%}

%{
CHAPTER 5 - COMMENT LINE
% A percentage expression is sufficient for a single-line comment.
% for multi-line comment
% Everything written in this field remains as youm.
% To separate a section with comment lines
% This requires the double percent operator and a space

%}

%{
CHAPTER 6 - CONCEPTS / Vectors

% If we want to assign a value to a variable or assign more than one variable, we use matrices (arrays).
% Vectors are also single row or single column matrices
%
% Therefore, we can think of vectors as a special kind of matrices.
% They are actually no different from matrices because they are single-array.
% What is valid for matrices is also valid for vectors.
% The concept of array that we see in Matlab is also referred to as vector.
%
% Square brackets are used to create a 1-line vector: Alt gr+8 and altgr +9 []
% A space or a comma is used to separate the values.

Let's define a vector by putting a space between the % values.
vector1 = [1 2 3 4];
whos vector1
%this comes to us as a 1x4 vector, that is, 1 row and 4 columns.

Let's define it by putting % or a comma
vector2 = [10, 15 ,20 , 25, 30];
whos vector2
%this comes to us as a 1x5 vector, that is, 1 row and 5 columns.

%}

%{
% CHAPTER 7 - CONCEPTS / Matrix
%
% Matrices consist of rows and columns. Here too, they consist of a single row or column.
It consists of %. That is, by leaving a comma or space between the values.
We can create %. If we want to add another row and column; we use.


%for example, let's create the matrix 3 2 0 / 1 6 3 / 5 7 2
matrix1 = [3 2 0;
            1 6 3;
            5 7 2];

%Now let's create the matrix 9 13 5 2 / 1 11 7 6 / 3 7 4 1 / 6 0 7 10.
matrix2 = [9, 13, 5, 2; 1, 11, 7, 6; 3, 7, 4, 1; 6, 0, 7, 10];

As the matrix expands beyond 3x3, the appearance in Workspace will change.
The matrix can be created by clicking on it in the Workspace area and making changes in the Editor that opens.
Here, the number of elements in each row or column in the matrix must be the same.
We can also edit the matrix visually. For this ; After that, you can go to the bottom and write

matrix3 = [3 2 2;
            0 4 6;
            0 0 5];

%}

%{
% CHAPTER 8 - CONCEPTS / Creating a Matrix by Assigning Values
           
% Even if a variable contains a single numerical value, it will appear as a matrix in the background, i.e. 1x1 dimensional.

d1 = 14;
The value %d1 contains a single value. 1x1 double matrix
d2 = "Newspaper";
%Here the newspaper expression becomes a 1x1 string expression.
d3 = 'Internet';
%This creates a character array and displays it as 1x8.

%How can we access the elements of the matrices after creating them?
Especially for determinant calculations...
values = [-10, 29, -14, 1, 12;
              2, 11, -17, 25, 14;
               4, 9, -1, 4, 0;
              -15, 21, 100, 54, 38];
% became a 4x5 double matrix.

% How can we get a single element?
% There are 2 ways to do this.
%1. We can enter row and column values separately.
% The 2nd way is to enter via a single position value. In the first path, we entered 2 position values.

%1.path: For example, if we want to get the value in the 1st row and the 3rd column, we do it as follows
value13 = values(1,3);
%For example, if we want to get the value in the 3rd row and 4th column, we do it as follows:
value34 = values(3,4);

%2.way: is to enter via a single position value. In the first path, we entered 2 position values.
%For example, if we want, we can change the value in the 1st row and 1st column as follows.
%Logically, in the above matrix, -10 is the 1st value, 2 is the 2nd value, 4 is the 2nd value.
3rd value, -15 value is 4th value, 29 value is 5th value.

value6 = values(6);
value10 = values(10);

%If we want to get 2 values at the same time;
%for example both 2nd and 7th value
numbers27 = values([2,7]);

%example both 16th and 20th value
numbers1620 = values([16,20]);

%To get values from columns of different rows
numbers243 = values([2,4],3);

%We can assign values to a matrix without defining it
matrix1(1) = 4;
matrix1(2) = 10;
%In this case, it will create 2 columns in the 1st row.

If we assign a value to the middle, the others will be assigned as 0.
matrix2(4) = 9;

In addition to %, we can also enter row and column based expressions.
matrix2(2,3) = 11;

%}
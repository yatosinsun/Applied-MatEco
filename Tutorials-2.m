%%

% 3. COURSECON International Summer Seminars - 2023 July & August

% Genç Ekonomistler Kulübü

% Lecture: Asst. Prof. Pınar Tat / Gebze Technical University

% Create (Applied) : Yasin Tosun / Siegen University 

% ***************** LESSON 2 ***********************

%{

% CHAPTER 1 - CONCEPTS / Creating a Matrix by Assigning Values
           
%How can we access the elements of the matrices after creating them? Especially for determinant calculations...
    
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

%So far we have taken a single variable, but it can be taken in a complete row or column.

%For example, let's take the values in the 2nd line
row2 = values(2,:);
%Here: means all.
%This row2 = values(2,[4,5]); If we entered it as follows, it would mean take the numbers in the 4th and 5th columns of the 2nd line.
row3 = values(3,:);

If we want to get %column values, it is as follows:
column4 = values(:,4);
column5 = values(:,5);

valuescopy = values(:,:);
%When we say this, in the same logic, it is actually written first as a row and then as a column.
The %matrix will be copied completely.

We can also use %: logic like this
values2 = 1:5;
%that is, it will return all values in the form 1 2 3 4 5 in values2
%This also means start from 1 and increase by 1 until you reach 5.
%We can also adjust the increase amount if we want.
values3 = 0:2:10;
This gives an increase of 2%.
values31 = 0:2:9;
% will increase by 2 here too, but will stop at 8.

% Now we can also get it by cutting a certain part of the matrix.
% For example, if we want to import from the 2nd line to the 4th line, covering the 3rd and 5th lines;

values2435 = values(2:4,3:5);
%2. between the 4th and 4th lines, between the 3rd and 5th columns
lines = 2:4; columns = 3:5;
value2435 = values(rows,columns);
%one. between the and 3rd rows, between the 2nd and 4th columns
values1324 = values(1:3,2:4);

%}

%{
% CHAPTER 2 - Access Logic in String and Character Matrices

%If we want to access characters in the String expressions containing characters we created here, we can start as follows.
NameStr = "Ali";
FirstCharacterStr = NameStr(1);
%When we try to access here, we access the expression we wrote because our expression is a string, that is, it is a whole.

%If we want to access the second character "Index exceeds array bounds." we get error.
SecondCharacterStr = NameStr(2);
%This means that we have exceeded the limits of the created string expression.

%We can execute the same expression in a numerical study.
Number1 = 13;
FirstNumber = Number1(1);
SecondNumber = Number(2);
%Here also "Index exceeds array bounds." we get error.

%If we arrange the same operations as characters, we can see the process as follows.
NameChrArray = 'Ali';
whos NameChrSeries
 
chr1 = NameChrArray(1);
chr2 = NameChrArray(2);

%}

%{
% CHAPTER 3 - MULTIDIMENSIONAL MATRIXES

% So far we have always defined 2-dimensional matrices.
% So there were only rows and columns.
% So, when accessing elements, it was enough to send 1 or 2 directly.
% In multidimensional matrices, the number of parameters we need to send to get values increases to at least 3.
% We will encounter this type of data in many subjects such as signal processing, image processing and big data.
%
% For example, 2-dimensional matrix;
%
% (1.1) (2.4) (5.7)
% (0.1) (4.4) (6.7)
% (8.1) (2.5) (5.2)
%
% For example, 3D matrix;
%
% (1,1,6) (2,4,5) (5,7,1)
% (0.1.1) (4.4.5) (6.7.3)
% (8.1.3) (2.5.0) (5.2.7)

numbers1 = [1 2 3 4; 5 6 7 8; 9 10 11 12];
%This is a 3x4 matrix that we know as 2-dimensional.
%Adding the 3rd dimension here actually has the same logic as adding a book page.
%It's actually equivalent to saying which matrix we want to go to.

value = numbers1(1,1,1);
%The 1 expression we added at the end here takes the expression in the 1st row and 1st column of the "numbers1" matrix and accepts it as a value.
%In fact, we define the matrix on that page like a book page.
%value = numbers1(1,1,2);
%Here we get an error. Because there is no second matrix. So, the 2nd page is not included.

If we add page %2; (But do not confuse page size with page size, they are two different concepts.)
% The size changes as follows: If a 3x4 matrix becomes a 3x4x2 matrix, the size changes
numbers1(:,:,2) = [13, 14, 15, 16; 17, 18, 19, 20; 21, 22, 23, 24];
%When increasing the size, it should be the same as the previous size.
%This actually means that the numbers1 matrix comes one after the other.
%Or it also means that there is a 3x4 matrix on each page.

%Now we have changed the size, how will we access the pages?
%If we want to access the values we first assigned;
page1 = numbers1(:,:,1);
If we want to access page %2;
page2 = numbers1(:,:,2);

%There is a useful function for creating multidimensional matrices: "cat"
%Let's create a new matrix.
We had %numbers1 and now let's create numbers2.
numbers2 = cat(3,numbers1,[10 20 30 40; 50 60 70 80; 90 100 110 120]);
%The first value we write is the dimension value.
%Here the numbers1 matrix is already a 3x4x2 matrix
%So there are 2 pages in numbers1, take this and add 1 more page.
The matrix we added at the end of % actually represents the new page.
This time %numbers2 will be 3x4x3 in size.

%Now let's access the values of the numbers2 matrix;
value1 = numbers2(:,:,1);
To access page %2;
value2 = numbers2(:,:,2);


%}

%{
% *CHAPTER 4*

% All data types in matrices had to be the same.
% Either all strings or all values..
% But sometimes string, vice versa, can be made next to numbers.
% Here we may want to use a data type that contains more than 1 variable.
% For this we must use the "Cell" data type.
% While we use square brackets [] in matrices, we use wing brackets {} in Cell type.


numbers = [1 2 3 ; 6 7 8 ; 10 11 12];

Names = ["Taffarel", "Popescu", "Bülent";
            "Capone", "Ergün", "Suat";
            "Ümit", "Okan", "Hagi"];
% We defined a matrix consisting of strings and values. But what if we want to use both together?
% If we add the expression of the other into any of them, the matrix type will change.
% But to use it without changing it, the Cell type is used.

cell1 = {1 2 3 ;
     "Taffarel", "Popescu", "Bülent" ;
     10 11 12};

In the logic of the % Cell type, each cell works as a separate matrix.
% This means creating cells within cells.

cell2 = {[1 2 3], [6 7 8 9];
     "Taffarel", [4 8 7 6 3 4]};

% Here, 2x2 cells are formed in matrix logic.
% But a separate matrix is formed in each cell, and the size of these matrices is not important.

cell21 = {[1 2 3], [6 7 8 9];
     "Taffarel", [4 , { 1, [2 3]} 4]};

%Here we add cell inside Cell.

% However, it should not be forgotten that the n x n matrix type is valid in cell.

They can also be added individually instead of creating them together in the % Cell type.

cell3 = {[1 2 3], [6 7 8 9]};
cell3(2,:) = { "Taffarel", [4 , { 1, [2 3]} 4]};

%This allows us to create the 2nd line in cell3.


%If we want to get the value of any row;

row2 = cell3(2,:);
%This prevents you from seeing the 2nd line in cell3.


%If we want to get the value of a cell;
value1 = cell3{1,2};
%This allows us to see the element of the 1st row and the 2nd column in cell3.

% ANNEX: We can also create the Cell type with the functions given to us by Matlab.

c1 = cell(2);
% This will create the 2x2 cell format.
% The inside of these cell structures is empty.
% To give values to these empty fields;

c1{1,1} = [1 2 3];
c1{1,2} = [6 7 8 9];
c1{2,1} = "Taffarel";
c1{2,2} = [4 , { 1, [2 3]} 4];

%We can also create cells of different nxn size.

c2=cell(3,2);

%Or we can also create multidimensional cells;

c3=cell(3,2,2);

%}

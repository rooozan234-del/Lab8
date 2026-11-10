% Lab 8 - Tasks 2 and 3

% ---------- Task 2: sumlist ----------
% Base case: the sum of an empty list is 0
sumlist([], 0).
% Recursive case: sum = head + sum of tail
sumlist([H|T], Sum) :-
    sumlist(T, Rest),
    Sum is H + Rest.

% Test queries:
% ?- sumlist([1,2,5,7], S).   S = 15
% ?- sumlist([], S).          S = 0


% ---------- Task 3: Total and Average ----------
total_average :-
    write('Enter the first number: '),  read(X),
    write('Enter the second number: '), read(Y),
    write('Enter the third number: '),  read(Z),
    Total is X + Y + Z,
    Average is Total / 3,
    write('Total = '),   write(Total),   nl,
    write('Average = '), write(Average), nl.

% Test query (type a full stop after each number):
% ?- total_average.
% Enter the first number: 4.
% Enter the second number: 5.
% Enter the third number: 7.
% Total = 16
% Average = 5.333333333333333

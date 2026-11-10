% Lab 8 - Task 1
% Boolean expression: (A AND B) OR (NOT A AND NOT B)

% AND truth table
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

% OR truth table
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

% Negation
neg(true,  false).
neg(false, true).

% logicGate(A, B, Output) for (A AND B) OR (NOT A AND NOT B)
logicGate(A, B, O) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, O).

% Test queries:
% ?- logicGate(true,  true,  O).   O = true
% ?- logicGate(true,  false, O).   O = false
% ?- logicGate(false, true,  O).   O = false
% ?- logicGate(false, false, O).   O = true

-module(tut).
%% API

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  atom_stuff(),
  do_math(10, 50),
  random_num(),
  compare(4, 4.0),
  what_grade(10).

compare (A,B) ->
  % A =:= B, % equal
  % A =/= B, % Not equal
  % A == B, % No attention to type
  % A /= B, % No attention to type
   Age = 18,
  (Age >= 5) or (Age =< 18) or (A == B).

do_math(A, B) ->
  A + B.
  %A - B,
  %A * B,
  %A div B,
  %A rem B,
  %math:exp(1),
  %math:log(2234234),
  % math:log10(1000),
  % math:pow(10,2),
  %math:sqrt(100),

random_num () ->
  rand:uniform(10).

atom_stuff () ->
  'An Atom'.

preschool() ->
  'Go to preschool'.

kindergarten () ->
  'Go to kindergarten'.

grade_school () ->
  'Go to grade school'.

what_grade(X) ->
  if X < 5 -> preschool()
  ; X == 5 -> kindergarten()
  ; X > 5 -> grade_school()
  end.

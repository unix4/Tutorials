-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

%Head Recursion
main() ->
  sum([1,2,3]).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).

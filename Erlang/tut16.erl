-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

%Head Recursion
main() ->
  macro_stuff(5,6).

-define(add(X,Y), {X+Y}).

macro_stuff(X,Y) ->
  io:fwrite("~p\n", [?add(X,Y)]).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

%Head Recursion
main() ->
  for(3,1).

for(0, _) ->
  ok;

for(Max, Min) when Max > 0 ->
  io:fwrite("Num : ~p\n", [Max]),
  for(Max-1, Min).


-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  tuple_stuff().

tuple_stuff() ->
  My_Data = {42, 175, 6.25},
  My_Data,

  %{A,B,C} = My_Data,
  %C,

  {D,_,_} = My_Data,
  D,

  My_Data2 = {height, 6.25},
  {height, Ht} = {My_Data2,height},
  Ht.

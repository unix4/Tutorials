-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

%Head Recursion
main() ->
  map_stuff().

map_stuff() ->
  Bob = #{f_name => 'Bob', l_name=> 'Smith'},

  io:fwrite("1st Name : ~p\n", [maps:get(f_name, Bob)]),
  io:fwrite("1st Name : ~p\n", [maps:keys(Bob)]),
  io:fwrite("1st Name : ~p\n", [maps:values(Bob)]),
  io:fwrite("1st Name : ~p\n", [maps:remove(l_name, Bob)]),

  maps:put(address, "123 main", Bob),
  maps:find(f_name, Bob),
  Bob.

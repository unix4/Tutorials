-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  type_stuff().

type_stuff() ->
  is_atom(name),
  is_float(3.14),
  is_integer(10),
  is_boolean(false),
  is_list([1,2,3]),
  is_tuple({height, 6.24}),

  List1 = integer_to_list(21),
  List1.

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  list_stuff().

list_stuff() ->
  List1 = [1,2,3],
  List2 = [4,5,6],

  List3 = List1 ++ List2,
  List3,

  List4 = List3 -- List1, % remove everything contained in List3
  List4,

  %hd(List4),
  %tl(List4),

  List5 = [50|List4],
  List5,

  [Head|Tail] = List5,
  Head.

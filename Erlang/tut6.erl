-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  lc_stuff().

lc_stuff() ->
  List1 = [1,2,3],
  List2 = [2*N || N <- List1],
  List2,

  List3 = [1,2,3,4],
  List4 = [N || N <-List3, N rem 2 == 0],
  List4,

  City_weather = [{pittsburgh, 50}, {'new york', 53}, {charlotte, 68}, {miami, 78}],

  Great_Temp = [{City, Temp} || {City, Temp} <- City_weather, Temp >= 65],
  Great_Temp.

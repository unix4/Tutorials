-module(tut).
-author("devma").

%% API

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

main() ->
  say_hello(german).

say_hello(X)->
  case X of
    french -> "Bonjour";
    german -> "Guten Tag";
    english -> "Hello"
  end.

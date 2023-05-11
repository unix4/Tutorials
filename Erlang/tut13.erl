-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

%Head Recursion
main() ->
  record_stuff().

-record(customer, {name = "", bal = 0.00} ).

record_stuff() ->
  Sally = #customer{name="Sally Smith", bal = 100.00},

  Sally2 = Sally#customer{bal = 50},
  io:fwrite("~p owes $~p", [Sally2#customer.name, Sally2#customer.bal]).

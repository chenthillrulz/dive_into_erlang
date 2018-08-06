%%%-------------------------------------------------------------------
%%% @author chen
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2018 7:24 AM
%%%-------------------------------------------------------------------
-module(quicksort).
-author("chen").

%% API
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([Pivot|Tail]) ->
  {Smaller, Larger} = partition(Pivot, Tail, [], []),
  quicksort(Smaller) ++ [Pivot] ++ quicksort(Larger).

partition (_, [], Smaller, Larger) -> {Smaller, Larger};
partition (Pivot, [H|T], Smaller, Larger) ->
  if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
    H > Pivot -> partition(Pivot, T, Smaller, [H|Larger])
  end.

%%%-------------------------------------------------------------------
%%% @author chen
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Aug 2018 9:31 PM
%%%-------------------------------------------------------------------
-module(recursion).
-author("chen").

%% API
-export([factorial/1, tail_fact/1, list_len/1, tail_list_len/1]).

%% Factorial Sample
factorial (N) when N =:= 0 -> 1;
factorial (N) -> N * factorial(N-1).

tail_fact (N) -> tail_fact (N, 1).
tail_fact (0, Acc) -> Acc;
tail_fact (N, Acc) -> tail_fact(N-1, Acc * N).

%% Calculate List Length
list_len ([]) -> 0;
list_len ([_ | T]) -> list_len(T) + 1.

tail_list_len (List) -> tail_list_len(List, 0).
tail_list_len ([], Length) -> Length;
tail_list_len ([_ | T], Length) -> tail_list_len(T, Length + 1).



%%%-------------------------------------------------------------------
%%% @author chenthill
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Aug 2018 2:51 PM
%%%-------------------------------------------------------------------
-module(factorial).
-author("chenthill").

%% API
-export([factorial/1]).

factorial (0) -> 1;
factorial (N) when N > 0 ->
  N * factorial(N-1).
%%%-------------------------------------------------------------------
%%% @author chen
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2018 11:34 PM
%%%-------------------------------------------------------------------
-module('dolphin-server').
-author("chen").

%% API
-export([dolphin_handler/0]).
-compile(export_all).

dolphin_handler() ->
  receive
    do_a_flip ->
      io:format("How about no?~n");
    fish ->
      io:format("So long and thanks for all the fish!~n");
    _ ->
      io:format("Heh, we're smarter than you humans.~n")
  end,
  dolphin_handler().
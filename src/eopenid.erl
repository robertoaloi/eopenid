%%%-------------------------------------------------------------------
%%% Copyright (c) 2008-2009 Torbjorn Tornkvist
%%% See the (MIT) LICENSE file for licensing information.
%%%
%%% Created   :  3 Apr 2008 by Torbjorn Tornkvist <tobbe@tornkvist.org>
%%% Re-worked :  7 Feb 2009 by Torbjorn Tornkvist <tobbe@tornkvist.org>
%%% Desc.     :  Implementation of OpenID v1.1
%%%-------------------------------------------------------------------
-module(eopenid).

-export([install/1, uninstall/1, dependencies/0]).

-ignore_xref([{start,0},{start,1},{stop,0}]).

install(Config) ->
    application:start(inets),
    application:start(crypto),
    case eopenid_sup:start_link(Config) of
	{ok, Pid} ->
	    {ok, Pid};
	Error ->
	    Error
    end.

uninstall([]) ->
    ok.

dependencies() ->
    [{e_auth, {1.0, undefined}}].

%%% -*- mode:erlang -*-
{application, eopenid,
  [{description, "Erlang Web Component for OpenID."},
   {vsn, "0.1.0"},
   {modules, [eopenid,eopenid_app,eopenid_sup,eopenid_v1,
              eopenid_lib,eopenid_srv]},
   {applications, [kernel, stdlib, inets, crypto]}
  ]
}.


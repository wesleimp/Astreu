{application,aleppo,
             [{description,"Aleppo: ALternative Erlang Pre-ProcessOr"},
              {vsn,"1.0.0"},
              {modules,[aleppo,aleppo_parser]},
              {pkg_name,inaka_aleppo},
              {applications,[kernel,stdlib]},
              {registered,[]},
              {maintainers,["Inaka","ErlyORM"]},
              {licenses,["Apache 2.0"]},
              {links,[{"Github","https://github.com/inaka/aleppo"}]},
              {build_tools,["rebar3"]},
              {files,["Makefile","rebar","rebar.config","src/aleppo.app.src",
                      "src/aleppo.erl","src/aleppo_parser.yrl"]}]}.

defmodule Env do
    # list_of_***REMOVED***s_to_remove = [:y, :w, :z]
    # env = [x: 1, y: 3, z: 5, w: 7]
    def test(list_of_***REMOVED***s_to_remove, env) do
        List.foldr(list_of_***REMOVED***s_to_remove, env, fn x, acc ->
            IO.inspect(acc)
            {x,acc}
        end)
    end
    # return an empty environment
    def new() do
        []
    end

    # binds variable ***REMOVED*** to the structure str and returns the environment
    def add(***REMOVED***, str, env) do
        [{***REMOVED***, str}] ++ env
    end

    # return either {***REMOVED***, str}, if the variable ***REMOVED*** was bound, or nil
    def lookup(***REMOVED***, env) do
        #List.keyfind(env, ***REMOVED***, 0)
    end

    # removes all bindings for variables in the list ***REMOVED***s and returns the environment
    def remove(***REMOVED***s, env) do
        List.foldr(***REMOVED***s, env, fn(***REMOVED***s, env) ->
            IO.puts("removing")
            IO.inspect(***REMOVED***s)
            List.keydelete(env, ***REMOVED***s, 0)
        end)
    end
end

defmodule Eager do
    def test do
        9
    end
end

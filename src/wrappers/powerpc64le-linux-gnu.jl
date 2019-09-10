# Autogenerated wrapper script for SharedMimeInfo_jll for powerpc64le-linux-gnu
export update_mime_database, locale_dir

using Glib_jll
using XML2_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `update_mime_database`
const update_mime_database_splitpath = ["bin", "update-mime-database"]

# This will be filled out by __init__() for all products, as it must be done at runtime
update_mime_database_path = ""

# update_mime_database-specific global declaration
function update_mime_database(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(ENV["PATH"], ':', PATH)
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(ENV[LIBPATH_env], ':', LIBPATH)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(update_mime_database_path)
    end
end


# Relative path to `locale_dir`
const locale_dir_splitpath = ["share", "locale"]

# This will be filled out by __init__() for all products, as it must be done at runtime
locale_dir_path = ""

# locale_dir-specific global declaration
# This will be filled out by __init__()
locale_dir = ""


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Glib_jll.PATH_list, XML2_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Glib_jll.LIBPATH_list, XML2_jll.LIBPATH_list,))

    global update_mime_database_path = abspath(joinpath(artifact"SharedMimeInfo", update_mime_database_splitpath...))

    push!(PATH_list, dirname(update_mime_database_path))
    global locale_dir_path = abspath(joinpath(artifact"SharedMimeInfo", locale_dir_splitpath...))

    global locale_dir = locale_dir_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

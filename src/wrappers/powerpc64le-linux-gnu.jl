# Autogenerated wrapper script for SharedMimeInfo_jll for powerpc64le-linux-gnu
export locale_dir, update_mime_database

using Glib_jll
using XML2_jll
JLLWrappers.@generate_wrapper_header("SharedMimeInfo")
JLLWrappers.@declare_file_product(locale_dir)
JLLWrappers.@declare_executable_product(update_mime_database)
function __init__()
    JLLWrappers.@generate_init_header(Glib_jll, XML2_jll)
    JLLWrappers.@init_file_product(
        locale_dir,
        "share/locale",
    )

    JLLWrappers.@init_executable_product(
        update_mime_database,
        "bin/update-mime-database",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

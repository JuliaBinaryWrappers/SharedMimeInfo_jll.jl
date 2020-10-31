# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SharedMimeInfo_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SharedMimeInfo")
JLLWrappers.@generate_main_file("SharedMimeInfo", UUID("5996c727-abd7-5f74-ae59-138d08b03cd1"))
end  # module SharedMimeInfo_jll

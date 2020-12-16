# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule finufft_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("finufft")
JLLWrappers.@generate_main_file("finufft", UUID("c41cd5a2-72a3-5203-9076-a500b088fc82"))
end  # module finufft_jll

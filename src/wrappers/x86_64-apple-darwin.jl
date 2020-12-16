# Autogenerated wrapper script for finufft_jll for x86_64-apple-darwin
export libfinufft

using FFTW_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("finufft")
JLLWrappers.@declare_library_product(libfinufft, "@rpath/libfinufft.so")
function __init__()
    JLLWrappers.@generate_init_header(FFTW_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libfinufft,
        "lib/libfinufft.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

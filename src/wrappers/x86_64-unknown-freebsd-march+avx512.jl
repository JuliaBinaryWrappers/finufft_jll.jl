# Autogenerated wrapper script for finufft_jll for x86_64-unknown-freebsd-march+avx512
export libfinufft

using FFTW_jll
using LLVMOpenMP_jll
JLLWrappers.@generate_wrapper_header("finufft")
JLLWrappers.@declare_library_product(libfinufft, "libfinufft.so")
function __init__()
    JLLWrappers.@generate_init_header(FFTW_jll, LLVMOpenMP_jll)
    JLLWrappers.@init_library_product(
        libfinufft,
        "lib/libfinufft.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

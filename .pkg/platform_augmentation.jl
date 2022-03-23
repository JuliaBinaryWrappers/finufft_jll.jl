using Base.BinaryPlatforms: arch, arch_march_isa_mapping, CPUID, HostPlatform, Platform

function augment_microarchitecture!(platform::Platform)
    haskey(platform, "march") && return platform

    host_arch = arch(HostPlatform())
    host_isas = arch_march_isa_mapping[host_arch]
    idx = findlast(((name, isa),) -> isa <= CPUID.cpu_isa(), host_isas)
    platform["march"] = first(host_isas[idx])
    return platform
end


function augment_platform!(platform::Platform)
    # We augment only x86_64
    @static if Sys.ARCH === :x86_64
        augment_microarchitecture!(platform)
    else
        platform
    end
end

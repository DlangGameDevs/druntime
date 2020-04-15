workspace "druntime"

    platforms { "x86", "x64" }
    configurations { "Debug", "Release" }

    preview { "rvaluerefparam" } -- "nosharedaccess"
    flags { "UseLDC" }

    filter { "configurations:Debug" }
        runtime "Debug"
        symbols "On"
    filter { "configurations:Release" }
        runtime "Release"
        optimize "Speed"
        inlining "Auto"
        intrinsics "On"
        boundscheck "Off"
    filter {}

    project "druntime"
        language "C++"
        kind "StaticLib"

        files { "src/**.d" }

        removefiles { "src/core/sys/**" }
        filter { "platforms:x86 or x64" }
            files { "src/core/sys/windows/**.d" }
        filter {}

        importdirs { "src" }

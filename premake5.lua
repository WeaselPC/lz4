project "lz4"
    kind "StaticLib"
    language "C"
    staticruntime "off"
    warnings "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "lib/lz4.h",
        "lib/lz4.c",
        "lib/lz4hc.h",
        "lib/lz4hc.c",

        -- Optional (ONLY if we decide to use the frame API later)
        -- "lib/lz4frame.h",
        -- "lib/lz4frame.c",
        -- "lib/xxhash.h",
        -- "lib/xxhash.c",
    }

    includedirs
    {
        "%{prj.location}/lib"
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
        "_CRT_NONSTDC_NO_WARNINGS",
    }

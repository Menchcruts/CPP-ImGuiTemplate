project "MainProject"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    cdialect "C17"
    staticruntime "off"

    files { "./**.h", "./**.cpp" }

    includedirs
    {
        "../Core/CoreProjectExample/"
    }

    links
    {
        "CoreProject"
    }

    defines
    {
        
    }

    targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../bin/Intermediates/" .. OutputDir .. "/%{prj.name}")

    filter "system:windows"
        systemversion "latest"
        defines { "WINDOWS" }

    filter "system:linux"
        defines { "LINUX" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        runtime "Release"
        optimize "On"
        symbols "Off"

        -- Uncomment this for a windowed app
        -- kind "WindowedApp"
        -- entrypoint "mainCRTStartup"
        
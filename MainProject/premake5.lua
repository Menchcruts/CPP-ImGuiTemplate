project "MainProject"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    cdialect "C17"
    staticruntime "off"

    targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../bin/Intermediates/" .. OutputDir .. "/%{prj.name}")
    
    files { "./**.h", "./**.cpp" }

    includedirs
    {
        -- Core libraries
        "../Core/CoreProjectExample/",
        
        -- Dependencies
        "../Dependencies/GLFW/GLFW/include/",
        "../Dependencies/GLEW/GLEW/include/",
        "../Dependencies/ImGui/ImGui/",
        "../Dependencies/miniaudio/miniaudio/",
        "../Dependencies/stb_image/"
    }

    links
    {
        -- Core libraries
        "CoreProject",

        -- Dependencies
        "GLFW",
        "GLEW",
        "ImGui",
        "opengl32",
        "miniaudio"
    }

    defines
    {
        "GLEW_STATIC"
    }

    filter "system:windows"
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

        kind "WindowedApp"
        entrypoint "mainCRTStartup"
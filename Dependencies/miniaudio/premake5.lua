project "miniaudio"
    kind "StaticLib"
    language "C"
    cdialect "C17"
    staticruntime "off"
    warnings "off"
    
    targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../bin/Intermediates/" .. OutputDir .. "/%{prj.name}")

    files { 
        "%{prj.name}/miniaudio.h", 
        "%{prj.name}/miniaudio.c" 
    }

    includedirs {
        
    }

    filter "system:windows"
        systemversion "latest"
        defines { }

    filter "configurations:Debug"
        defines { "DEBUG" }
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        runtime "Release"
        optimize "On"
        symbols "Off"
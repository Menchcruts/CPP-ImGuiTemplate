project "GLEW"
    kind "StaticLib"
    language "C"
    cdialect "C17"
    staticruntime "off"
    warnings "off"
    
    targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../bin/Intermediates/" .. OutputDir .. "/%{prj.name}")

    files { 
        "%{prj.name}/src/glew.c",
		"%{prj.name}/src/glewinfo.c",
		"%{prj.name}/src/visualinfo.c"
    }

    includedirs {
        "%{prj.name}/include"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
            "_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        runtime "Release"
        optimize "On"
        symbols "Off"
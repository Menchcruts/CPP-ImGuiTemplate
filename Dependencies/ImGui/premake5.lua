project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    cdialect "C17"
    staticruntime "off"
    
    targetdir ("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("../bin/Intermediates/" .. OutputDir .. "/%{prj.name}")

    files { 
        "%{prj.name}/*.h", 
        "%{prj.name}/*.cpp",
        "%{prj.name}/backends/*glfw*.h",
        "%{prj.name}/backends/*glfw*.cpp",
        "%{prj.name}/backends/*opengl*.h",
        "%{prj.name}/backends/*opengl*.cpp"

        -- "%{prj.name}/misc/**.h",
        -- "%{prj.name}/misc/**.cpp"
    }

    includedirs {
        "./%{prj.name}/",
        "./%{prj.name}/backends/",
        "../GLFW/GLFW/include/"
    }

    links {
        "GLFW",
        "opengl32"
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
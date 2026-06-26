-- If you use this premake script, you'll need to define the BIN_DIR and 
-- OBJ_DIR variables according to your personal preferences.

project "freetype"
	kind "StaticLib"
	language "C"
	staticruntime "off"
	warnings "Off"
	
	targetdir (BIN_DIR)
	objdir    (OBJ_DIR)
	
	files       { "include/**.h", "src/**.c" }
	includedirs { "include/"                 }
	defines     { "FT2_BUILD_LIBRARY"        }
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
		symbols "off"

solution "glskel"
	configurations { "Debug", "Release" }
	platforms {"native", "x64", "x32"}

	-- GLFW Library
	project "glfw"
		kind "StaticLib"
		language "C"

		configuration {"linux"}
			files { }
			includedirs { }
			defines { "_GLFW_USE_LINUX_JOYSTICKS", "_GLFW_HAS_XRANDR", "_GLFW_HAS_PTHREAD" ,"_GLFW_HAS_SCHED_YIELD", "_GLFW_HAS_GLXGETPROCADDRESS" }
			buildoptions { "-pthread" }

		configuration {"windows"}
			files {
				--"glfw/src/cocoa_time.c",
				"glfw/src/context.c",
				--"glfw/src/egl_context.c",
				--"glfw/src/glx_context.c",
				"glfw/src/init.c",
				"glfw/src/input.c",
				--"glfw/src/linux_joystick.c",
				--"glfw/src/mir_init.c",
				--"glfw/src/mir_monitor.c",
				--"glfw/src/mir_window.c",
				"glfw/src/monitor.c",
				--"glfw/src/posix_time.c",
				--"glfw/src/posix_tls.c",
				"glfw/src/vulkan.c",
				--"glfw/src/wgl_context.c",
				"glfw/src/win32_init.c",
				"glfw/src/win32_joystick.c",
				"glfw/src/win32_monitor.c",
				"glfw/src/win32_time.c",
				"glfw/src/win32_tls.c",
				"glfw/src/win32_window.c",
				"glfw/src/window.c",
				--"glfw/src/wl_init.c",
				--"glfw/src/wl_monitor.c",
				--"glfw/src/wl_window.c",
				--"glfw/src/x11_init.c",
				--"glfw/src/x11_monitor.c",
				--"glfw/src/x11_window.c",
				--"glfw/src/xkb_unicode.c",

				--"glfw/src/cocoa_joystick.h",
				--"glfw/src/cocoa_platform.h",
				--"glfw/src/egl_context.h",
				"glfw/src/glfw_config.h",
				--"glfw/src/glx_context.h",
				"glfw/src/internal.h",
				--"glfw/src/linux_joystick.h",
				--"glfw/src/mir_platform.h",
				--"glfw/src/nsgl_context.h",
				--"glfw/src/posix_time.h",
				--"glfw/src/posix_tls.h",
				--"glfw/src/wgl_context.h",
				"glfw/src/win32_joystick.h",
				"glfw/src/win32_platform.h",
				--"glfw/src/wl_platform.h",
				--"glfw/src/x11_platform.h",
				--"glfw/src/xkb_unicode.h"
			}
			includedirs { "glfw/include" }
			defines { "_GLFW_USE_LINUX_JOYSTICKS", "_GLFW_HAS_XRANDR", "_GLFW_HAS_PTHREAD" ,"_GLFW_HAS_SCHED_YIELD", "_GLFW_HAS_GLXGETPROCADDRESS", "_GLFW_WIN32" }

		configuration {"Macosx"}
			defines { }
			buildoptions { " -fno-common" }
			linkoptions { "-framework OpenGL", "-framework Cocoa", "-framework IOKit" }

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols", "ExtraWarnings" }

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize", "ExtraWarnings" }

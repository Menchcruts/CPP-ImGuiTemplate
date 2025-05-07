#pragma once

#include "GL/glew.h"
#include "GLFW/glfw3.h"

#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

class App
{
private:
	GLFWwindow* m_Window;

private:
	void SetupDockspace();

public:
	App();
	~App();

	void Run();
};
#ifndef CGE
#define CGE
#define GLFW_INCLUDE_NONE
#define DEFAULT_WINDOW_HEIGHT 480
#define DEFAULT_WINDOW_WIDTH 640

#include <GLFW/glfw3.h>
#include <glad/gl.h>
#include <iostream>

class Engine {
protected:
  GLFWwindow *window;

public:
  Engine();
  ~Engine();
  virtual void setup();
  virtual void action_loop();
  virtual void on_exit();
  int render_loop();
  static void error_callback(int error, const char *description);
};

#endif // !CGE

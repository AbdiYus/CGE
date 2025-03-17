#include <CGE.h>

Engine::Engine() {
  if (!glfwInit()) {
    std::cerr << "Failed to intialize glfw\n";
    glfwTerminate();
    return;
  }
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
  glfwSetErrorCallback(error_callback);

  this->window = glfwCreateWindow(DEFAULT_WINDOW_WIDTH, DEFAULT_WINDOW_HEIGHT,
                                  "project", nullptr, nullptr);
  if (!this->window) {
    std::cerr << "Failed to create window\n";
    glfwTerminate();
    return;
  }

  glfwMakeContextCurrent(this->window);
  gladLoadGL(glfwGetProcAddress);
}

Engine::~Engine() {
  this->on_exit();
  glfwDestroyWindow(this->window);
  glfwTerminate();
}

int Engine::render_loop() {
  this->setup();
  while (!glfwWindowShouldClose(this->window)) {
    this->action_loop();

    glfwSwapBuffers(window);
    glfwPollEvents();

    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
      break;
  }
  return 0;
}

void Engine::action_loop() { glClear(GL_COLOR_BUFFER_BIT); }

void Engine::setup() {}

void Engine::on_exit() {}

void Engine::error_callback(int error, const char *description) {
  std::cerr << "Error: " << description << "\n";
}

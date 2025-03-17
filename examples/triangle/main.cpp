#include "shaders/shader.h"
#include <CGE.h>
#include <array>
#include <iostream>

class App : public Engine {
private:
  std::array<float, 9> vertices;
  unsigned int vbo;
  unsigned int vao;
  unsigned int v_shader;
  unsigned int f_shader;
  unsigned int shader_program;

public:
  App() : Engine() {};
  virtual void setup() override {
    /* Step 0: setup shaders */
    v_shader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(v_shader, 1, &vertex_shader, nullptr);
    glCompileShader(v_shader);
    int success;
    char info_log[512];
    glGetShaderiv(v_shader, GL_COMPILE_STATUS, &success);
    if (!success) {
      glGetShaderInfoLog(v_shader, 512, NULL, info_log);
      std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n"
                << info_log << std::endl;
    }

    f_shader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(f_shader, 1, &fragment_shader, nullptr);
    glCompileShader(f_shader);
    glGetShaderiv(f_shader, GL_COMPILE_STATUS, &success);
    if (!success) {
      glGetShaderInfoLog(f_shader, 512, NULL, info_log);
      std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n"
                << info_log << std::endl;
    }

    shader_program = glCreateProgram();
    glAttachShader(shader_program, v_shader);
    glAttachShader(shader_program, f_shader);
    glLinkProgram(shader_program);
    glGetProgramiv(shader_program, GL_LINK_STATUS, &success);
    if (!success) {
      glGetProgramInfoLog(shader_program, 512, NULL, info_log);
      std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n"
                << info_log << std::endl;
    }

    glDeleteShader(v_shader);
    glDeleteShader(f_shader);

    vertices = {-0.5f, -0.5f, 0.0f, 0.5f, -0.5f, 0.0f, 0.0f, 0.5f, 0.0f};
    /* Step 1: bind vao */
    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    /* Step 2: bind vbo */
    glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), &vertices, GL_STATIC_DRAW);

    /* Step 3: setup attributes */
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float),
                          (void *)0);
    glEnableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
    std::cout << "setup complete\n";
  }

  virtual void action_loop() override {
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    glUseProgram(shader_program);
    glBindVertexArray(vao);
    glDrawArrays(GL_TRIANGLES, 0, 3);
  }

  virtual void on_exit() override {
    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo);
    glDeleteProgram(shader_program);
  }
};

int main() {
  std::cout << "Starting program\n";
  // Engine test;
  App test;
  return test.render_loop();
}

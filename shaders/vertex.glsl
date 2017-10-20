#version 140

uniform mat4 transform;
uniform mat4 projection_matrix;

in vec3 position;
in vec2 uv;
out vec2 fragment_uv;

void main() {
    fragment_uv = uv;
    gl_Position = projection_matrix * transform * vec4(position, 1.0);
}
#version 110
attribute vec3 vertexCoord;
uniform mat4 cam;

void main() {
  const float focal = 1.0;
  vec4 v = cam * vec4(vertexCoord,1);
  gl_Position = vec4(focal * v.x,
                     focal * v.y,
                     -v.z,
                     -v.w);
}

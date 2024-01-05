#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

uniform mat4        MatrixClip;
uniform mat4        MatrixWorld;

void main()
{
    float outVal = 0.1;

    gl_Position = MatrixClip * vec4(position + normal * outVal , 1.0);
}

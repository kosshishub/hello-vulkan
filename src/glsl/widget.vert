#version 450

layout(push_constant) uniform TextUniform {
	mat4 ortho;
} uni;

layout(location = 0) out vec4 color;

layout(location = 0) in vec2  inPosition;
layout(location = 1) in vec4  inColor;
layout(location = 2) in float inDepth;

void main() 
{
	gl_Position = uni.ortho * vec4(inPosition, -inDepth, 1.0);
	color = inColor;
}

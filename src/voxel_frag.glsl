#version 410 core

in vec3 normal_v;
in vec2 uv_v;

uniform sampler2D tex;

out vec3 color;

void	main()
{
    float modify = max(dot(normalize(normal_v), vec3(0, 0, 1)), 0.15);
	color = texture(tex, uv_v).rgb * modify;
}
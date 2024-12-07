varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time; // time passed

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);

    // shimmer effect
    float shimmer = 0.75 + 0.75 * sin(u_time * 12.0 + v_vTexcoord.y * 25.0);

    // sparkle effect
    float sparkle = 0.5 + 0.5 * sin((v_vTexcoord.x + v_vTexcoord.y) * 50.0 - u_time * 20.0);

    // color cycling glow
    vec3 glowColor = vec3(
        0.5 + 0.5 * sin(u_time * 2.0 + 0.0),
        0.5 + 0.5 * sin(u_time * 2.0 + 2.0),
        0.5 + 0.5 * sin(u_time * 2.0 + 4.0)
    );

    // add flicker
    float noise = fract(sin(dot(v_vTexcoord.xy, vec2(12.9898, 78.233))) * 43758.5453);
    float flicker = step(0.95, noise) * (sin(u_time * 30.0) * 0.5 + 0.5);
    vec3 sparkColor = vec3(1.0, 1.0, 0.2) * flicker;

    // combine effects
    float intensity = shimmer + sparkle * 0.5;
    vec4 finalColor = vec4(texColor.rgb * (1.0 + intensity * 0.6) + glowColor * intensity * 0.4 + sparkColor, texColor.a);

    // output final color
    gl_FragColor = v_vColour * finalColor;
}

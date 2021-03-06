#ifdef GL_ES
precision mediump float;
#endif
varying vec2 v_texcoord;
uniform sampler2D tex;
uniform float alpha;
uniform vec3 color;

void main() {
    gl_FragColor = (texture2D( tex, v_texcoord ) * alpha) + vec4(color*(1.0-alpha),1.0);
}

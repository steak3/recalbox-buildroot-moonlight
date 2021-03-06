// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder32;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec2 VARorig_tex;
};
out_vertex _co1;
orig _ORIG1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 OrigTextureSize;
COMPAT_ATTRIBUTE vec2 OrigTexCoord;
void main()
{
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0008;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/OrigTextureSize.x, 1.00000000E+00/OrigTextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    VARorig_tex = OrigTexCoord;
    _co1._t1 = OrigTexCoord.xyyy + vec4(0.00000000E+00, -_ps.y, 0.00000000E+00, _ps.y);
    _co1._t2 = OrigTexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _co1._t1;
    TEX2 = _co1._t2;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _orig_tex;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder38;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec2 _orig_tex;
};
vec4 _ret_0;
vec3 _TMP15;
vec3 _TMP13;
vec3 _TMP11;
vec3 _TMP9;
vec3 _TMP14;
vec3 _TMP12;
vec3 _TMP10;
vec3 _TMP8;
vec4 _TMP7;
float _TMP19;
float _TMP21;
float _TMP22;
float _TMP18;
float _TMP17;
vec3 _TMP16;
vec4 _TMP20;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
orig _ORIG1;
input_dummy _IN1;
vec2 _x0034;
vec4 _r0046;
vec4 _r0056;
vec4 _x0066;
vec4 _TMP67;
vec4 _x0074;
vec4 _TMP75;
vec4 _x0082;
vec4 _TMP83;
vec3 _TMP91;
vec3 _x0096;
vec4 _info0098;
float _x0100;
float _x0104;
float _x0108;
float _x0110;
float _x0114;
float _x0118;
float _x0120;
float _x0124;
float _x0128;
vec4 _info0130;
float _x0132;
float _x0136;
float _x0140;
float _x0142;
float _x0146;
float _x0150;
float _x0152;
float _x0156;
float _x0160;
vec4 _info0162;
float _x0164;
float _x0168;
float _x0172;
float _x0174;
float _x0178;
float _x0182;
float _x0184;
float _x0188;
float _x0192;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP197;
vec4 _a0200;
float _t0206;
float _t0210;
float _t0214;
float _t0218;
vec4 _r0222;
vec4 _TMP231;
vec4 _a0234;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform sampler2D OrigTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _px;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec2 _fp;
    vec2 _delta;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _info1;
    vec4 _maximo;
    vec3 _res;
    float _mx;
    _x0034 = TEX0.xy*TextureSize;
    _fp = fract(_x0034);
    _TMP0 = COMPAT_TEXTURE(OrigTexture, TEX1.xy);
    _TMP1 = COMPAT_TEXTURE(OrigTexture, TEX2.xw);
    _TMP2 = COMPAT_TEXTURE(OrigTexture, TEX2.yw);
    _TMP3 = COMPAT_TEXTURE(OrigTexture, TEX2.zw);
    _TMP4 = COMPAT_TEXTURE(OrigTexture, TEX1.xw);
    _r0046.x = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.y = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.z = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.w = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.x = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.z = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.w = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _delta = vec2(InputSize.x/OutputSize.x, (5.00000000E-01*InputSize.x)/OutputSize.x);
    _x0066 = ((_fx + _delta.xxxx) - vec4( 1.50000000E+00, 5.00000000E-01, -5.00000000E-01, 5.00000000E-01))/(2.00000000E+00*_delta.xxxx);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0066);
    _TMP67 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _x0074 = ((_fx_left + _delta.yxyx) - vec4( 1.00000000E+00, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00))/(2.00000000E+00*_delta.yxyx);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0074);
    _TMP75 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _x0082 = ((_fx_up + _delta.xyxy) - vec4( 2.00000000E+00, 0.00000000E+00, -1.00000000E+00, 5.00000000E-01))/(2.00000000E+00*_delta.xyxy);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0082);
    _TMP83 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _info1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP16 = _info1.xyz*vec3( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    _x0096 = _TMP16 + 5.00000000E-01;
    _TMP91 = floor(_x0096);
    _x0100 = _TMP91.x/2.00000000E+00;
    if (_x0100 < 0.00000000E+00) { 
        _x0104 = -_x0100;
        _TMP22 = floor(_x0104);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0100);
    } 
    _TMP17 = _x0100 - _TMP21;
    _x0108 = _TMP17 + 5.00000000E-01;
    _info0098.w = floor(_x0108);
    _x0110 = _TMP21/2.00000000E+00;
    if (_x0110 < 0.00000000E+00) { 
        _x0114 = -_x0110;
        _TMP22 = floor(_x0114);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0110);
    } 
    _TMP18 = _x0110 - _TMP21;
    _x0118 = _TMP18 + 5.00000000E-01;
    _info0098.z = floor(_x0118);
    _x0120 = _TMP21/2.00000000E+00;
    if (_x0120 < 0.00000000E+00) { 
        _x0124 = -_x0120;
        _TMP22 = floor(_x0124);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0120);
    } 
    _TMP19 = _x0120 - _TMP21;
    _x0128 = _TMP19 + 5.00000000E-01;
    _info0098.y = floor(_x0128);
    _info0098.x = _TMP21;
    _x0132 = _TMP91.y/2.00000000E+00;
    if (_x0132 < 0.00000000E+00) { 
        _x0136 = -_x0132;
        _TMP22 = floor(_x0136);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0132);
    } 
    _TMP17 = _x0132 - _TMP21;
    _x0140 = _TMP17 + 5.00000000E-01;
    _info0130.w = floor(_x0140);
    _x0142 = _TMP21/2.00000000E+00;
    if (_x0142 < 0.00000000E+00) { 
        _x0146 = -_x0142;
        _TMP22 = floor(_x0146);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0142);
    } 
    _TMP18 = _x0142 - _TMP21;
    _x0150 = _TMP18 + 5.00000000E-01;
    _info0130.z = floor(_x0150);
    _x0152 = _TMP21/2.00000000E+00;
    if (_x0152 < 0.00000000E+00) { 
        _x0156 = -_x0152;
        _TMP22 = floor(_x0156);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0152);
    } 
    _TMP19 = _x0152 - _TMP21;
    _x0160 = _TMP19 + 5.00000000E-01;
    _info0130.y = floor(_x0160);
    _info0130.x = _TMP21;
    _x0164 = _TMP91.z/2.00000000E+00;
    if (_x0164 < 0.00000000E+00) { 
        _x0168 = -_x0164;
        _TMP22 = floor(_x0168);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0164);
    } 
    _TMP17 = _x0164 - _TMP21;
    _x0172 = _TMP17 + 5.00000000E-01;
    _info0162.w = floor(_x0172);
    _x0174 = _TMP21/2.00000000E+00;
    if (_x0174 < 0.00000000E+00) { 
        _x0178 = -_x0174;
        _TMP22 = floor(_x0178);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0174);
    } 
    _TMP18 = _x0174 - _TMP21;
    _x0182 = _TMP18 + 5.00000000E-01;
    _info0162.z = floor(_x0182);
    _x0184 = _TMP21/2.00000000E+00;
    if (_x0184 < 0.00000000E+00) { 
        _x0188 = -_x0184;
        _TMP22 = floor(_x0188);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0184);
    } 
    _TMP19 = _x0184 - _TMP21;
    _x0192 = _TMP19 + 5.00000000E-01;
    _info0162.y = floor(_x0192);
    _info0162.x = _TMP21;
    _fx45 = _info0098*_TMP67;
    _fx30 = _info0130*_TMP75;
    _fx60 = _info0162*_TMP83;
    _a0196 = _r0056 - _r0046.wxyz;
    _TMP193 = abs(_a0196);
    _a0200 = _r0056 - _r0046.zwxy;
    _TMP197 = abs(_a0200);
    _px = bvec4(_TMP193.x <= _TMP197.x, _TMP193.y <= _TMP197.y, _TMP193.z <= _TMP197.z, _TMP193.w <= _TMP197.w);
    _TMP7 = max(_fx30, _fx60);
    _maximo = max(_TMP7, _fx45);
    _t0206 = float(_px.x);
    _TMP8 = _TMP4.xyz + _t0206*(_TMP3.xyz - _TMP4.xyz);
    _TMP9 = _TMP2.xyz + _maximo.x*(_TMP8 - _TMP2.xyz);
    _t0210 = float(_px.y);
    _TMP10 = _TMP3.xyz + _t0210*(_TMP0.xyz - _TMP3.xyz);
    _TMP11 = _TMP2.xyz + _maximo.y*(_TMP10 - _TMP2.xyz);
    _t0214 = float(_px.z);
    _TMP12 = _TMP0.xyz + _t0214*(_TMP1.xyz - _TMP0.xyz);
    _TMP13 = _TMP2.xyz + _maximo.z*(_TMP12 - _TMP2.xyz);
    _t0218 = float(_px.w);
    _TMP14 = _TMP1.xyz + _t0218*(_TMP4.xyz - _TMP1.xyz);
    _TMP15 = _TMP2.xyz + _maximo.w*(_TMP14 - _TMP2.xyz);
    _r0222.x = dot(_TMP9, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0222.y = dot(_TMP11, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0222.z = dot(_TMP13, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0222.w = dot(_TMP15, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0234 = _r0222 - _r0056;
    _TMP231 = abs(_a0234);
    _res = _TMP9;
    _mx = _TMP231.x;
    if (_TMP231.y > _TMP231.x) { 
        _res = _TMP11;
        _mx = _TMP231.y;
    } 
    if (_TMP231.z > _mx) { 
        _res = _TMP13;
        _mx = _TMP231.z;
    } 
    if (_TMP231.w > _mx) { 
        _res = _TMP15;
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif

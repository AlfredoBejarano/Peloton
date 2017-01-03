//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec4 u_vWaterParams;
uniform vec4 u_vWaterParams2;
uniform vec4 u_vWaterParams3;
uniform vec4 u_vSineParams;
uniform vec4 u_vSineParams2;
uniform vec4 u_vRefractColour;
uniform vec4 u_vReflectColour;

varying vec2 v_texcoord;
varying vec4 v_color;

uniform sampler2D s_TexSampler;

void main()
{


vec4 vertColour = v_color;
vec2 texcoord = v_texcoord;

vec4 combinedColour;

if (texcoord.y > u_vWaterParams.x)
{

float offset = texcoord.y - u_vWaterParams.x;
float mag = offset * u_vWaterParams.y;

//float sinescale = u_vWaterParams3.x - (offset * u_vWaterParams3.y);
//sinescale = clamp(sinescale, 1.0, u_vWaterParams3.x);
float sinescale = 1.0;

vec2 shift1, shift2;


shift1.x = sin((offset * u_vSineParams.x * sinescale) + u_vSineParams.y);
shift1.y = sin((texcoord.x * u_vSineParams.x) + u_vSineParams.z);

shift2.x = sin((offset * u_vSineParams2.x * sinescale) + u_vSineParams2.y);
shift2.y = sin((texcoord.x * u_vSineParams2.x) + u_vSineParams2.z);

//vertColour += (shift1.x * 0.1) + (shift1.y * 0.1) + (shift2.x * 0.1) + (shift2.y * 0.1);


texcoord.x += shift1.x * u_vWaterParams.z * mag;
texcoord.y += shift1.y * u_vWaterParams.w * mag;

texcoord.x += shift2.x * u_vWaterParams2.z * mag;
texcoord.y += shift2.y * u_vWaterParams2.w * mag;
//
vec4 refractTexColour = texture2D( s_TexSampler, texcoord );
vec4 reflectTexColour = texture2D( s_TexSampler, vec2(texcoord.x, u_vWaterParams.x - (texcoord.y - u_vWaterParams.x) ) );

vec4 reflectCol = reflectTexColour * u_vReflectColour;
reflectCol *= 1.0 - (mag * u_vWaterParams2.x);
reflectCol = clamp(reflectCol, 0.0, 1.0);
combinedColour = vertColour * ((refractTexColour * u_vRefractColour) + reflectCol);

}

else

{
vec4 texelColour = texture2D( s_TexSampler, v_texcoord );
combinedColour = vertColour * texelColour;
 }

gl_FragColor = combinedColour;

}

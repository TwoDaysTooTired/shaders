#ifdef GL_ES
precision mediump float;
#endif
#define PI2 6.28318530718
#define pi 3.14159265358979

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
uniform float radius;
uniform float timer;
void main()
{
    float rad = radius - 3.0;
    float percent = mod(timer,60.0)/60.0;
    float r1 = percent * 2.0*pi;
    float r2 = percent * 2.0*pi - (0.1*pi);
    float r3 = percent * 2.0*pi - (0.2*pi);
    vec2 p1 = vec2(cos(r1)*rad,sin(r1)*rad) + vec2(radius,radius);
    vec2 p2 = vec2(cos(r2)*rad,sin(r2)*rad) + vec2(radius,radius);
    vec2 p3 = vec2(cos(r3)*rad,sin(r3)*rad) + vec2(radius,radius);
    vec2 p = v_texCoord * radius*2;
    if(distance(p,p1)<=3.0)
    {
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    }
    else if(distance(p,p2)<=2.0)
    {
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    }
    else if(distance(p,p3) <=1.0)
    {
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    }
    else
    {
        gl_FragColor = vec4(0.0,0.0,0.0,1.0);
    }
	//gl_FragColor = vec4(1.0,1.0,1.0,1.0);
}
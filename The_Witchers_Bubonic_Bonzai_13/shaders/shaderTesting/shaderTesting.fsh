varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelHeight;
uniform float pixelWidth;

void main()
{
	vec2 offsetX;
	offsetX.x = pixelWidth;
	vec2 offsetY;
	offsetY.y = pixelHeight;
	
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
	
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetX ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetX ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord + offsetY ).a);
	alpha = max(alpha, texture2D( gm_BaseTexture, v_vTexcoord - offsetY ).a);
	
	
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
}

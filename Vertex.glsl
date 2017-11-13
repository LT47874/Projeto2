attribute vec4 vPosition;
attribute vec3 vNormal;
uniform mat4 mNormals;
uniform mat4 mProjection;
uniform mat4 mModelView;

varying vec4 fColor;

void main(){
    gl_Position = mProjection*mModelView*vPosition;
	fColor = vec4((vPosition[0] +1.0)/2.0,(vPosition[1] +1.0)/2.0,(vPosition[2] +1.0)/2.0, 1.0);
}

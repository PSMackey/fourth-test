#include "ofMain.h"
#include "ofApp.h"

int main(){
    
	ofSetupOpenGL(1024,768, OF_FULLSCREEN);
    // these dimensions are ignored in iOS
	ofRunApp(new ofApp);
    

}

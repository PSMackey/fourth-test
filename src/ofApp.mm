#include "ofApp.h"
//touchTwo  //mackey Summer 2014

//2 touch-responsive areas
//NOT rotation or Retina -sensitive

void ofApp::setup(){
    
    ofPoint loc = ofPoint(30, 120); 
    
    float size = ofGetWidth() - 60;
    
    areaA.set(loc, size/2,size/2);
    
    Aclr.set(255,90,200);
    
    areaB.set(loc+ofPoint(90,240), size/2,size/2);
    Bclr.set(0,90,255);
    
    ofBackground(110);
}

void ofApp::update(){
    //nothing
}

void ofApp::draw(){
    
    ofFill();

    ofSetColor(Aclr);
    
    ofRect(areaA);
}

void ofApp::touchDown(ofTouchEventArgs & touch){
    printf("That's a touch down at %0.f %0.f\n", touch.x,touch.y);
    ofPoint tLoc = ofPoint(touch.x,touch.y);
    
    if (areaA.inside(tLoc)) {
        
        Aclr.set(255);
        printf("Touched Area A\n");
        
    } else {
        Aclr.set(255,190,190);
    }
}


//--------------------------------------------------------------
void ofApp::exit(){
    //necessary
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

    
}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){
    
}

//--------------------------------------------------------------
void ofApp::gotFocus(){
    
}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){
    //inconsequential in this demo
    printf("ORIENTATION = %i\n",newOrientation);

}
//OF_ORIENTATION_DEFAULT = 1,
//OF_ORIENTATION_180 = 2,
//OF_ORIENTATION_90_LEFT = 3,
//OF_ORIENTATION_90_RIGHT = 4,
//OF_ORIENTATION_UNKNOWN = 5  ...Z up    6 is Z down



using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cameraChange : MonoBehaviour {

    public GameObject viewerCamera;
    public GameObject fpsCamera;

    public Texture tourTexture;
    public Texture homeTexture;

    bool isViewCam;


    void Start ()
    {
        //sets the viewerCamera as the first active camera on Start. The viewer camera is not the main camera; the main camera is the fpsCamera attached to the user
        viewerCamera.SetActive(true);
        fpsCamera.SetActive(false);
        isViewCam = true;

    }

    void OnGUI ()
    {
        //Checks to see if the current camera is the viewer Camera
        if (isViewCam)
        {
            //draw a button that if pressed will change the camera to the fps Camera. Also set the texture to an specified texture done in the Unity UI
            if (GUI.Button(new Rect(10, 10, 100, 100), tourTexture))
            {
                viewerCamera.SetActive(false);
                fpsCamera.SetActive(true);
                isViewCam = false;
            }

        }
        else
        {
            //draw a button that if pressed will change the camera to the viewer Camera. Also set the texture to an specified texture done in the Unity UI
            if (GUI.Button(new Rect(10, 10, 100, 100), homeTexture))
            {
                viewerCamera.SetActive(true);
                fpsCamera.SetActive(false);
                isViewCam = true;
            }
        }


    }

}

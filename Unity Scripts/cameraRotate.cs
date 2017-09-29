using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cameraRotate : MonoBehaviour {

    public Transform target;
    public float rotateSpeed = 15f;

	void Update () {

        //This orbits the camera around the home model
        transform.RotateAround(target.position, Vector3.up, Time.deltaTime * -rotateSpeed);
	}
}

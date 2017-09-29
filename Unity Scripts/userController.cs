using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class userController : MonoBehaviour
{
    public float moveSpeed = 2f;
    public float lookSensitivity = 1f;
    CharacterController user;

    private float vertOrientation = 0f;
    public float vertRange = 60f;

    public GameObject mainCam;

    //bool cursorLocked;

    void Start ()
    {
        user = GetComponent<CharacterController>();

        /*
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = (false);
        cursorLocked = (true);
        */
	}

	void Update ()
    {
        //enables the camera to move by clicking the the left mouse button and dragging it
        if (Input.GetMouseButton(0))
        {
            float rotationX = Input.GetAxis("Mouse X") * lookSensitivity;
            //float rotationY = Input.GetAxis("Mouse Y") * lookSensitivity;
            transform.Rotate(0, rotationX, 0);

            vertOrientation += Input.GetAxis("Mouse Y") * lookSensitivity;
            vertOrientation = Mathf.Clamp(vertOrientation, -vertRange, vertRange);
            mainCam.transform.localRotation = Quaternion.Euler(-vertOrientation, 0, 0);
        }

        // enables user movements forward, backward, side to side
        float moveFrontBack = Input.GetAxis("Vertical") * moveSpeed;
        float moveSide = Input.GetAxis("Horizontal") * moveSpeed;
        Vector3 move = new Vector3(moveSide, 0, moveFrontBack);
        move = transform.rotation * move;
        user.Move(move * Time.deltaTime);

        /* Intended to make the cursor not visible and locks the cursor with in the confines of the screen
        if (Input.GetKeyDown("escape") && !cursorLocked)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = (false);
            cursorLocked = (true);
        }
        else if (Input.GetKeyDown("escape") && cursorLocked)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = (true);
            cursorLocked = (false);
        }
        */
    }
}

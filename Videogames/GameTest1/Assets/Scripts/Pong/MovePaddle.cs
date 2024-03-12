using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePaddle : MonoBehaviour
{
    public float speed;
    public float limit;

    public KeyCode moveUp;
    public KeyCode moveDown;

    void Start()
    {
        
    }

    void Update()
    {
        if (Input.GetKey(moveUp) && transform.position.y < limit)
        {
            transform.Translate(Vector3.up * speed * Time.deltaTime);
        }
        if (Input.GetKey(moveDown) && transform.position.y > -limit)
        {
            transform.Translate(Vector3.down * speed * Time.deltaTime);
        }
    }
}

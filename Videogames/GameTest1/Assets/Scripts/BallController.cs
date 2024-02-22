using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class BallController : MonoBehaviour
{
    public GameObject dot;
    public float force;

    void Start()
    {
        StartGame();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void StartGame()
    {

        dot.GetComponent<Rigidbody2D>().velocity=Random.onUnitSphere * force;
    }
}

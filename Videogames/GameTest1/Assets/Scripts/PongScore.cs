using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PongScore : MonoBehaviour
{
    public int side;
    BallController controller;
    // Start is called before the first frame update
    void Start()
    {
        controller = GameObject.FindWithTag("GameController").GetComponent<BallController>();
    }
    void OnTriggerExit2D(Collider2D other){
        controller.AddPoints(side);
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;


public class BallController : MonoBehaviour
{
    public GameObject dotPrefab;
    public GameObject dot;
    public float force;

    public int pointsLeft = 0;
    public int pointsRight = 0;
    public TMP_Text leftScore;
    public TMP_Text rightScore;
    void Start()
    {
        StartGame();
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.R)){
            Destroy(dot);
            StartGame();
        }
    }

    public void StartGame()
    {
        pointsLeft = 0;
        pointsRight = 0;

        leftScore.text = pointsLeft.ToString();
        rightScore.text = pointsRight.ToString();
        ServeBall();

    }



    public void ServeBall(){
        Destroy(dot);
        dot = Instantiate(dotPrefab);
        dot.GetComponent<Rigidbody2D>().velocity=Random.onUnitSphere * force;
    }

    public void AddPoints(int side){
        if (side == 1){
            pointsLeft++;
            if (pointsLeft >= 5){
                leftScore.text = "Winner! " + pointsLeft.ToString();
            }
            else {
                leftScore.text = pointsLeft.ToString();
                ServeBall();
            }

        } else{
            pointsRight++;
            if (pointsRight >= 5){
                rightScore.text = "Winner! " + pointsRight.ToString();
            }
            else{
                rightScore.text = pointsRight.ToString();
                ServeBall();
            }
        }
        ServeBall();
    }
}

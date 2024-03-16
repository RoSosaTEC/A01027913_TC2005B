using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.VisualScripting;
using TMPro;

//Script controlador de juego Simon dice
// Rodrigo Sosa Rojas / A01027913 / 06-03-24

public class SimonController : MonoBehaviour
{
    // "SerializeField" deja que Unity pueda ver la lista, pero no otras clases
    [SerializeField] List<int> sequence;
    [SerializeField] GameObject[] buttons;
    

    bool playerTurn = false;
    int index;
    int level; 
    int repeatUses = 3;
    
    // Start is called before the first frame update
    void Start()
    {
        NewGame();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void NewGame(){
        sequence = new List<int>();
        index = 0;
        AddNumber();
    }

    void AddNumber()
    {
        playerTurn = false;
        index = 0;
        int num = Random.Range(0, buttons.Length);
        sequence.Add(num);
        StartCoroutine(ShowSequence());
    }

    IEnumerator ShowSequence(){
        // Llamamos al método en el script de "SimonButton"
        yield return new WaitForSeconds(1);
        for (int i = 0; i < sequence.Count; i++){
            int num = sequence[i];
            buttons[num].GetComponent<SimonButton>().HighLight();
            yield return new WaitForSeconds(1);
        }
        playerTurn = true;
    }

    public void ButtonSelect(int buttonID){
        if (playerTurn){
            if (sequence[index] == buttonID){
                //Continua la secuencia
                index++;
                //Checar si terminamos la secuencia
                if (index == sequence.Count){
                    level++;
                    PlayerPrefs.SetInt("score",level);
                    int test = PlayerPrefs.GetInt("score");
                    print(test);
                    AddNumber();
                }    
             }   else{
                //GameOver
                Debug.Log("GAME OVER");
                UnityEngine.SceneManagement.SceneManager.LoadScene("SimonResults");
            }

        }
    }

    public void showAgain(){
        if(playerTurn){
            if(repeatUses > 0){
                index = 0;
                repeatUses--;
                playerTurn = false;
                StartCoroutine(ShowSequence());
                Debug.Log("Volver a mostrar la secuencia: " + repeatUses + " restantes.");
            }
            else {
                Debug.Log("no more repeat sequences uses");
            }
        }
    }
}
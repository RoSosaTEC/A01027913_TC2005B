using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.VisualScripting;
using UnityEngine.UI;

//Script controlador de los botones en "Simon Says"
// Rodrigo Sosa Rojas / 06-03-24

public class SimonButton : MonoBehaviour
{
	Color originalColor;
	
	void Start(){
		originalColor = GetComponent<Image>().color;
	}

	public void HighLight(){
		StartCoroutine(ChangeColor());
	}	

	IEnumerator ChangeColor(){
		GetComponent<Image>().color = Color.white;
		yield return new WaitForSeconds(0.5f);
		GetComponent<Image>().color = originalColor;
	}


}

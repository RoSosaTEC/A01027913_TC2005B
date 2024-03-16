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
	AudioSource audioSource;
	
	void Start(){

		audioSource = GetComponent<AudioSource>();
		originalColor = GetComponent<Image>().color;
	}

	public void HighLight(){

		audioSource.Play();
		StartCoroutine(ChangeColor());
	}	

	IEnumerator ChangeColor(){
		GetComponent<Image>().color = Color.white;
		yield return new WaitForSeconds(0.5f);
		GetComponent<Image>().color = originalColor;
	}



}

"use strict"

import express from 'express'

const app = express()

const port = 5000

app.use(express.json())

var cards = [
    {id : 1, nombre : "La Victoria es mia! ", coste_mana : 4, clase: "Luctor ", ataque: 25, defensa: 0, regenera_mana: 0, disminuye_mana: 0, curacion: 0},
    {id : 2, nombre: "Diosa de la Victoria ", coste_mana: 2, clase: "Custodes", ataque: 0, defensa: 8, regenera_mana: 0, disminuye_mana: 0, curacion: 0},
    {id : 3, nombre: "Cero Absoluto ", coste_mana: 1, clase: "Magus ", ataque: 0, defensa: 0, regenera_mana: 1, disminuye_mana: 0, curacion: 0},
    {id : 4, nombre: "Reestructuracion de Materia ", coste_mana: 2, clase: "Texere ", ataque: 0, defensa: 0, regenera_mana: 0, disminuye_mana: 0, curacion: 15},
    {id : 5, nombre: "Cañon Meteorico ", coste_mana: 4, clase: "Sagitta ", ataque: 8, defensa: 0, regenera_mana: 0, disminuye_mana: 0, curacion: 0},
    {id : 6, nombre: "Puerta Espectral: Fervor ", coste_mana: 3, clase: "Furari ", ataque: 0, defensa: 0, regenera_mana: 0, disminuye_mana: 3, curacion: 0},
]


app.get('/api/inventario', (req, resp) =>{
    console.log("¡Hola Heredero! Aqui estan las cartas en tu Inventario: ")
    for (let i = 0; i < cards.length; i++){
        console.log("id: "+ cards[i].id +" nombre: "+ cards[i].nombre + "coste de mana:" + cards[i].coste_mana + "clase: " + cards[i].clase + "Valor de ataque: " + cards[i].ataque + "Valor de defensa: " + cards[i].defensa + "Recuperacion de mana: " + cards[i].regenera_mana + "Disminucion de mana: " + cards[i].disminuye_mana + "Valor de curacion: " + cards[i].curacion)
    }
    resp.status(200).send("Inventario enviado a la terminal")
})

app.get('/api/buscarcarta/:id', (req, resp) =>{
    console.log("Buscare la carta con la ID: "+req.params.id)
    let check_id = false
    let index = 0
    for (let i = 0; i < cards.length; i++){
        if (cards[i].id == req.params.id){
        check_id = true
        index = i
    }}
    if (check_id == false){
        resp.status(400).send("Hm...no encontre una carta con esa ID. ¿seguro que te la di yo?")
    }
    else{
        console.log("Carta encontrada. Id: " + req.params.id + " Nombre: " + cards[index].nombre)
        resp.status(200).send("Carta enviada a la terminal")
    }

})


app.post('/api/agregarcarta', (req, resp) => {
    let nuevaCarta = req.body
    let check_id = false
    let index = 0
    for (let i = 0; i < cards.length; i++){
        if (cards[i].id == req.params.id){
        check_id = true
        index = i
    }}
    if (Object.keys(nuevaCarta).length != Object.keys(cards[0]).length){
        resp.status(400).send("Lo siento heredero, te faltan argumentos para crear esta carta...")
    }
    if (check_id == true){
        resp.status(400).send("Por mas que me gustaria repetir mi trabajo, no puedo crear dos cartas con la misma ID")
    }
    else{
        cards.push(nuevaCarta)
        resp.status(201).send("¡Bien! La carta ha sido agregada a tu Inventario")
    }
})

app.delete('/api/eliminarcarta/:id', (req, resp) => {
    let index = 0;
    let check_id = false;
    for (let i = 0; i < cards.length; i++){
        if (cards[i].id == req.params.id){
        check_id = true
        index = i
    }}
    if (check_id == true) {
        cards.splice(index, 1)
        resp.status(200).send("¿No te gusta mi carta? Hm, bien. Puedes regresarmela si quieres...")
    } 
    else {
        resp.status(404).send("No he encontrado esta carta...¿seguro que te la di yo?")
    }
});

app.patch('/api/actualizarcarta/:id', (req, resp) => {
    let update = req.body;
    let index = -1;
    let check_id = false;
    for (let i = 0; i < cards.length; i++){
        if (cards[i].id == req.params.id){
        check_id = true
        index = i
        }
    }
    if (check_id){
        let card = cards[index]
        for (let key in update){
            if (card.hasOwnProperty(key)){
                card[key] = update[key]
            }
        }

        resp.status(200).send("Hecho, modificare tu carta a tu gusto")
    }
    else {
        resp.status(400).send("no he encontrado una carta con ese ID...¿seguro que te la di yo?")
    }
})


app.listen(port, () =>{
    console.log('Listening on port ' + port)
})
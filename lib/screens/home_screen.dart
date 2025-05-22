import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/appointment_screen.dart';

//siguiente ventana luego de iniciar sesión/registrarse/saltarse la pantalla de bienvenida

class HomeScreen extends StatelessWidget{

  //ponemos lista de los síntomas
  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold"
  ];

  //lista de imágenes que nos estará sirviendo
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //crear la barra superior con el texto y el ícono
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Alex",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),
              ],
            ),
            ),
            //crear recuadros no funcionales para crear una cita en una clínica o llamar un doctor para agendar cita en casa
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        //BoxShadow es una librería que permite agregar sombreado a un elemento
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color(0xFF7165D6),
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Clinic Visit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Make an appoinment",
                        style: TextStyle(
                          color: Colors.white54
                        ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 4
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA),
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.home_filled,
                            color: Color(0xFF7165D6),
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Home Visit",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Call the doctor home",
                        style: TextStyle(
                          color: Colors.black54
                        ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //texto que pregunta los síntomas que uno tiene
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("What are your symptoms?",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),
              ),
            ),
            //listado de los síntomas, este se puede deslizar para visualizar los que hayan, tomando los de la lista del inicio
            SizedBox(height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptoms.length,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child: Center(
                    child: Text(
                      symptoms[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54
                      ),
                    ),
                  ),
                );
              },),
            ),

            //lista de los diversos doctores que hay
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Popular Doctors",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),
              ),
              //nos ayuda a crear nuestra cuadrícula con n elementos para colocar la información de los doctores populares
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), 
                itemBuilder: (context, index) {
                  return InkWell(
                    //cada que presionemos uno de los recuadros nos llevará a una ventana con información más detallada
                    //y en base a eso sacar una cita con un doctor
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => AppointmentScreen(),));
                    },
                    //crear el recuadro con su sombra
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2
                          )
                        ]
                      ),
                      //colocar las imágenes con ayuda de la lista de imágenes creada al inicio
                      //junto a la información de nombre, especialidad y valoración
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/${imgs[index]}"),
                          ),
                          Text(
                            "Dr. Doctor Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                            ),
                          ),
                          Text(
                            "Therapist",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.black45
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                )
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/chat_screen.dart';

//sección de mensajería con los doctores de la aplicación

class MessagesScreen extends StatelessWidget {

  List imgs = [
      "doctor1.jpg",
      "doctor2.jpg",
      "doctor3.jpg",
      "doctor4.jpg",
      "doctor1.jpg",
      "doctor2.jpg",
    ];

  @override
  Widget build(BuildContext context) {

    

    return SingleChildScrollView(
      //texto superior para indicar en qué sección estás
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            ),

            //barra de búsqueda del chat
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2
                    )
                  ]
                ),
                //al tratarse de un formulario, usaremos el textformfield para poder introducir texto
                //y de igual manera decorarlo para que tenga un texto y un ícono de búsqueda
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 260,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none
                          ),
                        ),
                        ),
                    ),
                    Icon(
                      Icons.search, 
                      color: Color(0xFF7165D5),
                    )
                  ],
                ),
              ),
            ),

            //texto para los doctores que están activos
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Active Now",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 90,
            //listado de los doctores que andan activos, el cual se puede deslizar para ver los demás que hayan
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index){
              return Container(
                //nos genera un círculo, el cual tendrá un sombreado
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, 
                      spreadRadius: 2,
                      blurRadius: 10
                    )
                  ]
                ),
                //stack ya que pondremos la burbuja de que están conectados encima del icono del doctor
                child: Stack(
                  textDirection: TextDirection.rtl, //la dirección en la que irá nuestro texto
                  children: [
                    Center(
                      child: Container(
                        height: 65,
                        width: 65,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "images/${imgs[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    //burbuja de conectado
                    Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(3),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            ),

            //texto para los chats recientes
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Recent Chats",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            //nuestro listado de chats recientes
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  minVerticalPadding: 15,
                  onTap: (){
                    //este nos ayudará a mandarnos al chatscreen cuando presionemos uno de los chats
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                  },
                  //icono del doctor junto con la información básica: nombre, mostrar previsualización del mensaje y hora
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      "images/${imgs[index]}"
                    ),
                  ),
                  title: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    "Hello, Doctor are you there?",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, //textoverflow: ayuda a saber cuánto texto puede mostrarse
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                    ),
                    ),
                    trailing: Text(
                      "12:30",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54
                      ),
                    ),
                ),
              );
            })
        ],
      ),
    );
  }
}
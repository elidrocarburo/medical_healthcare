import 'package:flutter/material.dart';
import 'package:medical_healthcare/widgets/chat_sample.dart';

//al presionar uno de los chats recientes de la pestaña de mensajes, nos mandará a esta pantalla donde podremos visualizar un chat

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //nuestra appbar que incluirá un botón para regresar a la ventana de mensajes
      //icono y nombre del contacto
      //botones para hacer llamada, videollamada o ir a opciones del chat
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), 
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "Dr. Doctor Name",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  )
              ],
            ),
          ),
          //iconos
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 7),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
              ),
              Padding(
              padding: EdgeInsets.only(top: 8, right: 7),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 30,
              ),
              ),
              Padding(
              padding: EdgeInsets.only(top: 8, right: 7),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
              ),
          ],
        )
      ),

      //iremos construyendo nuestra lista de mensajes, el cual estará en la clase de chatsample
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => ChatSample()
        ),
        bottomSheet: Container(
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 10
              )
            ]
          ),

          //barra inferior para poder escribir, mandar archivos, emoticones y botón para mandar el mensaje
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.add, 
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.amber,
                  size: 30,
                ),
                ),
                Padding(
                  //creación de nuestro formulario para escribir
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Type something",
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.send, size: 30,
                color: Color(0xFF7165D6),
                ),
                )
            ],
          ),
        ),
    );
  }
}
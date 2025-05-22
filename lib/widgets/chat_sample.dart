import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

//texto que irá dentro de nuestras burbujas de texto dentro de chat screen
//custom clippers es una librería que nos ayuda a dar formas a nuestras burbujas de texto

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          //acá hacemos llamada a la librería para elegir el tipo de burbuja de texto será (en este caso, son los que estaremos recibiendo)
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFFE1E1E2)
            ),
            child: Text(
              "Hello, what I can do for you, you can book appointment directly",
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ),
        ),
        ),
        Container(
          //acá irá los mensajes que nosotros estaremos enviando
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6)
                ),
                child: Text(
                  "Hello Doctor, are you there?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
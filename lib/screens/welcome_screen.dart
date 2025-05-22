import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/login_screen.dart';
import 'package:medical_healthcare/widgets/navbar_roots.dart';
import 'package:medical_healthcare/screens/signup_screen.dart';

//la pantalla de bienvenida para poder registrarte, iniciar sesión o saltarse esta primera parte
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        //contenedor para acomodar el botón de saltar en la esquina derecha de la pantalla
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                //al presionar nos saca de la pantalla principal y nos manda al menú principal y nos construye nuestra barra inferior
               Navigator.push(context, MaterialPageRoute(
                builder: (context) => NavbarRoots()
                ));
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xFF7165D6),
                  fontSize: 20,
                ),
                ),
              ),
            ),
            //acomoda nuestra imagen
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20), 
              child: Image.asset("images/doctors.png"),
              ),
              //título y subtítulo
              SizedBox(height: 50),
              Text("Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2
              ),
              ),
              SizedBox(height: 10),
              Text("Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              ),

              //botones funcionales que nos redireccionarán a una pantalla distinta (ya sea para iniciar sesión o registrarnos)
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    //inkwell es un widget que le da interacción a un elemento y permite darle interacción
                    //le da diversos efectos visuales como el darle interacción a elementos que no son interactivos
                    //al presionarlo cambia de color, etc
                    child: InkWell(
                      onTap: (){
                        //al presionar el de log in, nos manda a otra pantalla
                        Navigator.push(context, MaterialPageRoute(
                         builder: (context) => LoginScreen()
                        ));
                      },
                      //creación del botón
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15, 
                          horizontal: 40),
                        child: Text("Log In", style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),),
                        ),
                    ),
                  ),
                  Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        //lo mismo de arriba, sólo que acá nos manda a registrar cuenta
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15, 
                          horizontal: 40),
                        child: Text("Sign Up", style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),),
                        ),
                    ),
                  ),

                ],
              ),
          ],
        ),
      ),
    );
  }
}
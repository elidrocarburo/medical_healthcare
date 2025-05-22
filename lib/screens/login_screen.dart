import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/screens/signup_screen.dart';

//pantalla para iniciar sesión, creado en un widget dinámico ya que cambiará cada que ingresemos un dato

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //este nos ayudará en la parte de la contraseña
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //pondremos la misma imagen que en la pantalla de bienvenida
            SizedBox(height: 35),
            Padding(padding: EdgeInsets.all(20),
            child: Image.asset("images/doctors.png"),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.all(12),
            //crearemos una caja donde uno pondrá su usuario
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Username"),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.all(12),
            //crearemos otro donde se pondrá la contraseña
            //el passtoggle lo que hace es que a la hora de poner nuestra contraseña nos permita ocultarla o visualizarla mientras la escribimos
            child: TextField(
              obscureText: passToggle ? true : false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Password"),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: (){
                    if(passToggle == true){
                      passToggle = false;
                    }
                    else{
                      passToggle = true;
                    }
                    setState(() {
                      
                    });
                  },
                  //esta responderá cuando hagamos clic al ícono del ojo y dependiendo de cómo se encuentre, esta se verá o no
                  child: passToggle 
                  ? Icon(CupertinoIcons.eye_slash_fill) 
                  : Icon(CupertinoIcons.eye_fill),
                ),
              ),
            ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                //botón para iniciar sesión con una cuenta
                width: double.infinity,
                child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(10),
                        //este no es un botón funcional
                        child: InkWell(
                          onTap: (){
                            //Navigator.push(context, MaterialPageRoute(
                             //builder: (context) => LoginScreen()
                            //));
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15, 
                              horizontal: 40),
                            child: Center(
                              child: Text("Log In", style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            ),
                        ),
                      ),
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have any account?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
                ),
                TextButton(
                  //este texto de create account nos redirigirá a la pestaña de registrar una cuenta
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                    ));
                  }, 
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7165D6)
                    ),
                    ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
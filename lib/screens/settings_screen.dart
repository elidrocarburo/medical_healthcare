import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//clase para ver la pantalla de configuración, esta es muy simple, ya que sólo muestra opciones comunes en este tipo de pantallas

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    //texto superior para indicar en qué pantalla se encuentra uno
     child: Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
          ),

          //listtile con la información de nuestro perfil y el ícono
          SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/doctor1.jpg"),
            ),
            title: Text(
              "Dr. Doctor Name",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
            ),
            subtitle: Text(
              "Profile"
            ),
          ),
          //el divider es una línea visual para que haya una división entre elemenos
          Divider(height: 50),

          //todos los listtile son las opciones dentro de la pantalla, los cuales son puramente estéticos
          //los parámetros que tocan son los iconos, el tamaño y color, junto con el texto para saber de qué opción se trata y el icono de flecha

          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
                size: 35,
              ),
            ),
            title: Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 35,
              ),
            ),
            title: Text("Notifications",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 35,
              ),
            ),
            title: Text("Privacy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text("General",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.orange,
                size: 35,
              ),
            ),
            title: Text("About Us",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),

          //se pone otro divisor para separar las opciones con el botón para cerrar sesión
          Divider(height: 40),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                shape: BoxShape.circle
              ),
              child: Icon(
                Icons.logout,
                color: Colors.redAccent,
                size: 35,
              ),
            ),
            title: Text("Log Out",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
     ),
   );
  }
}

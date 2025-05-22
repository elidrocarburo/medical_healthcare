import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/widgets/upcoming_schedule.dart';

//clase donde irá nuestra pantalla de nuestro horario de citas: las siguientes en venir, las completadas y las que están canceladas

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  
  //este índice nos ayudará a saber en qué pestaña estamos y que nos despliegue las citas que tengamos en una de las tres secciones
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    UpcomingSchedule(),

    // Completed Widget
    // you can use the same structure of upcomingschedule for complete and canceled widget
    Container(),

    // Canceled Widget
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //texto superior que nos ayuda a saber en qué sección estamos
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500
                ),
              ),
              ),

              //nuestros botones para elegir qué citas queremos ver (las próximas, las completadas y las canceladas)
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        //dependiendo de la que toquemos, nos desplazará de pantalla: si estamos en la de próximas citas, nos mostrará las citas de esa sección
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      child: Container(
                        //esto es puramente estético, ya que dependiendo de la sección en la que nosotros estemos, su recuadro estará resaltado
                        //mientras que los otros dos estarán de otro color
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 0 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 0 ? Colors.white : Colors.black38
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 1 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 1 ? Colors.white : Colors.black38
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 2 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "Canceled",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: _buttonIndex == 2 ? Colors.white : Colors.black38
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              _scheduleWidgets[_buttonIndex],
          ],
        ),
        ),
    );
  }
}
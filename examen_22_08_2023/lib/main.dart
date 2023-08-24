import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 801,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xff41818A)),
                ),
              ),
              Center(
                child: cuadroSuperior(),
              ),
              Center(
                child: contenido(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class contenido extends StatelessWidget {
  const contenido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 219,
                height: 59,
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
          SizedBox(height: 14),
          DatosPersonales(),
          SizedBox(height: 14),
          VideoPresentacion(),
        ],
      ),
    );
  }
}

class cuadroSuperior extends StatelessWidget {
  const cuadroSuperior({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  height: 69,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFF00B4D8)),
                ),
              ),
            ],
          ),
        ]));
  }
}

class DatosPersonales extends StatelessWidget {
  const DatosPersonales({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 311,
        height: 239,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.white),
        child: Stack(children: [
          Positioned(
            top: 0,
            right: 0,
            child: Icon(
              Icons.chat_bubble,
              color: Colors.green[500],
              size: 40,
            ),
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 99,
                      height: 157,
                      child: Image.asset("assets/fotoTutor.png"),
                    ),
                    Text(
                      "Mujer \n23 años \nCursos: \n - Matemática \n - Física \n - Contabilidad",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "PROF. JOHANNA MARGARITA JASON",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    estrella(),
                    estrella(),
                    estrella(),
                    estrella(),
                    estrella(),
                  ],
                ),
              ])),
        ]));
  }
}

class VideoPresentacion extends StatelessWidget {
  const VideoPresentacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 311,
        height: 348,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.white),
        child: Stack(children: [
          Positioned(
            top: 311,
            right: 0,
            child: Icon(
              Icons.keyboard_backspace_outlined,
              color: Colors.green[500],
              size: 40,
            ),
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 203,
                      width: 207,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black),
                      child: Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 90),
                    Text(
                      "HORARIOS DISPONIBLES: \nLUNES A VIERNES: 3:00PM A 6:00PM \nSÁBADOS: 8:00AM A 12:00PM ",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ]))
        ]));
  }
}

class estrella extends StatelessWidget {
  const estrella({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }
}

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Iteso',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Iteso'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network("./foto.jpg"),
              ListTile(
                title: Text("El ITESO, hhhhhg", style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("San Pedro Tlaquepaque, Jal", style: TextStyle(fontWeight: FontWeight.w200),),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: (){
                        },
                        icon: const Icon(Icons.thumb_up),
                      ),
                      Text('5')
                      
                    ],
                  ),
                ),

              ),
              MaterialButton( //Declaramos el boton

                color: Colors.yellow, //Le ponemos color

                child: const Text("Actualizar datos"), //Le ponemos dentro un texto

                onPressed: () { //Creamos una funcioon para cuando lo presionas

                  ScaffoldMessenger.of(context) //Creamos un ScaffoldMessenger para traer snack bar

                    ..hideCurrentSnackBar() //Limpia SnackBars que esten en pantalla

                    ..showSnackBar( //Muestra SnackBar

                      const SnackBar( //Que muestra la SnackBar? Pues ->

                        content: Text("aiuda"), //Muestra un texto el snack bar

                      ),

                    );

                },

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: (){},
                        icon: Icon(Icons.mail),
                      ),
                      Text("Correo"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: (){},
                        icon: Icon(Icons.phone),
                      ),
                      Text("Llamada"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: (){},
                        icon: Icon(Icons.directions),
                      ),
                      Text("Ruta"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 64,),
              Text('''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.
        
        La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''', 
        textAlign: TextAlign.justify,),
            ],
          ),
        ),
      ),
    );
  }
}
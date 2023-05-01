import "package:flutter/material.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Esto funciona',
      home: Home(
        title: 'Ya se kung fu',
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Un container solo puede alojar un hijo, mientras que el column puede alojar varios
      // con ctrl . puedes ver como envolverlo en un c
      //  body: Container(
      //   //Padding en el container
      //   padding: const EdgeInsets.all(10),
      //   child: Image.network(
      //       'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
      // ),
      //Row or column reciben un array de widgets
      // Las columnas y filas reciben todo el alto de la  pantalla por defecto

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            var t = DateTime.now();
            print(t);
          },
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.access_time_filled),
                Text("Now"),
              ]),
        ),
      ),
    );

    // body: Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisSize: MainAxisSize.max,
    //   children: <Widget>[
    //     SizedBox(
    //       height: 50,
    //       width: MediaQuery.of(context).size.width * 0.5,
    //       child: const Text(
    //         'Hola peter',
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     const Text('Hola puto1'),
    //     ElevatedButton(
    //       child: Text('A'),
    //       onPressed: null,
    //     )
    //   ],
    // ));
  }
}

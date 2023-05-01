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
      // con ctrl . puedes ver como envolverlo en un column
      //  body: Container(
      //   //Padding en el container
      //   padding: const EdgeInsets.all(10),
      //   child: Image.network(
      //       'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
      // ),
      body: ListView(
        children: [
          Container(
            //Padding en el container
            padding: const EdgeInsets.all(10),
            child: Image.network(
                'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
          ),
        ],
      ),
    );
  }
}

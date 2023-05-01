import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          //Padding en el container
          padding: const EdgeInsets.all(10),
          child: Image.network(
              'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
        ),
      ],
    );
  }
}

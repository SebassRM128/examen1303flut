import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // Color de las letras del AppBar
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gael Rojas 1303'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Acción al presionar el botón "+"
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildCard("Black Hacker", "https://i.imgur.com/72K720f.png"),
          _buildCard("White Hacker", "https://i.imgur.com/nJ3uB9M.png"),
          _buildCard("Black Company", "https://i.imgur.com/Yw1qj9g.png"),
          _buildCard("Money", "https://i.imgur.com/978Jg3B.png"),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String imageUrl) {
    return Card(
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 180),
              child: Text(title, style: TextStyle(fontSize: 20)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

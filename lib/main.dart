import 'package:flutter/material.dart';
import 'objectbox.dart';

late ObjectBox objectbox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectbox = await ObjectBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 216, 36, 36)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hymn Book MCSPA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final scaffoldKey = GlobalKey<ScaffoldState>();
  String currentSongLyrics = '';
  String currentSongTitle = '';
  //String searchString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(widget.title),
      ),
      // key: scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
              //   child: TextField(
              //     onChanged: (value) {
              //       setState(() {
              //         searchString = value.toLowerCase();
              //       });
              //     },
              //     decoration: InputDecoration(
              //       labelText: 'Search',
              //       suffixIcon: Icon(Icons.search),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              for (var book in objectbox.getAllBooks())
                ExpansionTile(
                  childrenPadding: const EdgeInsets.all(8.0),
                  title: Text(book.title),
                  children: [
                    for (var song in book.songs)
                      ListTile(
                        title: Text(
                          song.title,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        onTap: () {
                          setState(() {
                            currentSongLyrics = song.lyrics;
                            currentSongTitle = song.title;
                            Navigator.pop(context);
                          });
                        },
                      ),
                  ],
                ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  currentSongTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(currentSongLyrics),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

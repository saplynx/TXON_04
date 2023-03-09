import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:NotesApp(),
    );
  }
}

class NotesApp extends StatefulWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: TextStyle(fontSize: 22.0),),
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          NoteCard(),
          NoteCard(),
        ],
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
      width: double.infinity,
      height: 150.0,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Note title', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 8.0,),
                Text('Lorem ipsum', style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


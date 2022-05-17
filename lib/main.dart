import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var word = WordPair.random();
    return MaterialApp(
        title: "Toto",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello World"),
            centerTitle: true,
          ),
          body: const Center(
              child: RandomWords()
          ),
        ));
  }
}


class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  var wordsArray = <WordPair>[];
  var font = const TextStyle(fontSize: 15);

  @override
  Widget build(BuildContext context) {
    var wordsArray = <WordPair>[];

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 20,
      itemBuilder: (context, index) {
        if (index.isOdd) {
          return const Divider();
        }

        final itemIndex = index ~/ 2;
        final wordGenerated = WordPair.random();

        wordsArray.add(wordGenerated);

        return ListTile(
          title: Text(
            wordsArray[itemIndex].asPascalCase,
            style: font,
          ),
        );
      },
    );
  }
}


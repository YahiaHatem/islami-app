import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SureDetails extends StatefulWidget {
  static const String routename = 'sura_details';

  @override
  State<SureDetails> createState() => _SureDetailsState();
}

class _SureDetailsState extends State<SureDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    sureDetailsArgs args =
        (ModalRoute.of(context)?.settings.arguments) as sureDetailsArgs;
    if (verses.isEmpty) readfile(args.index + 1);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'assets/images/default_bg.png',
        ))),
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(args.name),
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
          :Card(
            elevation: 12,
            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 64),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  child:
                  ListView.builder(
                  itemBuilder: (_, index) {
                    return Text(verses[index]);
                  },
                  itemCount: verses.length,
                ),
        ),
        ));
  }

  void readfile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = fileContent.trim().split('\n');

    setState(() {
      verses = lines;
    });
  }
}

class sureDetailsArgs {
  String name;
  int index;

  sureDetailsArgs({
    required this.name,
    required this.index,
  });
}

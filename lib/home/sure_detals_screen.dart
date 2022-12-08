import 'package:flutter/material.dart';
class SureDetails extends StatelessWidget {
  static const String routename='sura_details';


  @override
  Widget build(BuildContext context) {
    sureDetailsArgs args=(ModalRoute.of(context)?.settings.arguments) as sureDetailsArgs;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/default_bg.png',)
    )
    ),
    child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(args.name),
        ),
      ),
    ));
  }
}
class sureDetailsArgs{
  String name;
  int index;
  sureDetailsArgs({
    required this.name,
    required this.index,
});
}

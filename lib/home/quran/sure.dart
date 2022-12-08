
import 'package:flutter/material.dart';
import 'package:islami/home/sure_detals_screen.dart';

class SureTitleWidget extends StatelessWidget {
  String title;
  int index;
  SureTitleWidget(this.title,this.index );


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacementNamed(context,SureDetails.routename ,
        arguments:sureDetailsArgs(name: title, index: index ) );
      },
      child: Container(
        padding:EdgeInsets.all(4),

        alignment: Alignment.center,
        child: Text(
          title,style: TextStyle(
          fontSize: 24
        ),
        ),
      ),
    );
  }
}

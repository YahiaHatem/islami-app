import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sebha/tasbeh_tab.dart';
import 'package:islami/my_them.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png',)
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(child:
          Text('Islami',)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlyselectedindex){
            setState(() {
              selectindex=newlyselectedindex;
            });

          },
          currentIndex:  selectindex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon:const ImageIcon(AssetImage('assets/images/icon_quran.png'
            )),
            label: 'Quran'),
          BottomNavigationBarItem(
              icon:const ImageIcon(AssetImage('assets/images/icon_hadeth.png'
              )),
              label: 'Hadeth'),
          BottomNavigationBarItem(
              icon:const ImageIcon(AssetImage('assets/images/icon_sebha.png'
              )),
              label: 'Tasbeh'),
          BottomNavigationBarItem(
              icon:const ImageIcon(AssetImage('assets/images/icon_radio.png'
              )),
              label: 'Radio'),


        ],),
        body: tabs[selectindex],
      ),
    );
  }
  List<Widget> tabs =[QuranTap(),HadethTap(),SebhaTap(),RadioTap()];
}

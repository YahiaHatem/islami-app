import 'package:flutter/material.dart';
import 'package:islami/home/quran/sure.dart';
class QuranTap extends StatelessWidget {
  List<String>surenames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            flex: 2,
              child: Image.asset('assets/images/qur2an_screen_logo.png')),
          Container(color: Theme.of(context).primaryColor,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text('sura Name',style: TextStyle(
              fontSize: 28
            ),),
          ),
          Container(color: Theme.of(context).primaryColor,
            height: 2,
          ),
          Expanded(
            flex: 5,
            child: ListView.separated(itemBuilder: (_,index){
              return SureTitleWidget(surenames[index],index);
            },itemCount: surenames.length,
            separatorBuilder: (_,index){
              return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 1),

              );
            },),
          )
        ],
      ),

    );
  }
}

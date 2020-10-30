import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles.dart';

class Glossary extends StatefulWidget {
  @override
  _GlossaryState createState() => _GlossaryState();
}

class _GlossaryState extends State<Glossary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('د اصطلاحاتو قاموس', style: Styles.navBarTitle)),backgroundColor: Styles.header1Color),
      body:ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Center(child: Text('ده هوا اندازه کول', style: Styles.header2)),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/currTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('اوسنی تودوخه', style: Styles.textDefault),
              subtitle: Text('د وروستي تازه کولو په وخت کې د تودوخې لوستل', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/humidity.svg',color: Colors.black,height: 35,width: 35),
              title: Text('رطوبت', style: Styles.textDefault),
              subtitle: Text('په هوا کی د اوبو بخاراتو متمرکز سلنه', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/maxTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('د تودوخی لوړه درجه', style: Styles.textDefault),
              subtitle: Text('په تیرو 24 ساعتونو کې د تودوخې لوړه حد لوستل', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/minTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('د تودوخی کښته درجه', style: Styles.textDefault),
              subtitle: Text('په تیرو 24 ساعتونو کې د تودوخې ټیټه حد لوستل', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/precipitation.svg',color: Colors.black,height: 30,width: 30),
              title: Text('باران', style: Styles.textDefault),
              subtitle: Text('په تیرو 24 ساعتونو کې د باران جمع مقدار', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/sunrise.svg',color: Colors.black,height: 40,width: 40),
              title: Text('لمر ختل', style: Styles.textDefault),
              subtitle: Text('د سهار وخت ، کله چې لمر را څرګندیږي یا د ورځې پوره راشي', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/sunset.svg',color: Colors.black,height: 40,width: 40),
              title: Text('لمر لویدل', style: Styles.textDefault),
              subtitle: Text('د ماښام وخت کله چې لمر ورک شي یا د ورځې ختميږي', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_time, size: 36, color: Colors.black),
              title: Text('د لوستلو وخت', style: Styles.textDefault),
              subtitle: Text('هغه وخت چې اندازه یې اخري اخستل شوې وه', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/compass.svg',color: Colors.black,height: 30,width: 30),
              title: Text('د باد لوری', style: Styles.textDefault),
              subtitle: Text('د کمپاس حالت سره مطابق د باد لور', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/wind.svg',color: Colors.black,height: 30,width: 30),
              title: Text('د باد سرعت', style: Styles.textDefault),
              subtitle: Text('د اندازه کولو په وخت کې د هوا سرعت', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              title: Center(child: Text('د هوا حالات', style: Styles.header2)),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/وريځي.png'),
              title: Text('وريځي', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/پاکه هوا.png'),
              title: Text('پاکه هوا', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/کوچنی باران.png'),
              title: Text('کوچنی باران', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/دوړه ، می.png'),
              title: Text('دوړه ، می', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/باراني.png'),
              title: Text('باراني', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/ورېځې.png'),
              title: Text('ورېځې', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/واوره.png'),
              title: Text('واوره', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/طوفانی.png'),
              title: Text('طوفانی', style: Styles.textDefault),
            ),
          ),
        ],
      )
    );
  }
}

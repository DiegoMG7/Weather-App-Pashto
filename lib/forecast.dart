import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/start.dart';
import 'package:weatherapp/today.dart';
import 'package:weatherapp/options.dart';
import 'package:intl/intl.dart';
import 'styles.dart';

class Forecast extends StatefulWidget {

  Forecast({this.weather,this.weatherOW,this.time});
  final weather;
  final weatherOW;
  final time;

  @override
  _ForecastState createState() => _ForecastState();
}

class _ForecastState extends State<Forecast> {

  List<int> weatherCode = List<int>(7);
  List<int> maxTemp = List<int>(7);
  List<int> minTemp = List<int>(7);
  List<String> days = List<String>(7);

  @override
  void initState(){
    super.initState();
    updateUI(widget.weather,widget.weatherOW,widget.time);
  }
  void updateUI(dynamic weather,weatherOW,time){
    var dateAux;

    for(int i = 0; i < 7; i++){
      dateAux = time.add(new Duration(days: i+1));
      weatherCode[i] = (weatherOW['daily'][i]['weather'][0]['id']).toInt();
      maxTemp[i] = (weatherOW['daily'][i]['temp']['max']).toInt();
      minTemp[i] = (weatherOW['daily'][i]['temp']['min']).toInt();
      days[i] = (DateFormat('EEEE').format(dateAux));
    }
    for(int i = 0; i < 7; i++){
      if(days[i] == 'Monday')
        days[i] = 'دو شنبه';
      else if(days[i] == 'Tuesday')
        days[i] = 'سه شنبه';
      else if(days[i] == 'Wednesday')
        days[i] = 'چهار شنبه';
      else if(days[i] == 'Thursday')
        days[i] = 'پنج شنبه';
      else if(days[i] == 'Friday')
        days[i] = 'جمعه';
      else if(days[i] == 'Saturday')
        days[i] = 'شنبه';
      else if(days[i] == 'Sunday')
        days[i] = 'یک شنبه';
    }
  }

  Widget forecastData() => DataTable(
      columns: [
        DataColumn(label: Text('ورځ',style: Styles.textDefault)),
        DataColumn(label: Text('وضیعت',style: Styles.textDefault)),
        DataColumn(label: Text('لوړه',style: Styles.textDefault)),
        DataColumn(label: Text('ټیټ',style: Styles.textDefault)),
      ],
      rows: [
        DataRow(cells:[
          DataCell(Text('${days[0]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[0])}.png'))),
          DataCell(Text('${maxTemp[0]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[0]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[1]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[1])}.png'))),
          DataCell(Text('${maxTemp[1]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[1]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[2]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[2])}.png'))),
          DataCell(Text('${maxTemp[2]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[2]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[3]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[3])}.png'))),
          DataCell(Text('${maxTemp[3]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[3]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[4]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[4])}.png'))),
          DataCell(Text('${maxTemp[4]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[4]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[5]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[5])}.png'))),
          DataCell(Text('${maxTemp[5]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[5]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('${days[6]}',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/images/${getWeatherIcon(weatherCode[6])}.png'))),
          DataCell(Text('${maxTemp[6]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[6]}°C',style: Styles.textDefault)),
        ]),
        /*
        DataRow(cells:[
          DataCell(Text('Max\nTemperature',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/maxTemp.png'))),
          DataCell(Text('${maxTemp[0]}°C',style: Styles.textDefault)),
          DataCell(Text('${maxTemp[1]}°C',style: Styles.textDefault)),
          DataCell(Text('${maxTemp[2]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('Min\nTemperature',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/minTemp.png'))),
          DataCell(Text('${minTemp[0]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[1]}°C',style: Styles.textDefault)),
          DataCell(Text('${minTemp[2]}°C',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('Humidity',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/humidity.png'))),
          DataCell(Text('${humidity[0]}%',style: Styles.textDefault)),
          DataCell(Text('${humidity[1]}%',style: Styles.textDefault)),
          DataCell(Text('${humidity[2]}%',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('Wind\nDirection',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/compass.png'))),
          DataCell(Text('${getWindDir(windDir[0])}',style: Styles.textDefault)),
          DataCell(Text('${getWindDir(windDir[1])}',style: Styles.textDefault)),
          DataCell(Text('${getWindDir(windDir[2])}',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('Wind\nSpeed',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/wind.png'))),
          DataCell(Text('${windSpeed[0]}kph',style: Styles.textDefault)),
          DataCell(Text('${windSpeed[1]}kph',style: Styles.textDefault)),
          DataCell(Text('${windSpeed[2]}kph',style: Styles.textDefault)),
        ]),
        DataRow(cells:[
          DataCell(Text('Precipitation',style: Styles.textDefault)),
          DataCell(Image(image: AssetImage('assets/icons/rain.png'))),
          DataCell(Text('${precipitation[0]}mm',style: Styles.textDefault)),
          DataCell(Text('${precipitation[1]}mm',style: Styles.textDefault)),
          DataCell(Text('${precipitation[2]}mm',style: Styles.textDefault)),

        ]),

         */
      ],
      columnSpacing: 20.0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.settings),
            color: Styles.btn1Color,
            iconSize: 35,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Options(),
                ),
              );
            },
          ),
        title: Center(child: Text('وړاندوینه', style: Styles.navBarTitle)),
        backgroundColor: Styles.header1Color,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),
              child: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.maybePop(context);
                    },
                    child: Image(image: AssetImage('assets/icons/previous.png')),
                  );
                },
              ),
            )
          ]
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(220.0,10.0,0.0,0.0),
              child: Text(                                                                   //name of the App
                'تودوخه',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.9),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Center(child: Expanded(child: SingleChildScrollView(child: forecastData()))),
          ],
        ),
      ),
      backgroundColor: Styles.bColor2,
    );
  }
}

String getWeatherIcon(int code){
  if (code > 199 && code < 233)
    return 'طوفانی';
  else if (code > 299 && code < 322)
    return 'کوچنی باران';
  else if (code > 499 && code < 532)
    return 'باراني';
  else if (code > 599 && code < 623)
    return 'واوره';
  else if (code > 700 && code < 782)
    return 'دوړه ، می';
  else if (code > 799 && code < 802)
    return 'پاکه هوا';
  else if (code == 802)
    return 'ورېځې';
  else if (code > 802 && code < 805)
    return 'وريځي';
}

String getWindDir(int grades){
  String result;
  if(grades >= 12 && grades <= 56)
    result = 'North-\neast';
  else if(grades >= 57 && grades <= 101)
    result = 'East';
  else if(grades >= 102 && grades <= 146)
    result = 'South-\neast';
  else if(grades >= 147 && grades <= 191)
    result = 'South';
  else if(grades >= 192 && grades <= 236)
    result = 'South-\nwest';
  else if(grades >= 237 && grades <= 281)
    result = 'West';
  else if(grades >= 282 && grades <= 326)
    result = 'North-\nwest';
  else {result = 'North';}

  return result;
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:async';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zaman Yönetimi",
      theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.blue,
            onPrimary: Colors.black,


            secondary: Colors.grey,

            onSecondary: Colors.grey,
            background: Colors.grey,
            onBackground: Colors.grey,
            surface: Colors.grey,
            onSurface: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,)
      ),
      home: Temel(),

    );
  }
}
class Temel extends StatelessWidget {
  const Temel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Zaman(),
    );
  }
}

class Zaman extends StatelessWidget {
  const Zaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EisenhowerMatrisi()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[200],
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  "EISENHOWER MATRİSİ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pomodoro()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple[200],
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  "POMODORO TEKNİĞİ",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class EisenhowerMatrisi extends StatefulWidget {
  const EisenhowerMatrisi({Key? key}) : super(key: key);

  @override
  State<EisenhowerMatrisi> createState() => _EisenhowerMatrisiState();
}

class _EisenhowerMatrisiState extends State<EisenhowerMatrisi> {
  String? _selectedOption = 'Hemen başla';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eisenhower Matrisi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Lütfen işinizi aşağıdaki kategorilere göre seçin:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            RadioListTile(
              title: Text(
                'Acil ve Önemli',
                style: TextStyle(fontSize: 16.0),
              ),
              value: 'Hemen başla',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value! as String? ; // null değer kontrolü
                });
              },
            ),

            RadioListTile(
              title: Text(
                'Acil Değil, Önemli',
                style: TextStyle(fontSize: 16.0),
              ),
              value: 'Yapacağın zamanı belirle',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value! as String?;
                });
              },
            ),
            RadioListTile(
              title: Text(
                'Acil, Önemsiz',
                style: TextStyle(fontSize: 16.0),
              ),
              value: 'Başkasına devret',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value! as String?;
                });
              },
            ),
            RadioListTile(
              title: Text(
                'Acil Değil, Önemsiz',
                style: TextStyle(fontSize: 16.0),
              ),
              value: 'İptal Et / Ertele',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value! as String?;
                });
              },
            ),
            SizedBox(height: 20),
            _selectedOption!.isNotEmpty
                ? Text(
              'Seçiminiz: $_selectedOption',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            )
                : Container(),
          ],
        ),
      ),

    );
  }
}


class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text("Pomodoro"),
        foregroundColor: Colors.white,
      ),
      body: TPmdr(),
    );
  }

}
class TPmdr extends StatefulWidget {
  @override
  _TPmdrState createState()=> _TPmdrState();




}

class _TPmdrState extends State<TPmdr> {


  int _seconds = 1500;
  int _initialSeconds = 1500;
  bool _isRunning = false;
  Timer? _timer;



  void _toggleTimer() {
    if (_isRunning) {
      _timer?.cancel();
      setState(() {
        _isRunning = false;
      });
    } else {
      setState(() {
        _isRunning = true;
        _seconds = _initialSeconds;
      });
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (_seconds > 0) {
            _seconds--;
          } else {
            _timer?.cancel();
            _seconds = _initialSeconds;

            Future.delayed(Duration(seconds: 10), () {
              setState(() {
                _isRunning = false;
              });
            });
          }
        });
      });
    }
  }

  String _durationToString(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    );

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _durationToString(Duration(seconds: _seconds)),
            style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.black,
                  elevation: 5,
                  shape:CircleBorder (
                      side: BorderSide(color: Colors.black)


                  ),
                ),
                onPressed: _isRunning ? _toggleTimer : _toggleTimer,

                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    _isRunning ? 'Dur' : 'Başla',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.black),
                    )
                ),
                onPressed: () {
                  setState(() {
                    _seconds = _initialSeconds;
                    _isRunning = false;
                  });
                },

                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Tekrar Başla',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),

              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class StickyNote {
  String text;
  DateTime date;
  Color color;

  StickyNote({
    required this.text,
    required this.date,
    required this.color,
  });
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<StickyNote> _notes = [];

  @override
  void initState() {
    super.initState();

    // Create example notes
    _notes.add(StickyNote(
      text: "Bu bir örnek nottur.",
      date: DateTime.now().subtract(Duration(days: 2)),
      color: Colors.yellow[200]!,
    ));
    _notes.add(StickyNote(
      text: "Bu da bir örnek nottur.",
      date: DateTime.now().subtract(Duration(days: 1)),
      color: Colors.green[200]!,
    ));
    _notes.add(StickyNote(
      text: "Ve son bir örnek not.",
      date: DateTime.now(),
      color: Colors.blue[200]!,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: _notes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  _editNoteModal(context, index);
                },
                child: Card(
                  color: _notes[index].color,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat.yMMMd()
                              .add_jm()
                              .format(_notes[index].date),
                          style: Theme.of(context).textTheme.caption,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _notes[index].text,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNoteModal(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addNoteModal(BuildContext context) async {
    TextEditingController _textController = TextEditingController();
    DateTime _selectedDate = DateTime.now();
    Color _selectedColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)][200]!;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Not Ekle"),
          content: SizedBox(height: 180),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("İptal"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _notes.add(StickyNote(
                    text: _textController.text,
                    date: _selectedDate,
                    color: _selectedColor,
                  ));
                });
                Navigator.pop(context);
              },
              child: const Text("Kaydet"),
            ),
          ],
        );
      },
    );
  }

  void _editNoteModal(BuildContext context, int index) async {
    TextEditingController _textController =
        TextEditingController(text: _notes[index].text);
    DateTime _selectedDate = _notes[index].date;
    Color _selectedColor = _notes[index].color;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Not Düzenle"),
          content: SizedBox(
            height: 180,
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    labelText: "Notunuz",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    _selectDate(context, _selectedDate).then((value) {
                      if (value != null) {
                        setState(() {
                          _selectedDate = value;
                        });
                      }
                    });
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.date_range),
                      const SizedBox(width: 8),
                      Text(DateFormat.yMMMMd().format(_selectedDate)),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<Color>(
                  decoration: const InputDecoration(
                    labelText: "Renk Seçin",
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedColor,
                  onChanged: (Color? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedColor = newValue;
                      });
                    }
                  },
                  items: [
                    DropdownMenuItem<Color>(
                      value: Colors.yellow[200],
                      child: Text("Sarı"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.orange[200],
                      child: Text("Turuncu"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.red[200],
                      child: Text("Kırmızı"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.pink[200],
                      child: Text("Pembe"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.purple[200],
                      child: Text("Mor"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.blue[200],
                      child: Text("Mavi"),
                    ),
                    DropdownMenuItem<Color>(
                      value: Colors.green[200],
                      child: Text("Yeşil"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("İptal"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _notes[index] = StickyNote(
                    text: _textController.text,
                    date: _selectedDate,
                    color: _selectedColor,
                  );
                });
                Navigator.pop(context);
              },
              child: const Text("Kaydet"),
            ),
          ],
        );
      },
    );
  }

  Future<DateTime?> _selectDate(
      BuildContext context, DateTime selectedDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Theme.of(context).primaryColor,
            accentColor: Theme.of(context).primaryColor,
            colorScheme: const ColorScheme.light(primary: Color(0xffE91E63)),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    return picked;
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SecondPage(),
  ));
}

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Vcard(),
    ));

class Vcard extends StatefulWidget {
  @override
  _VcardState createState() => _VcardState();
}

class _VcardState extends State<Vcard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('V card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bf749f55-2160-4c0c-853f-563a74af84a3/d9aphak-4bdd8c72-2101-4990-a77b-60a2fbf8885b.png/v1/fill/w_1024,h_1433,strp/_vector__kakashi_hatake_by_coolez_d9aphak-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD0xNDMzIiwicGF0aCI6IlwvZlwvYmY3NDlmNTUtMjE2MC00YzBjLTg1M2YtNTYzYTc0YWY4NGEzXC9kOWFwaGFrLTRiZGQ4YzcyLTIxMDEtNDk5MC1hNzdiLTYwYTJmYmY4ODg1Yi5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.qfkNZM_3foM9aUrCW8MRtgDlwlNdYdcjGHpW_97nnCE'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Vaibhav',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjalevel',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'vaibhavbhapkar62@gmail',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

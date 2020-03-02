import 'package:flutter/material.dart';

class myProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        height: 1000,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 200,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.indigo,
                    //backgroundImage: AssetImage(''),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                _getName(),
                textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold)
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                _getBio(),
                textAlign: TextAlign.left,
              ),
            ),
        Align(
          alignment: Alignment.topRight,
          child: RaisedButton(
            child: Text("Edit"),
            onPressed: () {
              Navigator.pushNamed(context, '/editProfile');
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}


_getName()  {
  return 'Chloe';
}

_getBio()  {
  return 'Chloe';
}




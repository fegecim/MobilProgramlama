import 'package:flutter/material.dart';

class IkinciEkran extends StatelessWidget {
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text("Alert mesajı."),
          actions: [
            TextButton(
              child: Text("KAPAT",style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Popup"),
          content: Text("Popup mesajı."),
          actions: [
            TextButton(
              child: Text("KAPAT",style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("İkinci Ekran"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showAlert(context),
              child: Text("SHOW ALERT",style: TextStyle(color: Colors.black),),
            ),
            ElevatedButton(
              onPressed: () => _showPopup(context),
              child: Text("SHOW POPUP",style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
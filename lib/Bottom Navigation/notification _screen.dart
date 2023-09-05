import 'package:flutter/material.dart';

class Notication extends StatefulWidget {
  const Notication({super.key});

  @override
  State<Notication> createState() => _NoticationState();
}

class _NoticationState extends State<Notication> {
  String cheakout = 'check in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: 9,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xFF956CE6),
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.timer,color: Colors.white,)                 ),
                // shape: ,
                trailing: Text('2 min ago'),
                
                title: Text(
                  cheakout
                  ,
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text('check in at 10:00'),
              );
            })
            );
  }

}
//   void cheak() {
//     int _value = int.parse(cheakout);
//     String Checkin;

//     if (_value > 0) {
//       Checkin = 'Cheak in';
//     } else {
//       Checkin = 'cheakout';
//     }
//     // cheakout = Checkin;
//   }
// }

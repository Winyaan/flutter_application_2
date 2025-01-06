import 'package:flutter/material.dart';
import 'package:flutter_application_2/charger.dart';
import 'package:flutter_application_2/login.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Winyarit")),
          actions: [
          IconButton(
            icon: const Icon(Icons.arrow_right_alt_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ],
        ),
        body: Column(
          children: [
            Center(child: Image.asset("assets/images/ggt.png")),
            const Text(
              "ขอบคุณที่ใช้บริการ",
              style: TextStyle(fontSize: 30),
            ),
            const Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ"),
            const SizedBox(
              height: 20,
            ),
            const Text("สรุปรายละเอียดการชาร์จ"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text("วันที่ชาร์จ"),
                  ],
                ),
                Text("5 กันยายน 2555")
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text("วันที่ชาร์จ"),
                  ],
                ),
                Text("5 กันยายน 2555")
              ],
            ),
          ],
        ),
        backgroundColor: Colors.yellow,
      );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: Colors.green)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Winyarit")),
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
            )
          ],
        ),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 32, 189, 40)),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Winyarit'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Count Down Winyarit :',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

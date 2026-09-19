Navigation using Navigator:
import 'package:flutter/material.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) { return MaterialApp( title:
'Navigation', theme: ThemeData( colorScheme:
ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
home: MyHomePage(),
);
}
}
class MyHomePage extends StatelessWidget { Widget
build(BuildContext context) { return Scaffold(
appBar: AppBar(title: Text('Welcome to first page')),
body: Center( child: ElevatedButton(
onPressed: () { Navigator.push(
context,
MaterialPageRoute(builder: (context)=> SecondScreen()) );
},
child: Text("Go to Second page")),
),
);
}
}
class SecondScreen extends StatelessWidget { Widget
build(BuildContext context) { return Scaffold( appBar:
AppBar(title: Text("welcome to seconde page")), body:
Center( child: ElevatedButton( onPressed: () {
Navigator.pop(context);
},
child: Text("Go Back")),
),
);
}
}
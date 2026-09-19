2. Navigation with Named Routes:
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) { return MaterialApp( title:
'Named Routes Demo', initialRoute: '/', // The route shown first
when the app starts routes: {
'/': (context) => HomeScreen(),
'/second': (context) => SecondScreen(),
},
);
}
}
// ---------------- First Screen ----------------
class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold( appBar: AppBar(
title: Text('Home Screen'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// Navigate to the named route '/second'
Navigator.pushNamed(context, '/second'); },
child: Text('Go to Second Screen'),
),
),
);
}
}
// ---------------- Second Screen ---------------- class
SecondScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold( appBar: AppBar(
title: Text('Second Screen'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
// Go back to the previous screen
Navigator.pop(context);
},
child: Text('Go Back to Home Screen'), ),
),
);
}
}
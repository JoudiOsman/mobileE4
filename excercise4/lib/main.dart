import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 00, 200)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Schedule Attraction'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      title: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
    body: Stack(
      children: [
        // Background Image
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/park.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
        ),
      ),
    ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Riverside Park",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Text(
                "Catergories",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Text('Picnic', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(width: 10), // Adjust the spacing between elements as needed
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Text('Playground', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Text('Hiking', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50), // Add some spacing 
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "Riverside Park is a perfect location to host seasonable events. The Park offers the following: Floral Clock and Rock Gardens; a fully accessible children’s playground; an outdoor concert shell; an antique carousel; miniature train;horseshoe pits; a sand beach area; trails along the river front; 3 baseball diamonds; a scaled model of the first house built in Guelph by John Galt; and a large and small picnic shelter. A leash free zone located on the east side of the Speed River",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,   
                ),
                textAlign: TextAlign.center, 
              ),
              SizedBox(height: 25), // Add some spacing
              Text(
                "Address",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "709 Woolwich St, Guelph",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25), // Add some spacing
              Text(
                "Cost",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "Free",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text('Add', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}

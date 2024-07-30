import 'package:design_test/provider/user_provider.dart';
import 'package:design_test/utiles/color_res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = false;
  String textCont =  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.';

  String viewMoreText ='View More';
   String viewLessText ='View Less';

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(builder: (context, userProvider, child) {
      return Scaffold(
        backgroundColor: ColorSource.white,
        appBar: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_outlined,
              color: ColorSource.black,
              size: 24,
            ),
          ),
          backgroundColor: ColorSource.white,
          title: Text(
            "Profile Details",
            style: TextStyle(
                color: ColorSource.black,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 2,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Adjust the value for the square corners
                              child: Image.network(
                                'https://via.placeholder.com/150',
                                width: 90.0, // Width of the square image
                                height: 85.0, // Height of the square image
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Since 2001',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: ColorSource.black_light),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 10.0), // Space between the image and the text
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '&Name1',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                        color: ColorSource.black),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            color: ColorSource.light_purple,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(
                                                    50) //                 <--- border radius here
                                                ),
                                          ),
                                          height: 28,
                                          width: 28,
                                          child: InkWell(
                                            child: Icon(
                                              Icons.messenger_outline,
                                              color: ColorSource.black,
                                              size: 18,
                                            ),
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: ColorSource.light_purple,
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(
                                                    50) //                 <--- border radius here
                                                ),
                                          ),
                                          height: 28,
                                          width: 28,
                                          child: InkWell(
                                            child: Icon(
                                              Icons.call_outlined,
                                              color: ColorSource.black,
                                              size: 18,
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: ColorSource.grey.withOpacity(.2),
                                height: 1,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '10 Year of Experience ',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                    color: ColorSource.black),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: ColorSource.search_text,
                                    size: 14,
                                  ),
                                  Text(
                                    'Landmark, City, State',
                                    style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        color: ColorSource.search_text),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                decoration: BoxDecoration(
                  color: ColorSource.white,
                  border: Border.all(
                    color: ColorSource.category_button, // Border color
                    width: 1.0, // Border width
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(
                          10) //                 <--- border radius here
                      ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '&Name1',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: ColorSource.black),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.light_purple,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 28,
                            width: 28,
                            child: InkWell(
                              child: Icon(
                                Icons.messenger_outline,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.light_purple,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 28,
                            width: 28,
                            child: InkWell(
                              child: Icon(
                                Icons.call_outlined,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.light_purple,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 28,
                            width: 28,
                            child: InkWell(
                              child: Icon(
                                Icons.call_outlined,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.light_purple,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 28,
                            width: 28,
                            child: InkWell(
                              child: Icon(
                                Icons.call_outlined,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.search_border.withOpacity(.5),
                              borderRadius: const BorderRadius.all(Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 45,
                            width: 45,
                            child: InkWell(
                              child: Icon(
                                Icons.message,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(height: 8,),
                        Text(
                          '24 Hours',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.black),
                        ),
                        Text(
                          'Responded',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.grey),
                        ),

                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.search_border.withOpacity(.5),
                              borderRadius: const BorderRadius.all(Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 45,
                            width: 45,
                            child: InkWell(
                              child: Icon(
                                Icons.badge,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(height: 8,),
                        Text(
                          '80%',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.black),
                        ),
                        Text(
                          'Responded',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.grey),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: ColorSource.search_border.withOpacity(.5),
                              borderRadius: const BorderRadius.all(Radius.circular(
                                      50) //                 <--- border radius here
                                  ),
                            ),
                            height: 45,
                            width: 45,
                            child: InkWell(
                              child: Icon(
                                Icons.badge,
                                color: ColorSource.black,
                                size: 18,
                              ),
                            )),
                        SizedBox(height: 8,),
                        Text(
                          "10+",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.black),
                        ),
                        Text(
                          'Experience',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: ColorSource.grey),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Abouts',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: ColorSource.black),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: ColorSource.grey),
                        maxLines: isExpanded ? null : 5,
                        overflow: TextOverflow.fade,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? viewLessText : viewMoreText,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Working Time',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: ColorSource.black),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Monday- Friday, 08:00 AM - 18:00 Pm",
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: ColorSource.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      8.0), // Adjust the value for the square corners
                  child: Image.network(
                    'https://i.sstatic.net/HILmr.png',
                    width: MediaQuery.of(context).size.width, // Width of the square image
                    height: 200, // Height of the square image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

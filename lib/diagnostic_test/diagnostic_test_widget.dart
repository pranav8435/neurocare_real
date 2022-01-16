// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:http/http.dart' as http;
// import 'package:neuro_care_test/alzheimers_positive/alzheimers_positive_widget.dart';
// import 'package:neuro_care_test/no_disease/no_disease_widget.dart';
//
// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ));
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List<PlatformFile>? _files;
//   bool isLoading = false;
//   void _uploadFile() async {
//     //TODO replace the url bellow with you ipv4 address in ipconfig
//     setState(() {
//       isLoading = true;
//     });
//     var uri = Uri.parse('http://961c-209-169-75-126.ngrok.io/upload');
//     var request = http.MultipartRequest('POST', uri);
//     request.files.add(await http.MultipartFile.fromPath(
//         'files[]', _files!.first.path.toString()));
//     var streamedResponse = await request.send();
//     var response = await http.Response.fromStream(streamedResponse);
//     if (response.statusCode == 201) {
//       setState(() {
//         isLoading = false;
//       });
//       print('Uploaded ...');
//       print(response.body);
//       final Map decodedJSON = json.decode(response.body);
//       var dict = decodedJSON;
//       var diagnosticvalue = (dict["message"]);
//       if (diagnosticvalue == "1") {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => AlzheimersPositiveWidget()));
//       } else {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => NoDiseaseWidget()));
//       }
//     } else {
//       print('Something went wrong!');
//     }
//   }
//
//   void _openFileExplorer() async {
//     _files = (await FilePicker.platform.pickFiles(
//             type: FileType.any, allowMultiple: false, allowedExtensions: null))!
//         .files;
//
//     print('Loaded file path is : ${_files!.first.path}');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final ButtonStyle style = ElevatedButton.styleFrom(
//         primary: Color(0xff372bb7),
//         textStyle: TextStyle(fontSize: 24),
//         minimumSize: Size.fromHeight(50),
//         shape: StadiumBorder(side: BorderSide(width: 2)));
//     return Scaffold(
//       backgroundColor: Color(0xff1a1f24),
//       appBar: AppBar(
//         backgroundColor: Color(0xff372bb7),
//         centerTitle: true,
//         title: Text('Diagnostic Test'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           alignment: Alignment.center,
//           padding: EdgeInsets.all(32),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image(
//                 image: new AssetImage(
//                     'assets/images/NeuroCare diagnostic Image.png'),
//               ),
//
//               const SizedBox(
//                 width: 100.0,
//                 height: 200.0,
//               ),
//               ElevatedButton(
//                   onPressed: _openFileExplorer,
//                   style: style,
//                   child: Text('Record Audio')),
//               const SizedBox(
//                 width: 100.0,
//                 height: 10.0,
//               ),
//               ElevatedButton(
//                   style: style,
//                   onPressed: _openFileExplorer,
//                   child: Text('Open File Explorer')),
//               const SizedBox(
//                 width: 100.0,
//                 height: 10.0,
//               ),
//               ElevatedButton(
//                   style: style,
//                   onPressed: _uploadFile,
//                   child: isLoading
//                       ? Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                               SizedBox(
//                                 width: 20,
//                                 height: 20,
//                                 child: CircularProgressIndicator(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 24,
//                               ),
//                               Text("Processing Data...",
//                                   style: TextStyle(fontSize: 20.0))
//                             ])
//                       : Text('Upload File')),
//               // onPressed:(){if (isLoading) return;
//               //           setState(()=> isLoading = true);
//             ],
//             // onPressed: _uploadFile,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class FirstScreen extends StatefulWidget {
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Alzheimer's LMAO"),
//       ),
//       body: RaisedButton(
//         child: Text("Go back"),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatefulWidget {
//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }
//
// class _SecondScreenState extends State<SecondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("U SAFE"),
//       ),
//       body: RaisedButton(
//         child: Text("Go back"),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:neuro_care_test/alzheimers_positive/alzheimers_positive_widget.dart';
import 'package:neuro_care_test/no_disease/no_disease_widget.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<PlatformFile>? _files;
  bool isLoading = false;
  void _uploadFile() async {
    //TODO replace the url bellow with you ipv4 address in ipconfig

    setState(() {
      isLoading = true;
    });
    {
      Timer(Duration(seconds: 5), () {
        setState(() {
          isLoading = false;
        });
        // 5 seconds over, navigate to Page2.
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => AlzheimersPositiveWidget()));
      });
    }
    // var uri = Uri.parse('http://a6bc-209-169-75-126.ngrok.io/upload');
    // var request = http.MultipartRequest('POST', uri);
    // request.files.add(await http.MultipartFile.fromPath(
    //     'files[]', _files!.first.path.toString()));
    // var streamedResponse = await request.send();
    // var response = await http.Response.fromStream(streamedResponse);
    // if (response.statusCode == 201) {
    //   setState(() {
    //     isLoading = false;
    //   });
    //   print('Uploaded ...');
    //   print(response.body);
    //   final Map decodedJSON = json.decode(response.body);
    //   var dict = decodedJSON;
    //   var diagnosticvalue = (dict["message"]);
    //   if (diagnosticvalue == "1") {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => AlzheimersPositiveWidget()));
    //   } else {
    //     Navigator.push(context,
    //         MaterialPageRoute(builder: (context) => NoDiseaseWidget()));
    //   }
    // } else {
    //   print('Something went wrong!');
    // }
  }

  void _openFileExplorer() async {
    _files = (await FilePicker.platform.pickFiles(
            type: FileType.any, allowMultiple: false, allowedExtensions: null))!
        .files;

    print('Loaded file path is : ${_files!.first.path}');
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Color(0xff372bb7),
        textStyle: TextStyle(fontSize: 24),
        minimumSize: Size.fromHeight(50),
        shape: StadiumBorder(side: BorderSide(width: 2)));
    return Scaffold(
      backgroundColor: Color(0xff1a1f24),
      appBar: AppBar(
        backgroundColor: Color(0xff372bb7),
        centerTitle: true,
        title: Text('Diagnostic Test'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: new AssetImage(
                    'assets/images/NeuroCare diagnostic Image.png'),
              ),

              const SizedBox(
                width: 100.0,
                height: 200.0,
              ),
              ElevatedButton(
                  onPressed: _openFileExplorer,
                  style: style,
                  child: Text('Record Audio')),
              const SizedBox(
                width: 100.0,
                height: 10.0,
              ),
              ElevatedButton(
                  style: style,
                  onPressed: _openFileExplorer,
                  child: Text('Open File Explorer')),
              const SizedBox(
                width: 100.0,
                height: 10.0,
              ),
              ElevatedButton(
                  style: style,
                  onPressed: _uploadFile,
                  //   {Timer(Duration(seconds: 5), () {
                  //   // 5 seconds over, navigate to Page2.
                  //   Navigator.push(context, MaterialPageRoute(builder: (_) => AlzheimersPositiveWidget()));
                  // });
                  // },
                  child: isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Text("Processing Data...",
                                  style: TextStyle(fontSize: 20.0))
                            ])
                      : Text('Upload File')),
              // onPressed:(){if (isLoading) return;
              //           setState(()=> isLoading = true);
            ],
            // onPressed: _uploadFile,
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alzheimer's LMAO"),
      ),
      body: RaisedButton(
        child: Text("Go back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("U SAFE"),
      ),
      body: RaisedButton(
        child: Text("Go back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

// // // import 'dart:convert';
// // // import 'package:flutter/material.dart';
// // // import 'package:file_picker/file_picker.dart';
// // // import 'package:http/http.dart' as http;
// // //
// // // class threeDFiles extends StatefulWidget {
// // //   @override
// // //   State<threeDFiles> createState() => _threeDFiles();
// // // }
// // //
// // // class _threeDFiles extends State<threeDFiles> {
// // //   List<PlatformFile>? _files;
// // //   bool is3dLoading = false;
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // TODO: implement build
// // //     throw UnimplementedError();
// // //   }
// // // }
// // //
// // // void _upload3dFile() async {
// // //   //TODO replace the url bellow with you ipv4 address in ipconfig
// // //   var uri = Uri.parse('http://9035-66-170-201-42.ngrok.io/upload_3d');
// // //   var request = http.MultipartRequest('POST', uri);
// // //   request.files.add(await http.MultipartFile.fromPath(
// // //       'files[]', _files!.first.path.toString()));
// // //   var streamedResponse = await request.send();
// // //   var response = await http.Response.fromStream(streamedResponse);
// // //   if (response.statusCode == 201) {
// // //     print('Uploaded ...');
// // //     print(response.body);
// // //     final Map decodedJSON = json.decode(response.body);
// // //     var dict = decodedJSON;
// // //     var diagnostic3dvalue = (dict["message"]);
// // //     print(diagnostic3dvalue);
// // //   }
// // // }
// // // void _openFileExplorer() async {
// // //   _files = (await FilePicker.platform.pickFiles(
// // //       type: FileType.any, allowMultiple: false, allowedExtensions: null))!
// // //       .files;
// // //
// // //   print('Loaded file path is : ${_files!.first.path}');
// // // }
// // //
// // // // @override
// // // // Widget build(BuildContext context) {
// // // //   final ButtonStyle style = ElevatedButton.styleFrom(
// // // //       textStyle: TextStyle(fontSize: 24),
// // // //       minimumSize: Size.fromHeight(50),
// // // //       shape: StadiumBorder(side: BorderSide(width: 2)));
// // // //   return Scaffold(
// // // //     appBar: AppBar(
// // // //       centerTitle: true,
// // // //       title: Text('File Upload'),
// // // //     ),
// // // //     body: Container(
// // // //       alignment: Alignment.center,
// // // //       padding: EdgeInsets.all(32),
// // // //       child: Column(
// // // //         mainAxisAlignment: MainAxisAlignment.center,
// // // //         children: [
// // // //           ElevatedButton(
// // // //               style: style,
// // // //               onPressed: _openFileExplorer,
// // // //               child: Text('Open File Explorer')),
// // // //           const SizedBox(
// // // //             width: 100.0,
// // // //             height: 10.0,
// // // //           ),
// // // //           ElevatedButton(
// // // //               style: style,
// // // //               onPressed: _upload3dFile,
// // // //               child:
// // // //                   Row(
// // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                   children: [
// // // //                     SizedBox(
// // // //                       width: 20,
// // // //                       height: 20,
// // // //                       child: CircularProgressIndicator(
// // // //                         color: Colors.white,
// // // //                       ),
// // // //                     ),
// // // //                     const SizedBox(
// // // //                       width: 24,
// // // //                     ),
// // // //                     Text("Processing Data...",
// // // //                         style: TextStyle(fontSize: 20.0))
// // // //                   ])
// // // //           // onPressed:(){if (isLoading) return;
// // // //           //           setState(()=> isLoading = true);
// // // //
// // // //         // onPressed: _uploadFile,
// // // //       ),
// // // //     ),
// // // //   );
// // // // }
// // // //
// // // import 'dart:convert';
// // // import 'package:flutter/material.dart';
// // // import 'package:file_picker/file_picker.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:neuro_care_test/alzheimers_positive/alzheimers_positive_widget.dart';
// // // import 'package:neuro_care_test/no_disease/no_disease_widget.dart';
// // //
// // // void main() => runApp(MaterialApp(
// // //       home: ywa(),
// // //     ));
// // //
// // // class ywa extends StatefulWidget {
// // //   @override
// // //   State<ywa> createState() => _ywa();
// // // }
// // //
// // // class _ywa extends State<ywa> {
// // //   List<PlatformFile>? _files;
// // //   bool isLoading = false;
// // //   void _upload3dFile() async {
// // //     //TODO replace the url bellow with you ipv4 address in ipconfig
// // //     setState(() {
// // //       isLoading = true;
// // //     });
// // //     var uri = Uri.parse('http://9035-66-170-201-42.ngrok.io/upload_threed');
// // //     var request = http.MultipartRequest('POST', uri);
// // //     request.files.add(await http.MultipartFile.fromPath(
// // //         'files[]', _files!.first.path.toString()));
// // //     var streamedResponse = await request.send();
// // //     var response = await http.Response.fromStream(streamedResponse);
// // //     if (response.statusCode == 201) {
// // //       setState(() {
// // //         isLoading = false;
// // //       });
// // //       print('Uploaded ...');
// // //       print(response.body);
// // //     }
// // //   }
// // //
// // //   void _open3dFileExplorer() async {
// // //     _files = (await FilePicker.platform.pickFiles(
// // //             type: FileType.any, allowMultiple: false, allowedExtensions: null))!
// // //         .files;
// // //
// // //     print('Loaded file path is : ${_files!.first.path}');
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final ButtonStyle style = ElevatedButton.styleFrom(
// // //         primary: Color(0xff372bb7),
// // //         textStyle: TextStyle(fontSize: 24),
// // //         minimumSize: Size.fromHeight(50),
// // //         shape: StadiumBorder(side: BorderSide(width: 2)));
// // //     return Scaffold(
// // //       backgroundColor: Color(0xff1a1f24),
// // //       appBar: AppBar(
// // //         backgroundColor: Color(0xff372bb7),
// // //         centerTitle: true,
// // //         title: Text('Setup NeuroCare AR'),
// // //       ),
// // //       body: Container(
// // //         alignment: Alignment.center,
// // //         padding: EdgeInsets.all(32),
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             ElevatedButton(
// // //                 style: style,
// // //                 onPressed: _open3dFileExplorer,
// // //                 child: Text('Open File Explorer')),
// // //             const SizedBox(
// // //               width: 100.0,
// // //               height: 10.0,
// // //             ),
// // //             ElevatedButton(
// // //                 style: style,
// // //                 onPressed: _upload3dFile,
// // //                 child: isLoading
// // //                     ? Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                             SizedBox(
// // //                               width: 20,
// // //                               height: 20,
// // //                               child: CircularProgressIndicator(
// // //                                 color: Colors.white,
// // //                               ),
// // //                             ),
// // //                             const SizedBox(
// // //                               width: 24,
// // //                             ),
// // //                             Text("Processing Data...",
// // //                                 style: TextStyle(fontSize: 20.0))
// // //                           ])
// // //                     : Text('Upload 3D File')),
// // //             // onPressed:(){if (isLoading) return;
// // //             //           setState(()=> isLoading = true);
// // //           ],
// // //           // onPressed: _uploadFile,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // import 'package:flutter/material.dart';
// //
// // class MultiSelectionExample extends StatefulWidget {
// //   List<Movie> favoriteMovies;
// //
// //   MultiSelectionExample(this.favoriteMovies);
// //
// //   @override
// //   _MultiSelectionExampleState createState() => _MultiSelectionExampleState();
// // }
// //
// // class _MultiSelectionExampleState extends State<MultiSelectionExample> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color(0xff372bb7),
// //         centerTitle: true,
// //         title: Text('Setup NeuroCare AR'),
// //       ),
// //       body: ListView.builder(
// //         itemBuilder: (ctx, index) {
// //           return GestureDetector(
// //             behavior: HitTestBehavior.opaque,
// //             onTap: () {
// //               widget.favoriteMovies[index].isSelected =
// //                   !widget.favoriteMovies[index].isSelected;
// //               setState(() {});
// //             },
// //             child: Container(
// //               color: widget.favoriteMovies[index].isSelected
// //                   ? Colors.green[100]
// //                   : null,
// //               child: Row(
// //                 children: <Widget>[
// //                   Checkbox(
// //                       value: widget.favoriteMovies[index].isSelected,
// //                       onChanged: (s) {
// //                         widget.favoriteMovies[index].isSelected =
// //                             !widget.favoriteMovies[index].isSelected;
// //                         setState(() {});
// //                       }),
// //                   Text(widget.favoriteMovies[index].movieName)
// //                 ],
// //               ),
// //             ),
// //           );
// //         },
// //         itemCount: widget.favoriteMovies.length,
// //       ),
// //     );
// //   }
// // }
// //
// // class Movie {
// //   Movie(this.movieName);
// //
// //   String movieName;
// //   bool isSelected = false;
// // }
// //
// // List<Movie> favoriteMovies = [
// //   Movie('Washing Machine'),
// //   Movie('Stove'),
// //   Movie('Tea kettle'),
// //   Movie('Dishwasher'),
// //   Movie('Microwave')
// // ];
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({required Key key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List data = [
//     'Tuna',
//     'Meat',
//     'Smoked Chicken',
//     'Salmon',
//     'Olives',
//     'Mozzarella',
//     'Parmesan',
//     'Sausage'
//   ];
//   List selectedItemsList = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             child: Text(
//               'Order',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//           ),
//           SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             child: Text(
//               'Selected add-ons:',
//               style: Theme.of(context).textTheme.bodyText2,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             child: Wrap(children: [
//               for (var item = 0; item < selectedItemsList.length; item++)
//                 Container(
//                   margin: EdgeInsets.only(right: 8, top: 8),
//                   padding: EdgeInsets.only(right: 4),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       color: Theme.of(context).accentColor.withOpacity(0.3)),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                           padding: EdgeInsets.all(4),
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Theme.of(context)
//                                   .accentColor
//                                   .withOpacity(0.3)),
//                           child: Icon(
//                             Icons.restaurant_menu,
//                             color: Theme.of(context).accentColor,
//                             size: 20,
//                           )),
//                       SizedBox(width: 4),
//                       Text(selectedItemsList[item].toString()),
//                       SizedBox(width: 4),
//                       InkWell(
//                           child: Icon(
//                             Icons.close,
//                             size: 18,
//                             color: Theme.of(context).accentColor,
//                           ),
//                           onTap: () {
//                             setState(() {
//                               selectedItemsList.remove(selectedItemsList[item]);
//                             });
//                           })
//                     ],
//                   ),
//                 ),
//             ]),
//           ),
//           Divider(
//               color: Theme.of(context).accentColor.withOpacity(0.6),
//               endIndent: 16,
//               thickness: 1,
//               indent: 16),
//           SizedBox(height: 16),
//           Expanded(
//             child: ListView.builder(
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     onTap: () => selectTappedItem(index),
//                     title: Text('${data[index]}',
//                         style: Theme.of(context).textTheme.bodyText1),
//                     leading: Container(
//                       padding: EdgeInsets.all(8),
//                       decoration: selectedItemsList.contains(data[index])
//                           ? BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Theme.of(context)
//                                   .accentColor
//                                   .withOpacity(0.8))
//                           : BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Theme.of(context)
//                                   .accentColor
//                                   .withOpacity(0.3)),
//                       child: !selectedItemsList.contains(data[index])
//                           ? Icon(Icons.restaurant_menu)
//                           : Icon(Icons.check, color: Colors.white),
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void selectTappedItem(int index) {
//     if (selectedItemsList.contains(data[index])) {
//       setState(() {
//         selectedItemsList.remove(data[index]);
//       });
//       print(selectedItemsList);
//     } else {
//       setState(() {
//         selectedItemsList.add(data[index]);
//       });
//       print(selectedItemsList);
//     }
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> makePostRequest() async {
    final url = Uri.parse('http://a6bc-209-169-75-126.ngrok.io/setup_AR');
    final headers = {"Content-type": "application/json"};
    final json = jsonEncode(availableHobbies);
    final response = await post(url, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }

  // Generate a list of available hobbies here
  List<Map> availableHobbies = [
    {"name": "Foobball", "isChecked": false},
    {"name": "Baseball", "isChecked": false},
    {
      "name": "Video Games",
      "isChecked": false,
    },
    {"name": "Readding Books", "isChecked": false},
    {"name": "Surfling The Internet", "isChecked": false}
  ];

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Color(0xff372bb7),
        textStyle: TextStyle(fontSize: 24),
        minimumSize: Size.fromHeight(50),
        shape: StadiumBorder(side: BorderSide(width: 2)));
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup NeuroCare AR'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),

            // The checkboxes will be here
            Column(
                children: availableHobbies.map((hobby) {
              return CheckboxListTile(
                  value: hobby["isChecked"],
                  title: Text(hobby["name"]),
                  onChanged: (newValue) {
                    setState(() {
                      hobby["isChecked"] = newValue;
                    });
                  });
            }).toList()),
            ElevatedButton(
              onPressed: makePostRequest,
              child: Text('POST'),
            ),
            // Display the result here
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Wrap(
              children: availableHobbies.map((hobby) {
                if (hobby["isChecked"] == true) {
                  print(availableHobbies);
                  return Card(
                    elevation: 3,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(hobby["name"]),
                    ),
                  );
                }
                return Container();
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}

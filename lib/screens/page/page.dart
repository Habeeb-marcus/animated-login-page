import 'dart:convert';
import 'dart:developer';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
// import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:login_page/helpers/colors.dart';
import 'package:login_page/helpers/size_calculator.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import '../../providers/note.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

// const htmlData = jsonData;

class _NotesState extends State<Notes> {
var _isInit = true;


@override
void initState() {
  // Provider.of<Note>(context).fetchNote();
  Future.delayed(Duration.zero).then((_) => Provider.of<Note>(context).fetchNote());
  super.initState();
}

// @override
// void didChangeDependencies() {
//   if(_isInit) {
//     Provider.of<Note>(context).fetchNote();
//   }
//   _isInit = false;
//   super.didChangeDependencies();
// }

  // void fetchPosts() async {
  //   try {
  //     final response = await get(url);
  //     final jsonData = jsonDecode(response.body) as List;
  //     print(jsonData);
  //     setState(() {
  //       _postsJson = jsonData;
  //     });
  //   } catch (err) {}
  // }

  // @override
  // void initState(){
  //   super.initState();
  //   fetchPosts();
  // }

  @override
  Widget build(BuildContext context) {
    //  fetchNote();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[50],
        // backgroundColor: Colors.amber ,
        // toolbarHeight: 90.0,
        title: Text(
          'Welcome to Note',
          style: TextStyle(
              color: Colors.black,
              fontSize: sizer(true, 14, context),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/images/noteIcon.svg')),
          SizedBox(width: 20.0),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 13, 13, 13),
            child: RaisedButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 0,
              color: AppColors.greenColor,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/whiteShareIcon.svg',
                width: sizer(true, 14, context),
              ),
              label: Text(
                'Share 🤗',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: sizer(true, 13, context),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),


      
      body: Container(
          child: Column(children: [
        Text('let us get this thing YA ALLAH'),
        //   ListView.builder(
        // itemCount: _postsJson.length,
        // itemBuilder: (context, i){
        //   final post = _postsJson[i];
        //   return SelectableText(
        //     '{$post["body"]}'
        //   );
        // }
        // ),

        Center(
          child: Text(
            'God pls help us this time again make we get once',
            style: TextStyle(color: Colors.amber),
          ),
        ),

        Text('$post'),

        // Container(
        //   child: FutureBuilder(
        //       future: getNote(),
        //       builder: (context, snapshot) {
        //         if (snapshot.data == null) {
        //           return Container(
        //             child: Center(
        //               child: Text('Loading...'),
        //             ),
        //           );
        //         }
        //       }),
        // )
      ])),
    );
  }
}

class Note {
  void fetchNote() {}
}

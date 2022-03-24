// import 'dart:_http';
import 'dart:convert';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;




class Note extends ChangeNotifier {
static get id => null;

Future<void> fetchNote() async {
   final url = Uri.parse('https://med-backend-api-stagging.herokuapp.com/api/v1/notes/one/$id');
        try{
          final response = await http.get(url,  
          headers: {
          HttpHeaders.authorizationHeader: 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXlsb2FkIjp7ImVtYWlsIjoiYXNxdWFyZUBnbWFpbC5jb20iLCJkZXZpY2UiOiJ0ZXN0In0sImlhdCI6MTY0NTQ4NjQ5MSwiZXhwIjoxNjQ2NzgyNDkxfQ.PiYVx3htukaq-4qle8EnHNGztCNGHX2-0rKh2XQyafs',
        },
      );
        final responseJson = jsonDecode(response.body);
        // return Note.fromJson(responseJson);
        print(json.decode(response.body));

        } catch(error) {
          throw(error);
        }
}

  static Future<void> fromJson(responseJson) async {}

  // static Future<void> fromJson(responseJson) {}

    
}
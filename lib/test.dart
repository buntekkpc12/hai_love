import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('rean api'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user.email;
          final phone = user.phone;
          final color = user.gender == 'male' ? Colors.yellow : Colors.cyan;
          return ListTile(
            title: Text(email),
            subtitle: Text(phone),
            tileColor: color,
          );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }
  
  void fetchUsers() async {
    print('fetchUsers called');
    const url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    
    final transformed = results.map((e) {
      final name = UserName (
      title: e['name']['title'],
      first: e['name']['first'],
      last: e['name']['last'],
    );
        return User(
          cell: e['cell'],
          email:  e['email'],
          gender: e['gender'],
          phone: e['phone'],
          nat: e['nat'],
          name: name,
        );
      }).toList();
    setState(() {
      users = transformed;
    });
  }
}
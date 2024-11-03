import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            'Privy App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/123.jfif',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'My Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'MY WORKS',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.volume_down,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: const Text(
                        'Clean Design',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: const Text(
                    'Lorem Ipsum is not simply random text. It has roots in sdafasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfa piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.lock_clock_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: const Text(
                        'Community builder',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: const Text(
                    'Lorem Ipsum is not simply random text. It has roots in a sadfasdfasdfasdfasdfasdfasdfasdffsad of classical Latin literature from 45 BC, making it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.account_box_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: const Text(
                        'Maximum Query Solved',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: const Text(
                    'Lorem Ipsum is not simply random text. It has roots in a asdfasdfasdfasdfasdfasdfasdfasdf of classical Latin literature from 45 BC, making it over 2000 years old.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

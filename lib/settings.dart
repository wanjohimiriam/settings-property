
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double slidervalue= 10.0;
  var dev_width;
  var dev_height;
  @override
  Widget build(BuildContext context) {
    var dev_width = MediaQuery.of(context).size.width;
    var dev_height = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 29, 28),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white38,
                  ),
                ),
                Text(
                  "Home Screen",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ]),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: dev_height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        
                            // Text("OG - Whats App",
                            //     style: TextStyle(
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 26)),
                            child :Text(
                                "fdygiduchkjgpilskaxjbn ertyuikjmnertyuikjhcfgbvcdfrtyujnbvcftyujnbvfghnbvfghgdushidljskhcbjxn,lkoiuygtfrdfcvbnmlkiuytrtyuiolkjhgftfyjhvcfrtyuilkjhcydslk,xznb",
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: slidervalue,
                                ),)
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 44, 42, 42),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: dev_height * 2.55,
                      width: dev_width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 44, 42, 42),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "MODS",
                              style: TextStyle(
                                  color: Colors.white10,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Photos Corners",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                Text("100r",
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 12))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("0:Square- 100:Round",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Slider(
                            value: slidervalue,
                            onChanged: (value) {
                              setState((){
                                slidervalue = value;
                              });
                            },
                            min: 0.0,
                            max: 30.0,
                            inactiveColor: Colors.white10,
                            activeColor: Colors.green,
                          
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Confirm Before Sending Status",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Switch(
                                  value: false,
                                  activeColor: Colors.white,
                                  onChanged: (_) {},
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("View Story Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Know Immediately when anyone view our status by Toast message",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("Hide Chats Divider",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Remove grey line between chats in Main Screen",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("Disable Contact Online Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "It is enabled by default! Turn on if you dont want Online Toats",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("RingTone Contact Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Ringtone to play when contact goes online",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact Online Toast Location",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                    Text("Top",
                                        style: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 12)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Forward Settings",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ])),
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            title: Text("View Story Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Know Immediately when anyone view our status by Toast message",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("View Story Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Know Immediately when anyone view our status by Toast message",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Divider(
                              height: 1,
                              color: Colors.white10,
                            ),
                          ),
                          ListTile(
                            title: Text("View Story Toast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            subtitle: Text(
                                "Know Immediately when anyone view our status by Toast message",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12)),
                            trailing: Switch(value: false, onChanged: (_) {}),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ));
  }
}

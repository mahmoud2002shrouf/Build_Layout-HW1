import 'package:build_layout/data/data.dart';
import 'package:build_layout/model/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  "Center",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _getContaner(
                    Colors.blue.shade500,
                    Colors.black38,
                    Column(
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              Text(
                                userDataModel.name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Icon(
                                Icons.edit_note_sharp,
                                color: Colors.white,
                              )
                            ],
                          ),
                          subtitle: Text(
                            userDataModel.job,
                            style: const TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(userDataModel.image),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (int i = 0;
                                  i < userDataModel.data.length;
                                  i++)
                                _getColum(userDataModel.data[i].title,
                                    userDataModel.data[i].num),
                            ],
                          ),
                        )
                      ],
                    ),
                    15),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < WorkData.length; i++)
                      _getServes(WorkData[i].icon, WorkData[i].title,
                          num: WorkData[i].subTitle)
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: serviseData.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _getContaner(
                        Colors.white,
                        Colors.purple.shade200,
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: serviseData[index].color,
                            child: Icon(
                              serviseData[index].icon,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            serviseData[index].title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(serviseData[index].subTitle,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.grey),
                        ),
                        7),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getContaner(
      Color colors, Color shadoColor, Widget child, double padding) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: shadoColor,
                    blurRadius: 20,
                    offset: const Offset(2, 2))
              ]),
          child: child,
        ),
      ],
    );
  }

  Widget _getColum(String text, String num) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          num,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _getServes(IconData icon, String text, {String? num}) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 25,
              child: Icon(
                icon,
                color: Colors.black,
              ),
            ),
            num != null
                ? Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.blue.shade300,
                      child: Text(
                        num,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 10),
                      ),
                    ))
                : Container()
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        )
      ],
    );
  }
}

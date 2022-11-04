import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/charcos/charcos_family_details.dart';

class CharcosFamilyDisplayDetails extends StatelessWidget {
  final CharcosFamilyDetails famDetails7;

  const CharcosFamilyDisplayDetails(this.famDetails7, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(6, 25, 84, 1.0),
            title: Text(famDetails7.name),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/poly_wallpaper.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 10,
          height: 400,
          width: 390,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.elliptical(170.0, 170.0),
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [

                  Color.fromRGBO(221, 214, 243, 1.0),
                  Color.fromRGBO(250, 172, 168, 1.0),
                ],
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(4.0, 6.0),
                  blurRadius: 8.0,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                  margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 80.0),
                      ),
                      Text(':${famDetails7.name}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                  margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      const Text(
                        'Relationship',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 18.0),
                      ),
                      Text(':${famDetails7.relationship}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                  margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      const Text(
                        'Occupation',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 34.0),
                      ),
                      Text(':${famDetails7.occupation}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                  margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      const Text(
                        'Birthday',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 50.0),
                      ),
                      Text(':${famDetails7.birthday}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                  margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      const Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 88.0),
                      ),
                      Text(':${famDetails7.age}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                          decoration: TextDecoration.none,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 100,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 4.0),
                  blurRadius: 8.0,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: (famDetails7.imageUrl),
            ),
          ),
        ),
        Positioned(
          top: 570,
          left: 300,
          height: 100,
          width: 100,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 4.0),
                  blurRadius: 8.0,
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
        ),
      ],
    );
  }
}



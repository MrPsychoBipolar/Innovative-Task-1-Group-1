import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_family_details_display.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_family_details.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_family_details.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_family_details_display.dart';
import 'cabaluna/cabaluna_details.dart';
import 'cabaluna/cabaluna_details_display.dart';
import 'charcos/charcos_family_details.dart';
import 'charcos/charcos_family_details_display.dart';
import 'dignadice/dignadice_details.dart';
import 'dignadice/dignadice_details_display.dart';
import 'maiso/maiso_family_details.dart';
import 'maiso/maiso_family_details_display.dart';
import 'virtudes/virtudes_family_details.dart';
import 'virtudes/virtudes_family_details_display.dart';

class PrimaryAppLayout extends StatefulWidget {
  const PrimaryAppLayout({Key? key}) : super(key: key);

  @override
  State<PrimaryAppLayout> createState() => _PrimaryAppLayoutState();
}

class _PrimaryAppLayoutState extends State<PrimaryAppLayout>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 5.0, color: Colors.lightBlue),
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1.0, 2.0),
                  blurRadius: 2.0,
                ),
              ],
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
        ),
        title: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              text: 'Innovative task 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nGroup 1',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          tabs: const [
            Tab(
              child: Text('Nanli',
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
            Tab(
              child: Text('Kyla', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Denver', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Dwyne', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Roi', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('James', style: TextStyle(fontSize: 20)),
            ),
            Tab(
              child: Text('Arjay', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/poly_wallpaper_2.jpg'),
              fit: BoxFit.cover),
        ),
        child: TabBarView(
          controller: tabController,
          children: [
            //NANLI DANVIR D. VIRTUDES' LIST VIEW =====================================

            ListView.builder(
              itemCount: famList1.length,
              itemBuilder: (context, index) {
                VirtudesFamilyDetails famDetails1 = famList1[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails1.imageUrl),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails1.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails1.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VirtudesFamilyDisplayDetails(
                                              famDetails1)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            //  KYLA MARTINITO'S LIST VIEW =====================================

            ListView.builder(
              itemCount: familyList2.length,
              itemBuilder: (context, index) {
                MartinitoFamilia famDetails2 = familyList2[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails2.photo),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails2.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            subtitle: Text(famDetails2.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MartinitoFamDisp(famDetails2)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            // JOHN DENVER MAISO'S LISTVIEW =====================================

            ListView.builder(
              itemCount: familyList3.length,
              itemBuilder: (context, index) {
                MaisoFamilyDetails famDetails3 = familyList3[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails3.picture),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails3.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails3.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MaisoFamilyDisplayDetails(
                                              famDetails3)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            // DWYNE KIRK B. TIRASOL'S LIST VIEW =====================================

            ListView.builder(
              itemCount: familyList4.length,
              itemBuilder: (context, index) {
                TirasolFamilyDetails famDetails4 = familyList4[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails4.pics),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails4.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails4.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TirasolFamilyDisplayDetails(
                                              famDetails4)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            // ROI JENVER B. CABALUNA'S LIST VIEW ===============================================

            ListView.builder(
              itemCount: familyList5.length,
              itemBuilder: (context, index) {
                CabalunaFamilyDetails famDetails5 = familyList5[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails5.imageUrl),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails5.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails5.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CabalunaFamilyDisplayDetails(
                                              famDetails5)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            // JAMES HANS BARON DIGNADICE'S LIST VIEW =====================================

            ListView.builder(
              itemCount: familyList6.length,
              itemBuilder: (context, index) {
                DignadiceFamilyDetails famDetails6 = familyList6[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails6.imageUrl),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails6.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails6.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DignadiceFamilyDisplayDetails(
                                              famDetails6)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),

            //ARJAY AUDIENCIA CHARCOS' LIST VIEW ===============================

            ListView.builder(
              itemCount: familyList7.length,
              itemBuilder: (context, index) {
                CharcosFamilyDetails famDetails7 = familyList7[index];
                return Container(
                  padding:
                      const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(200, 162, 200, 1),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.purple,
                                    offset: Offset(2.0, 4.0),
                                    blurRadius: 8.0,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(3.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(221, 160, 221, 1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails7.imageUrl),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails7.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails7.relationship),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CharcosFamilyDisplayDetails(
                                              famDetails7)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

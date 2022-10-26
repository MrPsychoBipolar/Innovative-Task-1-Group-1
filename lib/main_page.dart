import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_fam_disp.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_familia.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_mydet.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_mydet_disp.dart';

import 'cabaluna/cabaluna_details.dart';
import 'cabaluna/cabaluna_details_display.dart';
import 'charcos/charcos_family_details.dart';
import 'charcos/charcos_family_details_display.dart';
import 'dignadice/dignadice_details.dart';
import 'dignadice/dignadice_details_display.dart';
import 'maiso/maiso_fam_det.dart';
import 'maiso/maiso_fam_det_disp.dart';
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
              child: Text('Nanli', style: TextStyle(fontSize: 20,)),
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
            ListView.builder(
              itemCount: famList1.length,
              itemBuilder: (context, index) {
                VirtudesFamilyDetails famDetails = famList1[index];
                return Container(
                  padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 229, 180, 0.5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.elliptical(70.0, 40.0),
                              bottomRight: Radius.elliptical(70.0, 40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)
                          ),
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
                                color: Color.fromRGBO(200, 162, 200,1),
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
                                  color: Color.fromRGBO(221,160,221,1),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: (famDetails.imageUrl),
                                ),
                              ),
                            ),
                            title: Text(
                              famDetails.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(famDetails.relationship),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VirtudesFamilyDisplayDetails(
                                              famDetails)));
                            }),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: mFam.length,
              itemBuilder: (context, index) {
                MartinitoFamilia familia = mFam[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (familia.photo),
                        ),
                      ),
                      title: Text(familia.name),
                      subtitle: Text(familia.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MartinitoFamDisp(familia)));
                      }),
                );
              },
            ),
            ListView.builder(
              itemCount: famList2.length,
              itemBuilder: (context, index) {
                MaisoFamilyDetails famiDetails = famList2[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (famiDetails.picture),
                        ),
                      ),
                      title: Text(famiDetails.name),
                      subtitle: Text(famiDetails.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MaisoFamilyDisplayDetails(famiDetails)));
                      }),
                );
              },
            ),
            ListView.builder(
              itemCount: famList3.length,
              itemBuilder: (context, index) {
                TirasolFamilyDetails familDetails = famList3[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (familDetails.pics),
                        ),
                      ),
                      title: Text(familDetails.name),
                      subtitle: Text(familDetails.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TirasolFamilyDisplayDetails(familDetails)));
                      }),
                );
              },
            ),
            ListView.builder(
              itemCount: famList5.length,
              itemBuilder: (context, index) {
                CabalunaFamilyDetails famDetails5 = famList5[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (famDetails5.imageUrl),
                        ),
                      ),
                      title: Text(famDetails5.name),
                      subtitle: Text(famDetails5.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CabalunaFamilyDisplayDetails(famDetails5)));
                      }),
                );
              },
            ),
            //
            ListView.builder(
              itemCount: famList4.length,
              itemBuilder: (context, index) {
                DignadiceFamilyDetails famDetails3 = famList4[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: (famDetails3.imageUrl),
                        ),
                      ),
                      title: Text(famDetails3.name),
                      subtitle: Text(famDetails3.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DignadiceFamilyDisplayDetails(
                                        famDetails3)));
                      }),
                );
              },
            ),
            ListView.builder(
              itemCount: famList7.length,
              itemBuilder: (context, index) {
                CharcosFamilyDetails famDetails7 = famList7[index];
                return Card(
                  child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundImage: (famDetails7.imageUrl),
                          radius: 30,
                        ),
                      ),
                      title: Text(famDetails7.name),
                      subtitle: Text(famDetails7.relationship),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CharcosFamilyDisplayDetails(famDetails7)));
                      }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/cabaluna/cabaluna_details.dart';
import 'package:innovative_task_1_group_1/cabaluna/cabaluna_details_display.dart';
import 'package:innovative_task_1_group_1/charcos/charcos_family_details.dart';
import 'package:innovative_task_1_group_1/charcos/charcos_family_details_display.dart';
import 'package:innovative_task_1_group_1/dignadice/dignadice_details.dart';
import 'package:innovative_task_1_group_1/dignadice/dignadice_details_display.dart';
import 'package:innovative_task_1_group_1/maiso/maiso_family_details.dart';
import 'package:innovative_task_1_group_1/maiso/maiso_family_details_display.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_family_details.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_family_details_display.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_family_details.dart';
import 'package:innovative_task_1_group_1/tirasol/tirasol_family_details_display.dart';
import 'package:innovative_task_1_group_1/virtudes/virtudes_family_details.dart';
import 'package:innovative_task_1_group_1/virtudes/virtudes_family_details_display.dart';

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
        backgroundColor: const Color.fromRGBO(3, 168, 243, 1.0),
        leading: Container(
          margin: const EdgeInsets.only(left: 4.0, top: 4.0, bottom: 4.0),
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
        title: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              text: 'Innovative task 1',
              style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(4.0, 2.0),
                    blurRadius: 2.0,
                    color: Color.fromRGBO(0, 62, 199, 0.9),
                  ),
                  Shadow(
                    offset: Offset(4.0, 2.0),
                    blurRadius: 2.0,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ],
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
          indicatorColor: Colors.pink,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          controller: tabController,
          tabs: const [
            Tab(
              child: Text(
                'Nanli Virtudes',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Kyla Martinito',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Denver Maiso',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Dwyne Tirasol',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Roi Cabaluna',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'James Dignadice',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Arjay Charcos',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
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
            //NANLI DANVIR D. VIRTUDES' LIST VIEW ==============================
            virtudesListView(),
            //  KYLA MARTINITO'S LIST VIEW =====================================
            martinitoListView(),
            // JOHN DENVER MAISO'S LISTVIEW ====================================
            maisoListView(),
            // DWYNE KIRK B. TIRASOL'S LIST VIEW ===============================
            tirasolListView(),
            // ROI JENVER B. CABALUNA'S LIST VIEW ==============================
            cabalunaListView(),
            // JAMES HANS BARON DIGNADICE'S LIST VIEW ==========================
            dignadiceListView(),
            //ARJAY AUDIENCIA CHARCOS' LIST VIEW ===============================
            charcosListView(),
          ],
        ),
      ),
    );
  }
}

ListView virtudesListView() {
  return ListView.builder(
    itemCount: famList1.length,
    itemBuilder: (context, index) {
      VirtudesFamilyDetails famDetails1 = famList1[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails1.imageUrl),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails1.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails1.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                parent: animation,
                                curve: Curves.elasticInOut,
                              );

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return VirtudesFamilyDisplayDetails(famDetails1);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView martinitoListView() {
  return ListView.builder(
    itemCount: familyList2.length,
    itemBuilder: (context, index) {
      MartinitoFamilia famDetails2 = familyList2[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails2.photo),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails2.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails2.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return MartinitoFamDisp(famDetails2);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView maisoListView() {
  return ListView.builder(
    itemCount: familyList3.length,
    itemBuilder: (context, index) {
      MaisoFamilyDetails famDetails3 = familyList3[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails3.picture),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails3.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails3.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return MaisoFamilyDisplayDetails(famDetails3);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView tirasolListView() {
  return ListView.builder(
    itemCount: familyList4.length,
    itemBuilder: (context, index) {
      TirasolFamilyDetails famDetails4 = familyList4[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails4.pics),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails4.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails4.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return TirasolFamilyDisplayDetails(famDetails4);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView cabalunaListView() {
  return ListView.builder(
    itemCount: familyList5.length,
    itemBuilder: (context, index) {
      CabalunaFamilyDetails famDetails5 = familyList5[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails5.imageUrl),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails5.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails5.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return CabalunaFamilyDisplayDetails(famDetails5);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView dignadiceListView() {
  return ListView.builder(
    itemCount: familyList6.length,
    itemBuilder: (context, index) {
      DignadiceFamilyDetails famDetails6 = familyList6[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails6.imageUrl),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails6.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails6.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return DignadiceFamilyDisplayDetails(famDetails6);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

ListView charcosListView() {
  return ListView.builder(
    itemCount: familyList7.length,
    itemBuilder: (context, index) {
      CharcosFamilyDetails famDetails7 = familyList7[index];
      return Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Container(
              decoration: listTileBoxDecoration(),
              child: ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: circleAvatar1stContainerDesign(),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: circleAvatar2ndContainerDesign(),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: (famDetails7.imageUrl),
                      ),
                    ),
                  ),
                  title: Text(
                    famDetails7.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    famDetails7.relationship,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: const Duration(seconds: 1),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut);

                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return CharcosFamilyDisplayDetails(famDetails7);
                            }));
                  }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

BoxDecoration listTileBoxDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(221, 214, 243, 0.8),
        Color.fromRGBO(250, 172, 168, 0.8),
      ],
    ),
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
  );
}

BoxDecoration circleAvatar1stContainerDesign() {
  return const BoxDecoration(
    shape: BoxShape.circle,
    color: Color.fromRGBO(200, 162, 200, 1),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.purple,
        offset: Offset(2.0, 4.0),
        blurRadius: 8.0,
      ),
    ],
  );
}

BoxDecoration circleAvatar2ndContainerDesign() {
  return const BoxDecoration(
    shape: BoxShape.circle,
    color: Color.fromRGBO(221, 160, 221, 1),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black,
        blurRadius: 2.0,
      ),
    ],
  );
}

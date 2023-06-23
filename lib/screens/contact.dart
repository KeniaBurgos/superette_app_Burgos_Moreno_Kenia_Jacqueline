import 'package:flutter/material.dart';
import 'package:superetteapp/theme/app_theme.dart';
import 'package:superetteapp/screens/myheaderdrawer.dart';
import 'package:superetteapp/screens/login.dart';
import 'package:superetteapp/screens/home.dart';
import 'package:superetteapp/screens/departaments.dart';
import 'package:superetteapp/screens/setting.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({
    super.key,
  });
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: Text(
          "Superette",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: Card(
          child: ListTile(
            title: Text(
              "Contactos \n\n • Facebook: \n Superette Mx \n • Instagram: \n @superettemx \n • Tiktok: \n Superette Mx | @superettemx",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "Inicio",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.home_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.account_circle_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => LogInScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Departamentos",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.shopping_cart_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            DepartamentsScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Contacto",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.call_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ContactScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Ajustes",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.settings_outlined),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SettingsScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

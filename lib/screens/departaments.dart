import 'package:flutter/material.dart';
import 'package:superetteapp/screens/availablent.dart';
import 'package:superetteapp/screens/cereal.dart';
import 'package:superetteapp/theme/app_theme.dart';
import 'package:superetteapp/screens/myheaderdrawer.dart';
import 'package:superetteapp/screens/login.dart';
import 'package:superetteapp/screens/home.dart';
import 'package:superetteapp/screens/contact.dart';
import 'package:superetteapp/screens/setting.dart';

class DepartamentsScreen extends StatefulWidget {
  const DepartamentsScreen({
    super.key,
  });
  _DepartamentsScreenState createState() => _DepartamentsScreenState();
}

class _DepartamentsScreenState extends State<DepartamentsScreen> {
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
      body: Center(
          child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Card(
            child: TextButton(
              child: Text(
                "Marcas Registradas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CerealScreen()));
              },
            ),
          ),
          Card(
            child: TextButton(
              child: Text(
                "Frutas y Verduras",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AvailablentScreen()));
              },
            ),
          ),
          Card(
            child: TextButton(
              child: Text(
                "Panaderia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AvailablentScreen()));
              },
            ),
          ),
          Card(
            child: TextButton(
              child: Text(
                "Aseo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AvailablentScreen()));
              },
            ),
          ),
          Card(
            child: TextButton(
              child: Text(
                "Licoreria",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AvailablentScreen()));
              },
            ),
          ),
          Card(
            child: TextButton(
              child: Text(
                "Higiene y Belleza",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primary,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AvailablentScreen()));
              },
            ),
          ),
        ],
      )),
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

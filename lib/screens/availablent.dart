import 'package:flutter/material.dart';
import 'package:superetteapp/theme/app_theme.dart';
import 'package:superetteapp/screens/myheaderdrawer.dart';
import 'package:superetteapp/screens/login.dart';
import 'package:superetteapp/screens/home.dart';
import 'package:superetteapp/screens/departaments.dart';
import 'package:superetteapp/screens/contact.dart';
import 'package:superetteapp/screens/setting.dart';

class AvailablentScreen extends StatefulWidget {
  const AvailablentScreen({
    super.key,
  });
  _AvailablentScreenState createState() => _AvailablentScreenState();
}

class _AvailablentScreenState extends State<AvailablentScreen> {
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
        child: AlertDialog(
          title: Text('Inhabilitado'),
          content: Text(
              'Por el momento esta pagina no se encuentra disponible\n¡Vuelve mas tarde!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => DepartamentsScreen()));
              },
              child: Text(
                'Ok',
                style: TextStyle(color: AppTheme.primary),
              ),
            ),
          ],
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

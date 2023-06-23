import 'package:flutter/material.dart';
import 'package:superetteapp/theme/app_theme.dart';
import 'package:superetteapp/screens/myheaderdrawer.dart';
import 'package:superetteapp/screens/login.dart';
import 'package:superetteapp/screens/home.dart';
import 'package:superetteapp/screens/departaments.dart';
import 'package:superetteapp/screens/contact.dart';
import 'package:superetteapp/screens/setting.dart';

class CerealScreen extends StatefulWidget {
  const CerealScreen({
    super.key,
  });
  _CerealScreenState createState() => _CerealScreenState();
}

class _CerealScreenState extends State<CerealScreen> {
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
          crossAxisSpacing: 0,
        ),
        children: [
          Card(
            child: Image.asset('assets/chirius.png'),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Nestle Cheerios® \n\n Estado:\nDisponible. \n\nPrecio: \n& 59.00 mx",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //----------------------------------
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Kellogg's ChocoKrispis® \n\n Estado:\nNo disponible. \n\nPrecio: \n- \n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            child: Image.asset('assets/chocoprispis.jpg'),
          ),
          //------------------------------
          Card(
            child: Image.asset('assets/frutilupis.png'),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Kellogg's FrootLoops® \n\n Estado:\nDisponible. \n\nPrecio: \n& 79.00 mx",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //------------------------------
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Nestle CookieCrisp® \n\n Estado:\nDisponible. \n\nPrecio: \n& 69.99 mx \n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            child: Image.asset('assets/galletitas.png'),
          ),
          //------------------------------
          Card(
            child: Image.asset('assets/zucaritas.png'),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Kellogg's Zucaritas® \n\n Estado:\nDisponible. \n\nPrecio: \n& 79.00 mx",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //------------------------------
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "Nestle Nesquik® \n\n Estado:\nDisponible. \n\nPrecio: \n& 80.00 mx \n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            child: Image.asset('assets/necuic.png'),
          ),
          //------------------------------
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

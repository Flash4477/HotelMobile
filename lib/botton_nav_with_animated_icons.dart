// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// const Color bottomNavBgColor = Color.fromARGB(255, 255, 255, 255);

// class BottomNavWithAnimatedIcons extends StatefulWidget {
//   const BottomNavWithAnimatedIcons({super.key});

//   @override
//   State<BottomNavWithAnimatedIcons> createState() =>
//       _BottomNavWithAnimatedIconsState();
// }

// class _BottomNavWithAnimatedIconsState
//     extends State<BottomNavWithAnimatedIcons> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _getSelectedPage(),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: bottomNavBgColor.withOpacity(0.8),
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Account',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }

//   Widget _getSelectedPage() {
//     switch (_selectedIndex) {
//       case 0:
//         return const Text('Home Page');
//       case 1:
//         return const Text('Business Page');
//       case 2:
//         return const Text('School Page');
//       default:
//         return const Text('Home Page');
//     }
//   }
// }

import 'Homepage/SearchPage.dart';
import 'Homepage/AccountPage.dart';
import 'Homepage/HomePage.dart';
import 'package:flutter/material.dart';

const Color bottomNavBgColor = Color.fromARGB(255, 255, 255, 255);

void main() {
  runApp(
    MaterialApp(
      home: BottomNavWithAnimatedIcons(),
      routes: {
        '/home': (context) =>  HomePage(),
        '/search': (context) =>  SearchPage(),
        '/account': (context) => const AccountPage(),
      },
    ),
  );
}

class BottomNavWithAnimatedIcons extends StatefulWidget {
  const BottomNavWithAnimatedIcons({super.key});

  @override
  State<BottomNavWithAnimatedIcons> createState() =>
      _BottomNavWithAnimatedIconsState();
}

class _BottomNavWithAnimatedIconsState
    extends State<BottomNavWithAnimatedIcons> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/search');
        break;
      case 2:
        Navigator.pushNamed(context, '/account');
        break;
      default:
        Navigator.pushNamed(context, '/home');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getSelectedPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomNavBgColor.withOpacity(0.8),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return  SearchPage();
      case 2:
        return  AccountPage();
      default:
        return  HomePage();
    }
  }
}

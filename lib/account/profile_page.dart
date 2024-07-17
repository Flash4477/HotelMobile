import 'package:flutter/material.dart';
import 'account_settings_page.dart';
import 'security_settings_page.dart';
import 'orders_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, size: 30),
                ),
                SizedBox(width: 10),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            SizedBox(height: 30),
            buildOption(
              icon: Icons.settings,
              label: 'Thiết lập tài khoản',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountSettingsPage()),
                );
              },
            ),
            SizedBox(height: 10),
            buildOption(
              icon: Icons.lock,
              label: 'Bảo mật tài khoản',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecuritySettingsPage()),
                );
              },
            ),
            SizedBox(height: 10),
            buildOption(
              icon: Icons.shopping_cart,
              label: 'Các đơn hàng đã đặt',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption({required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(icon, color: Colors.black),
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PersonalDataPage extends StatelessWidget {
  PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dữ liệu cá nhân'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildPersonalDataItem('Dữ liệu cá nhân', '', isTitle: true),
            buildPersonalDataItem('Tên đầy đủ', 'Name'),
            Divider(thickness: 1, color: Colors.grey),
            buildPersonalDataItem('Giới tính', 'Nam'),
            Divider(thickness: 1, color: Colors.grey),
            buildPersonalDataItem('Ngày sinh', '01/01/2003'),
            Divider(thickness: 1, color: Colors.grey),
            buildPersonalDataItem('Địa chỉ', 'Quận Tân Bình, TP.HCM'),
            Divider(thickness: 1, color: Colors.grey),
            buildPersonalDataItem('Số điện thoại', '0375098325'),
            Divider(thickness: 1, color: Colors.grey),
            buildPersonalDataItem('Email', 'viet12e@gmail.com'),
            Divider(thickness: 1, color: Colors.grey),
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Text(
                'Đây là địa chỉ email dùng để đăng nhập và nhận các thông báo',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPersonalDataItem(String title, String value, {bool isTitle = false}) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (value.isNotEmpty)
            Text(
              value,
              style: TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}

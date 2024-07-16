import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Thanh Toán'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Đặt phòng của bạn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/background.png', // Đảm bảo đường dẫn hình ảnh chính xác
              width: 377,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beach Resort Lux',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Divider(height: 32, thickness: 1),
            _buildInfoRow('Giờ nhận phòng:', '4/11/2020 (02:00 PM)'),
            _buildInfoRow('Giờ trả phòng:', '5/11/2020 (12:00 A.M)'),
            _buildInfoRow('Loại phòng:', 'Standard King Room'),
            _buildInfoRow('Số khách:', '1 khách 1 giường'),
            _buildInfoRow('Giá:', '1480\$'),
            _buildInfoRow('Tên Khách:', 'Khoa Nguyễn'),
            _buildInfoRow('Email:', 'Kalekhoa@gmail.com'),
            _buildInfoRow('Số điện thoại:', '(+84)798908122'),
            Divider(height: 32, thickness: 1),
            _buildInfoRow('Tổng:', '1490\$'),
            Text(
              'Bao Gồm Thuế',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                _showPaymentDialog(context);
              },
              child: Container(
                height: 70,
                width: 390,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 29, 33, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Thanh Toán",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  void _showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Hình Thức Thanh Toán')),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Xử lý thêm phương thức thanh toán
                  Navigator.of(context).pop();
                },
                child: Text('THÊM PHƯƠNG THỨC THANH TOÁN'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  // Xử lý trả khi nhận phòng
                  Navigator.of(context).pop();
                },
                child: Text('TRẢ KHI NHẬN PHÒNG'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Đóng dialog
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'order_details_page.dart';  // Import OrderDetailsPage

class OrdersPage extends StatelessWidget {
  OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Các đơn hàng đã đặt'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildOrderCard(
            imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
            hotelName: 'Khách sạn A',
            roomType: 'Loại phòng: Deluxe',
            time: 'Thời gian: 01/01/2024 - 02/01/2024',
            price: 'Giá: 2,000,000 VND',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailsPage(
                    imageUrl: 'https://via.placeholder.com/150',
                    hotelName: 'Khách sạn A',
                    roomType: 'Deluxe',
                    checkInTime: '01/01/2024',
                    checkOutTime: '02/01/2024',
                    price: '2,000,000 VND',
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 16.0),
          buildOrderCard(
            imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
            hotelName: 'Khách sạn B',
            roomType: 'Loại phòng: Standard',
            time: 'Thời gian: 03/01/2024 - 04/01/2024',
            price: 'Giá: 1,500,000 VND',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailsPage(
                    imageUrl: 'https://via.placeholder.com/150',
                    hotelName: 'Khách sạn B',
                    roomType: 'Standard',
                    checkInTime: '03/01/2024',
                    checkOutTime: '04/01/2024',
                    price: '1,500,000 VND',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildOrderCard({
    required String imageUrl,
    required String hotelName,
    required String roomType,
    required String time,
    required String price,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(roomType),
                  SizedBox(height: 8.0),
                  Text(time),
                  SizedBox(height: 8.0),
                  Text(price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

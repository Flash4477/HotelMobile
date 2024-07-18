import 'package:flutter/material.dart';


class HotelBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beach Resort Lux'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // handle back button press
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/room.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Standard King Room',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Refundable'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.free_breakfast),
                SizedBox(width: 8),
                Text('Breakfast included'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.wifi),
                SizedBox(width: 8),
                Text('Wi-Fi'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.ac_unit),
                SizedBox(width: 8),
                Text('Air Conditioner'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.bathtub),
                SizedBox(width: 8),
                Text('Bath'),
              ],
            ),
            // Spacer(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$1480',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '2 nights',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // handle select button press
                },
                child: Text('Select'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  textStyle: TextStyle(fontSize: 18, ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

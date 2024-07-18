import 'package:flutter/material.dart';
import 'package:hotel_des/pages/booking.dart';


class HotelBookingPage extends StatelessWidget {
  const HotelBookingPage({super.key});

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
                'acess/background.jpg',
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
              children: const [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8),
                Text('Refundable'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.free_breakfast),
                SizedBox(width: 8),
                Text('Breakfast included'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.wifi),
                SizedBox(width: 8),
                Text('Wi-Fi'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.ac_unit),
                SizedBox(width: 8),
                Text('Air Conditioner'),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: const [
                Icon(Icons.bathtub),
                SizedBox(width: 8),
                Text('Bath'),
              ],
            ),
            // Spacer(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
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
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingPage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 369,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 1.0,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Select",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
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
}

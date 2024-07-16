

// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildHeader(),
//             _buildSearchCard(),
//             _buildSuggestedDestinations(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Text(
//         'Tìm nơi nghỉ dưỡng phù hợp cho bạn',
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchCard() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.grey[300],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           children: [
//             _buildLocationRow(),
//             _buildDivider(),
//             _buildDateRow(),
//             _buildDivider(),
//             _buildGuestRoomRow(),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Tìm phòng'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildLocationRow() {
//     return Row(
//       children: [
//         Icon(Icons.location_on, color: Colors.white),
//         const SizedBox(width: 16),
//         Expanded(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: 'Hochiminh City, Vietnam',
//               border: InputBorder.none,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDateRow() {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Icon(Icons.calendar_today, color: Colors.white),
//             const SizedBox(width: 16),
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Thứ 2, 14/3/2022',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             Icon(Icons.nights_stay, color: Colors.white),
//             const SizedBox(width: 16),
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: '1 Đêm',
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             const SizedBox(width: 32),
//             Text(
//               'Trả Phòng: Thứ 3, 14/3/2022',
//               style: TextStyle(color: Colors.white),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildGuestRoomRow() {
//     return Row(
//       children: [
//         Icon(Icons.person, color: Colors.white),
//         const SizedBox(width: 16),
//         Expanded(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: '1 Khách',
//               border: InputBorder.none,
//             ),
//           ),
//         ),
//         Icon(Icons.bed, color: Colors.white),
//         const SizedBox(width: 16),
//         Expanded(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: '1 Giường',
//               border: InputBorder.none,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDivider() {
//     return const Divider(
//       color: Colors.white,
//       height: 20,
//       thickness: 1,
//     );
//   }

//   Widget _buildSuggestedDestinations() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Gợi Ý Điểm Đến',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 16),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 _buildDestinationCard('Beach Resort Lux', 'Waikiki, 4.1 miles from center', 'Ocean View 1 king Bed\nNo prepayment', '\$720', 4.5),
//                 const SizedBox(width: 16),
//                 _buildDestinationCard('Hotel Standard', 'San Francisco, 1.2 miles from center', 'Standard Room\nFree cancellation', '\$650', 4.0),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDestinationCard(String title, String location, String details, String price, double rating) {
//     return Card(
//       child: Container(
//         width: 250,
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
//             const SizedBox(height: 8),
//             Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 8),
//             Text(location, style: TextStyle(color: Colors.grey)),
//             const SizedBox(height: 8),
//             Text(details, style: TextStyle(color: Colors.grey)),
//             const SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 Row(
//                   children: [
//                     Icon(Icons.star, color: Colors.amber, size: 16),
//                     Text(rating.toString(), style: TextStyle(color: Colors.amber)),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Hotel Booking',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: HomePage(),
// //     );
// //   }
// // }



// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String _location = 'Hochiminh City, Vietnam';
//   String _checkInDate = 'Thứ 2, 14/3/2022';
//   String _checkOutDate = 'Thứ 3, 15/3/2022';
//   String _duration = '1 Đêm';
//   int _guests = 1;
//   int _beds = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text('Tìm nơi nghỉ dưỡng phù hợp cho bạn'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               _buildSearchRow(Icons.location_on, _location, () {
//                 // Implement location selection
//               }),
//               _buildDivider(),
//               _buildSearchRow(Icons.calendar_today, _checkInDate, () {
//                 _selectDate(context, true);
//               }),
//               _buildSearchRow(Icons.calendar_today, _checkOutDate, () {
//                 _selectDate(context, false);
//               }),
//               _buildDivider(),
//               _buildSearchRow(Icons.nights_stay, _duration, () {
//                 _selectDuration(context);
//               }),
//               _buildDivider(),
//               _buildSearchRow(Icons.person, '$_guests Khách | $_beds Giường', () {
//                 _selectGuests(context);
//               }),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Tìm phòng'),
//               ),
//               const SizedBox(height: 16),
//               _buildSuggestedDestinations(),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
//         ],
//       ),
//     );
//   }

//   Widget _buildSearchRow(IconData icon, String text, VoidCallback onTap) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(text),
//       trailing: Icon(Icons.chevron_right),
//       onTap: onTap,
//     );
//   }

//   Divider _buildDivider() => Divider(height: 1);

//   Future<void> _selectDate(BuildContext context, bool isCheckIn) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2025),
//     );
//     if (picked != null) {
//       setState(() {
//         if (isCheckIn) {
//           _checkInDate = 'Thứ ${picked.weekday}, ${picked.day}/${picked.month}/${picked.year}';
//         } else {
//           _checkOutDate = 'Trả Phòng: Thứ ${picked.weekday}, ${picked.day}/${picked.month}/${picked.year}';
//         }
//       });
//     }
//   }

//   void _selectDuration(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => DurationPickerPage()),
//     ).then((result) {
//       if (result != null) {
//         setState(() {
//           _duration = result;
//         });
//       }
//     });
//   }

//   void _selectGuests(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => GuestPickerPage(guests: _guests, beds: _beds)),
//     ).then((result) {
//       if (result != null) {
//         setState(() {
//           _guests = result['guests'];
//           _beds = result['beds'];
//         });
//       }
//     });
//   }

//   Widget _buildSuggestedDestinations() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         _buildDestinationCard(
//           imageUrl: 'https://via.placeholder.com/400x200',
//           title: 'Beach Resort Lux',
//           location: 'TP. Hồ Chí Minh',
//           price: '\$830',
//           rating: 4.8,
//           town: 'SAIGON TOWN',
//         ),
//         const SizedBox(height: 16),
//         _buildDestinationCard(
//           imageUrl: 'https://via.placeholder.com/400x200',
//           title: 'Lux Hotel',
//           location: 'TP. Hồ Chí Minh',
//           price: '\$830',
//           rating: 4.8,
//           town: 'Sóng Dữ Pear',
//         ),
//       ],
//     );
//   }

//   Widget _buildDestinationCard({
//     required String imageUrl,
//     required String title,
//     required String location,
//     required String price,
//     required double rating,
//     required String town,
//   }) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       elevation: 5,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//             child: Stack(
//               children: [
//                 Image.network(imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
//                 Positioned(
//                   top: 8,
//                   left: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Text(
//                       town,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.amber, size: 16),
//                         SizedBox(width: 4),
//                         Text(
//                           rating.toString(),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   location,
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   price,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class DurationPickerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Thời Gian Thuê Phòng'),
//       ),
//       body: ListView(
//         children: List.generate(6, (index) {
//           final nights = index + 1;
//           final returnDate = DateTime.now().add(Duration(days: nights));
//           return ListTile(
//             title: Text('$nights Đêm'),
//             subtitle: Text('Trả Phòng: ${returnDate.day}/${returnDate.month}/${returnDate.year}'),
//             onTap: () {
//               Navigator.pop(context, '$nights Đêm');
//             },
//           );
//         }),
//       ),
//     );
//   }
// }

// class GuestPickerPage extends StatefulWidget {
//   final int guests;
//   final int beds;

//   GuestPickerPage({required this.guests, required this.beds});

//   @override
//   _GuestPickerPageState createState() => _GuestPickerPageState();
// }

// class _GuestPickerPageState extends State<GuestPickerPage> {
//   late int _guests;
//   late int _beds;

//   @override
//   void initState() {
//     super.initState();
//     _guests = widget.guests;
//     _beds = widget.beds;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Số Lượng Khách'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             _buildCounter('Khách', _guests, (value) {
//               setState(() {
//                 _guests = value;
//               });
//             }),
//             _buildCounter('Giường', _beds, (value) {
//               setState(() {
//                 _beds = value;
//               });
//             }),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context, {'guests': _guests, 'beds': _beds});
//               },
//               child: Text('SAVE'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCounter(String label, int value, ValueChanged<int> onChanged) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(label),
//         Row(
//           children: [
//             IconButton(
//               icon: Icon(Icons.remove),
//               onPressed: () {
//                 if (value > 1) {
//                   onChanged(value - 1);
//                 }
//               },
//             ),
//             Text('$value'),
//             IconButton(
//               icon: Icon(Icons.add),
//               onPressed: () {
//                 onChanged(value + 1);
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDate = DateTime.now();
  int _nights = 1;
  int _guests = 1;
  int _beds = 1;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _selectDuration(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DurationPickerPage(),
      ),
    );
    if (result != null) {
      setState(() {
        _nights = result['nights'];
      });
    }
  }

  void _selectGuests(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GuestPickerPage(),
      ),
    );
    if (result != null) {
      setState(() {
        _guests = result['guests'];
        _beds = result['beds'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
            
            children: <Widget>[
              
              Image.asset(
                  'acess/backgroud.png',height: 200, width: double.infinity,fit: BoxFit.cover,
                ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                  'Tìm nơi nghỉ dưỡng\nphù hợp cho bạn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                            ),
                      ),
                ),
              ),
            ],
          ),
            _buildSearchCard(context),
            _buildSuggestedDestinations(),
          ],
        ),
      ),
    );
  }



  Widget _buildSearchCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            _buildLocationRow(),
            _buildDivider(),
            _buildDateRow(context),
            _buildDivider(),
            _buildGuestRoomRow(context),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Tìm phòng'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: const [
        Icon(Icons.location_on, color: Colors.white),
        SizedBox(width: 16),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Hochiminh City, Vietnam',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateRow(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.white),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Thứ 2, ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Icon(Icons.nights_stay, color: Colors.white),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDuration(context),
                  child: Text(
                    '$_nights Đêm',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const SizedBox(width: 32),
            Text(
              'Trả Phòng: Thứ 3, ${_selectedDate.add(Duration(days: _nights)).day}/${_selectedDate.add(Duration(days: _nights)).month}/${_selectedDate.add(Duration(days: _nights)).year}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGuestRoomRow(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectGuests(context),
      child: Row(
        children: [
          Icon(Icons.person, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_guests Khách',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(Icons.bed, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              '$_beds Giường',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.white,
      height: 20,
      thickness: 1,
    );
  }

  Widget _buildSuggestedDestinations() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gợi Ý Điểm Đến',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildDestinationCard('Beach Resort Lux', 'Waikiki, 4.1 miles from center', 'Ocean View 1 king Bed\nNo prepayment', '\$720', 4.5),
                const SizedBox(width: 16),
                _buildDestinationCard('Hotel Standard', 'San Francisco, 1.2 miles from center', 'Standard Room\nFree cancellation', '\$650', 4.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard(String title, String location, String details, String price, double rating) {
    return Card(
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
            const SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(location, style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Text(details, style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(rating.toString(), style: TextStyle(color: Colors.amber)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DurationPickerPage extends StatefulWidget {
  const DurationPickerPage({super.key});

  @override
  _DurationPickerPageState createState() => _DurationPickerPageState();
}

class _DurationPickerPageState extends State<DurationPickerPage> {
  int _nights = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Số Đêm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 1; i <= 6; i++)
              ListTile(
                title: Text('$i Đêm'),
                onTap: () {
                  setState(() {
                    _nights = i;
                  });
                },
                trailing: _nights == i ? Icon(Icons.check, color: Colors.blue) : null,
              ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {'nights': _nights});
              },
              child: Text('Lưu'),
            ),
          ],
        ),
      ),
    );
  }
}

class GuestPickerPage extends StatefulWidget {
  const GuestPickerPage({super.key});

  @override
  _GuestPickerPageState createState() => _GuestPickerPageState();
}

class _GuestPickerPageState extends State<GuestPickerPage> {
  int _guests = 1;
  int _beds = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Số Lượng Khách'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Khách', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_guests > 1) _guests--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
                Text('$_guests', style: TextStyle(fontSize: 18)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _guests++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text('Giường', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_beds > 1) _beds--;
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
                Text('$_beds', style: TextStyle(fontSize: 18)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _beds++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {'guests': _guests, 'beds': _beds});
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

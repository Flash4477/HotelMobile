import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Room Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Roomdetail(),
    );
  }
}

class Room {
  final String name;
  final String imageUrl;
  final List<String> amenities;
  final List<String> bathroomAmenities;
  final String bedInfo;
  final String roomDescription;

  Room({
    required this.name,
    required this.imageUrl,
    required this.amenities,
    required this.bathroomAmenities,
    required this.bedInfo,
    required this.roomDescription,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      name: json['name'],
      imageUrl: json['imageUrl'],
      amenities: List<String>.from(json['amenities']),
      bathroomAmenities: List<String>.from(json['bathroomAmenities']),
      bedInfo: json['bedInfo'],
      roomDescription: json['roomDescription'],
    );
  }
}

class Roomdetail extends StatefulWidget {
  @override
  _RoomdetailState createState() => _RoomdetailState();
}

class _RoomdetailState extends State<Roomdetail> {
  late Future<Room> futureRoom;

  @override
  void initState() {
    super.initState();
    futureRoom = fetchRoom();
  }

  Future<Room> fetchRoom() async {
    final response = await http.get(Uri.parse('__________'));

    if (response.statusCode == 200) {
      return Room.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load room data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Standard King Room'),
      ),
      body: FutureBuilder<Room>(
        future: futureRoom,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final room = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(room.imageUrl),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      room.name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SectionTitle(title: 'Tiện nghi phòng'),
                  for (var amenity in room.amenities)
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text(amenity),
                    ),
                  SectionTitle(title: 'Phòng Tắm Tiện Nghi'),
                  for (var bathAmenity in room.bathroomAmenities)
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text(bathAmenity),
                    ),
                  SectionTitle(title: 'Nội Thất Phòng'),
                  ListTile(
                    leading: Icon(Icons.bed),
                    title: Text(room.bedInfo),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(room.roomDescription),
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

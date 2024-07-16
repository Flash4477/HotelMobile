import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding1Widget extends StatefulWidget {
  const Onboarding1Widget({super.key});

  @override
  State<Onboarding1Widget> createState() => _Onboarding1WidgetState();
}

class _Onboarding1WidgetState extends State<Onboarding1Widget> {
  late FocusNode _unfocusNode;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _unfocusNode = FocusNode();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 0.0, left: 30.0, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Bỏ Qua',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'acess/2.png',
                  width: 444,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Tìm chỗ nghỉ tiếp theo',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Tìm ưu đãi khách sạn, chỗ nghỉ dạng nhà và nhiều hơn nữa...',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.readexPro(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 200),
              Flexible(
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF393939),
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
                    textStyle: GoogleFonts.readexPro(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 3,
                  ),
                  child: Text(style: TextStyle(color: Colors.white),'Tiếp Tục'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

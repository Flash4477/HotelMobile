import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2Widget extends StatefulWidget {
  const Onboarding2Widget({super.key});

  @override
  State<Onboarding2Widget> createState() => _Onboarding2WidgetState();
}

class _Onboarding2WidgetState extends State<Onboarding2Widget> {
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
                  'acess/3.png',
                  width: 444,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Lên kế hoạch dễ dàng và nhanh chóng',
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Khám phá các điểm đến hàng đầu theo cách bạn thích ở Việt Nam',
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

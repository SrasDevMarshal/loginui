import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final _primaryColor = const Color(0xff225eab);
  final _whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: Scaffold(
        backgroundColor: _primaryColor,
        body: Center(
          child: Card(
            elevation: 8.0,
            child: Container(
              width: 1000,
              height: 500,
              decoration: BoxDecoration(
                  color: _whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ចូលប្រព័ន្ធ',
                          style: GoogleFonts.moul(
                              fontSize: 16, color: _primaryColor),
                        ),
                        const SizedBox(height: 50.0),
                        Column(
                          children: [
                            _buildTextField(
                                label: 'ឈ្មោះអ្នកប្រើប្រាស់',
                                placeholder: 'បញ្ចូលឈ្មោះអ្នកប្រើប្រាស់'),
                            _buildTextField(
                                obscureText: true,
                                label: 'លេខសម្ងាត់',
                                placeholder: 'បញ្ចូលលេខសម្ងាត់'),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(20.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0))),
                                child: Text(
                                  'ចូលប្រើប្រាស់',
                                  style: GoogleFonts.battambang(fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'ភ្លេចលេខសម្តាត់?',
                                style: GoogleFonts.battambang(fontSize: 12),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SvgPicture.asset(
                        'assets/logo.svg',
                        width: 250,
                      ),
                    ),
                    Image.asset(
                      'assets/login-image.png',
                      width: 400,
                    )
                  ],
                ))
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required label, required placeholder, bool obscureText = false}) {
    var battambangFont = GoogleFonts.battambang(fontSize: 16);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: battambangFont,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: placeholder,
            hintStyle: battambangFont,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:chat_app/utilities/assets_manager.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
    phoneCode: '84',
    countryCode: 'VN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'Vietnam',
    example: 'Vietnam',
    displayName: 'Vietnam',
    displayNameNoCountryCode: 'VN',
    e164Key: '',
  );

  bool isDarkMode = false;

  void getThemeMode() async {
    final savedThemeMode = await AdaptiveTheme.getThemeMode();
    if (savedThemeMode == AdaptiveThemeMode.dark) {
      setState(() {
        isDarkMode = true;
      });
    } else {
      setState(() {
        isDarkMode = false;
      });
    }
  }

  @override
  void initState() {
    getThemeMode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Lottie.asset(
                    AssetsManager.cat,
                    fit: BoxFit.cover,
                  ),
                ),
                Text('Chat app', style: GoogleFonts.pattaya(fontSize: 40)),
                const SizedBox(height: 10),
                Text(
                  'Nhập số điện thoại để đăng nhập',
                  style: GoogleFonts.quicksand(fontSize: 16),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: phoneController,
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Nhập số điện thoại',
                    prefixIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            countryListTheme: CountryListThemeData(
                              flagSize: 20,
                              backgroundColor: isDarkMode
                                  ? darkModeBackground
                                  : lightModeBackground,
                              textStyle: GoogleFonts.quicksand(fontSize: 16),
                              bottomSheetHeight: 600,
                            ),
                            onSelect: (Country country) {
                              setState(() {
                                selectedCountry = country;
                              });
                            },
                          );
                        },
                        child: Text(
                          '+${selectedCountry.phoneCode} ${selectedCountry.flagEmoji}',
                          style: GoogleFonts.quicksand(fontSize: 16),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 9
                        ? InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: isDarkMode
                                  ? darkModePrimary
                                  : lightModePrimary,
                            ),
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

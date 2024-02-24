import 'dart:io';

import 'package:ecoguard/src/app/feature/register/login_screen.dart';
import 'package:ecoguard/src/app/feature/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/components/dropdown_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  List<String> country = [
    'Choose your Country',
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua & Deps",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Central African Rep",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo {Democratic Rep}",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "East Timor",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland {Republic}",
    "Israel",
    "Italy",
    "Ivory Coast",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea North",
    "Korea South",
    "Kosovo",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar, {Burma}",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russian Federation",
    "Rwanda",
    "St Kitts & Nevis",
    "St Lucia",
    "Saint Vincent & the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome & Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Togo",
    "Tonga",
    "Trinidad & Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Vatican City",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];
  List<String> cities = [
    "Choose your city",
    "Tripoli",
    "Benghazi",
    "Misrata",
    "Zawiya",
    "Bayda",
    "Gharyan",
    "Tobruk",
    "Ajdabiya",
    "Zliten",
    "Derna",
    "Sirte",
    "Sabha",
    "Khoms",
    "Bani Walid",
    "Sabratha",
    "Zuwara",
    "Kufra",
    "Marj",
    "Tocra",
    "Tarhuna",
    "Msallata",
    "Jumayl",
    "Sorman",
    "Al Gseibat",
    "Shahhat",
    "Ubari",
    "Asbi'a",
    "Jadid",
    "Waddan",
    "El Agheila",
    "Abyar",
    "Nofaliya",
    "Regdalin",
    "Gasr Akhyar",
    "Al Qubah",
    "Tawergha",
    "Al Maya",
    "Murzuk",
    "Brega",
    "Teghsat",
    "Hun",
    "Jalu",
    "Ajaylat",
    "Nalut",
    "Suluq",
    "Shuhada' al Buerat",
    "Zaltan",
    "Mizda",
    "Ra's Lanuf",
    "Al Urban",
    "Yafran",
    "Ar Rayaniya",
    "Umm al Rizam",
    "Taucheira",
    "Brak",
    "Abu Ghlasha",
    "Ad Dawoon",
    "Teji",
    "Qaminis",
    "Qatrun",
    "Benina",
    "Kikla",
    "Al Rheibat",
    "Sokna",
    "Massa",
    "Bin Jawad",
    "Umm al Aranib",
    "Jadu",
    "Ghadames",
    "Ar Rabta",
    "Ghat",
    "Al Abraq",
    "Sidi as Said",
    "Ar Rajban",
    "Awjila",
    "Ras al Hamam",
    "Tolmeita",
    "Zella",
    "Wadi Utba",
    "Al Barkat",
    "Martuba",
    "Traghan",
    "Al Hashan",
    "El Bayyada",
    "Qayqab",
    "Mashashita",
    "Bu-Fakhra",
    "Musaid",
    "Tacnis",
    "Susa",
    "Wadi Zem-Zem",
    "Batta",
    "Tazirbu",
    "Jadid",
    "Farzougha",
    "Qaryat ‘Umar al Mukhtar",
    "Bi'r al Ashhab",
  ];

  PageController controller = PageController();
  TextEditingController birthdateController = TextEditingController();
  int isMan = 0;
  File? _imageFile;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    File? pickedImageFile;
    try {
      final pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        pickedImageFile = File(pickedImage.path);
      }
    } catch (e) {
      print('Error picking image: $e');
    }

    if (pickedImageFile != null) {
      setState(() {
        _imageFile = pickedImageFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    List iconsList = [
      'assets/images/man.png',
      'assets/images/woman.png',
    ];
    List gender = ['Man', 'Woman'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/singin.png'), opacity: 0.3),
        ),
        child: SizedBox(
          width: size.width,
          child: PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListView(
                children: [
                  Text(
                    'Create Account',
                    style: theme.textTheme.headlineLarge!
                        .copyWith(color: Colors.white, fontSize: 40),
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                      ),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              isMan = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: index == isMan
                                      ? theme.primaryColor
                                      : Colors.grey),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  iconsList[index],
                                  scale: 9,
                                ),
                                Text(
                                  gender[index],
                                  style: theme.textTheme.headlineSmall!
                                      .copyWith(
                                          fontSize: 28,
                                          color: index == isMan
                                              ? theme.primaryColor
                                              : Colors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      }).py16(),
                  buildTextFormField(
                    hintText: 'NAME',
                    prefixIcon: const Icon(Icons.person),
                  ),
                  buildTextFormField(
                      hintText: 'PHONE NUMBER',
                      prefixIcon: const Icon(Icons.phone),
                      prefix: const Text(
                        '+218',
                        style: TextStyle(color: Colors.white),
                      )),
                  buildTextFormField(
                    hintText: 'EMAIL',
                    prefixIcon: const Icon(Icons.email),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: size.width * .6,
                      height: size.height * .05,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style: theme.textTheme.headlineMedium!.copyWith(
                              fontFamily: 'Product', color: Colors.white),
                        ),
                      ),
                    ).pOnly(top: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Aready have a account?',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginScreen();
                            }));
                          },
                          child: const Text('Sign in'))
                    ],
                  )
                ],
              ),
              ListView(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey.shade300,
                        child: _imageFile == null
                            ? const Icon(
                                CupertinoIcons.camera,
                                color: Colors.grey,
                                size: 50,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.file(_imageFile!)),
                      ),
                    ),
                  ),
                  buildTextFormField(
                    controller: birthdateController,
                    onTap: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime(DateTime.now().year - 80),
                        lastDate: DateTime(DateTime.now().year - 13),
                      ).then((value) {
                        final DateFormat formatter = DateFormat('yyyy-MM-dd');
                        birthdateController.text =
                            formatter.format(value!).toString();
                      });
                    },
                    hintText: 'BIRTHDAY',
                    prefixIcon: const Icon(Icons.calendar_month),
                  ),
                  dropdownFormFieldEnhanced(
                    context,
                    prefixIcon: const Icon(Icons.location_on_outlined),
                    items: country,
                    onChanged: (String? value) {},
                  ),
                  dropdownFormFieldEnhanced(
                    context,
                    prefixIcon: const Icon(Icons.location_city),
                    items: cities,
                    onChanged: (String? value) {},
                  ),
                  buildTextFormField(
                    hintText: 'PASSWORD',
                    keyboardTyp: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: const Icon(Icons.password_outlined),
                  ),
                  buildTextFormField(
                    hintText: 'CONFIRM PASSWORD',
                    keyboardTyp: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: const Icon(Icons.password_outlined),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: size.width * .6,
                      height: size.height * .06,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const Screens();
                          }));
                        },
                        child: Text(
                          'Register',
                          style: theme.textTheme.headlineMedium!.copyWith(
                              fontFamily: 'Product', color: Colors.white),
                        ),
                      ),
                    ).pOnly(top: 20),
                  ),
                ],
              ),
            ],
          ).px16(),
        ),
      ),
    );
  }

  Widget buildTextFormField(
      {String? hintText,
      Widget? prefixIcon,
      Widget? prefix,
      bool obscureText = false,
      void Function()? onTap,
      TextInputType? keyboardTyp,
      TextEditingController? controller}) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      keyboardType: keyboardTyp ?? TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white, fontFamily: 'Product'),
        prefixIcon: prefixIcon,
        prefix: prefix,
        prefixIconColor: Colors.white,
        filled: true,
        fillColor: Colors.grey.shade500,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
      ),
    ).pOnly(top: 20);
  }
}

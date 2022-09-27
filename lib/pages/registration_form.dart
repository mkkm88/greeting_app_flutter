import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:greeting_app/pages/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeting_app/user_details.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  final dept = [
    {'name': 'hello1', 'value': 'value1'},
    {'name': 'hello2', 'value': 'value2'},
    {'name': 'hello3', 'value': 'value3'},
  ];

  final dept_name = const [
    DropDownValueModel(name: 'Select Dept', value: "Select Dept"),
    DropDownValueModel(name: 'Department of Technology', value: "btech"),
    DropDownValueModel(
      name: 'Department of Science',
      value: "science",
    ),
    DropDownValueModel(
        name: 'Department of Mass Communication & Journalism', value: "mass"),
    DropDownValueModel(
      name: 'Polytechnic',
      value: "poly",
    ),
    DropDownValueModel(
        name: 'Department of Education & Training', value: "edu"),
    DropDownValueModel(
        name: 'Department of Commerce & Business Management',
        value: "comm & mang"),
    DropDownValueModel(
        name: 'Department of Arts & Social Science', value: "arts"),
    DropDownValueModel(name: 'Department of Arabic', value: "arabic"),
    DropDownValueModel(name: 'Department of English', value: "eng"),
    DropDownValueModel(name: 'Department of Hindi', value: "hindi"),
    DropDownValueModel(
        name: 'Department of Persian and Central Asian Studies',
        value: "persian"),
    DropDownValueModel(
        name: 'Department of Translation Studies', value: "trans"),
    DropDownValueModel(name: 'Department of Urdu', value: "urdu"),
    DropDownValueModel(name: 'Department of Economics', value: "eco"),
    DropDownValueModel(name: 'Department of History', value: "his"),
    DropDownValueModel(
        name: 'Department of Political Science', value: "poli sci"),
    DropDownValueModel(
        name: 'Department of Public Administration', value: "pub admin"),
    DropDownValueModel(name: 'Department of Social Work', value: "social"),
    DropDownValueModel(name: 'Department of Sociology', value: "sociology"),
    DropDownValueModel(
        name: 'Department of Women Education', value: "women edu"),
    DropDownValueModel(
        name: 'Department of Islamic Studies', value: "islamic stu"),
  ];
  final dict = const {
    'btech': [
      DropDownValueModel(name: 'B.Tech Computer Science', value: "value1"),
      DropDownValueModel(name: 'M.Tech Computer Science', value: "value2"),
      DropDownValueModel(
          name: 'Master of Computer Application(M.C.A.)', value: "value3"),
      DropDownValueModel(name: 'Ph.D. Computer Science', value: "value4"),
    ],
    'science': [
      DropDownValueModel(name: 'B.Sc(MPCs)', value: "value5"),
      DropDownValueModel(name: 'B.Sc(MPC)', value: "value6"),
      DropDownValueModel(name: 'B.Sc(ZBC)', value: "value7"),
      DropDownValueModel(name: 'M.Sc Mathematics', value: "value8"),
      DropDownValueModel(name: 'Ph.D. Mathematics', value: "value9"),
      DropDownValueModel(name: 'Ph.D. Botany', value: "value10"),
      DropDownValueModel(name: 'Ph.D. Zoology', value: "value11"),
      DropDownValueModel(name: 'Ph.D. Chemistry', value: "value12"),
      DropDownValueModel(name: 'Ph.D. Physics', value: "value13"),
    ],
    'mass': [
      DropDownValueModel(
          name: 'B.A. (Mass Communication & Journalism)', value: "value14"),
      DropDownValueModel(
          name: 'M.A. (Mass Communication & Journalism)', value: "value15"),
      DropDownValueModel(
          name: 'Ph.D. (Mass Communication & Journalism)', value: "value16"),
    ],
    'arabic': [
      DropDownValueModel(
          name: 'Certificate Course in Proficiency in Arabic',
          value: "value17"),
      DropDownValueModel(name: 'Diploma in Arabic', value: "value18"),
      DropDownValueModel(
          name: 'Advance Diploma in Professional Arabic', value: "value19"),
      DropDownValueModel(name: 'M.A. Arabic', value: "value20"),
      DropDownValueModel(name: 'Ph.D. Arabic', value: "value21"),
    ],
    'eng': [
      DropDownValueModel(name: 'M.A. English', value: "value22"),
      DropDownValueModel(name: 'Ph.D. English', value: "value23"),
    ],
    'hindi': [
      DropDownValueModel(
          name: 'PG Diploma in Functional Hindi and Translation',
          value: "value24"),
      DropDownValueModel(name: 'M.A. Hindi', value: "value25"),
      DropDownValueModel(name: 'Ph.D. Hindi', value: "value26"),
    ],
    'persian': [
      DropDownValueModel(name: 'Diploma in Persian', value: "value27"),
      DropDownValueModel(name: 'M.A. Persian', value: "value28"),
      DropDownValueModel(name: 'Ph.D. Persian', value: "value29"),
    ],
    'trans': [
      DropDownValueModel(name: 'M.A. Translation Studies', value: "value30"),
      DropDownValueModel(name: 'Ph.D. Translation Studies', value: "value31"),
    ],
    'urdu': [
      DropDownValueModel(name: 'Certificate Course in Urdu', value: "value32"),
      DropDownValueModel(
          name: 'PG Diploma in Functional Urdu', value: "value33"),
      DropDownValueModel(name: 'M.A. Urdu', value: "value34"),
      DropDownValueModel(name: 'Ph.D. Urdu', value: "value35"),
    ],
    'edu': [
      DropDownValueModel(
          name: 'Diploma in Elementary Education', value: "value36"),
      DropDownValueModel(name: 'Bachelor of Education(B.Ed)', value: "value37"),
      DropDownValueModel(name: 'Master of Education(M.Ed)', value: "value38"),
      DropDownValueModel(name: 'Ph.D. Education', value: "value39"),
    ],
    'comm & mang': [
      DropDownValueModel(name: 'Bachelor of Commerce(B.Com)', value: "value40"),
      DropDownValueModel(
          name: 'Master of Business Administration(M.B.A.)', value: "value41"),
      DropDownValueModel(name: 'Master of Commerce(M.Com)', value: "value42"),
      DropDownValueModel(name: 'Ph.D. Commerce', value: "value43"),
      DropDownValueModel(name: 'Ph.D. Management Studies', value: "value44"),
    ],
    'eco': [
      DropDownValueModel(name: 'M.A. Economics', value: "value45"),
      DropDownValueModel(name: 'Ph.D. Economics', value: "value46"),
    ],
    'his': [
      DropDownValueModel(name: 'M.A. History', value: "value47"),
      DropDownValueModel(name: 'Ph.D. History', value: "value48"),
    ],
    'poli sci': [
      DropDownValueModel(name: 'M.A. Political Science', value: "value49"),
      DropDownValueModel(name: 'Ph.D. Political Science', value: "value50"),
    ],
    'pub admin': [
      DropDownValueModel(name: 'M.A. Public Administration', value: "value51"),
      DropDownValueModel(name: 'Ph.D. Public Administration', value: "value52"),
    ],
    'social work': [
      DropDownValueModel(name: 'Master of Social Work(MSW)', value: "value53"),
      DropDownValueModel(name: 'Ph.D. Social Work', value: "value54"),
    ],
    'sociology': [
      DropDownValueModel(name: 'M.A. Sociology', value: "value55"),
      DropDownValueModel(name: 'Ph.D. Sociology', value: "value56"),
    ],
    'women edu': [
      DropDownValueModel(name: 'M.A. Women Education', value: "value57"),
      DropDownValueModel(name: 'Ph.D. Women Education', value: "value58"),
    ],
    'islamic stu': [
      DropDownValueModel(name: 'M.A. Islamic Studies', value: "value59"),
      DropDownValueModel(name: 'Ph.D. Islamic Studies', value: "value60"),
    ],
    'poly': [
      DropDownValueModel(name: 'Diploma in Computer Science', value: "value61"),
      DropDownValueModel(
          name: 'Diploma in Civil Engineering', value: "value62"),
      DropDownValueModel(name: 'Diploma in Electronic', value: "value63"),
      DropDownValueModel(
          name: 'Diploma in Information Technology', value: "value64"),
    ],
    'arts': [
      DropDownValueModel(name: 'B.A. (Bachelor of Arts)', value: "value65"),
    ],
  };
  final UserDetails user = UserDetails();

  String dropValue = 'btech';


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/register.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 60),
              child: Text(
                'Registration Form',
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10,
                  right: 35,
                  left: 35,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                          items: dept
                              .map((e) => DropdownMenuItem<String>(
                                    value: e['value'],
                                    child: Text(e['name']!),
                                  ))
                              .toList(),
                          // value: 'Select Dept',
                          value: ['hello1'],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          onChanged: (val) {
                            // user.dept = val.toString();
                          }),
                      TextFormField(
                        decoration: getDecoration('Full Name'),
                        onSaved: (value) {
                          user.name = value;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: getDecoration('Email Id'),
                        onSaved: (value) {
                          user.email = value;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
/*                      DropDownTextField(
                        textFieldDecoration: getDecoration('Select Department'),
                        singleController: _cnt,
                        clearOption: true,
                        enableSearch: true,
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownItemCount: 21,
                        dropDownList: dept_name,
                        onChanged: (val) {
                          user.dept = val.value;
                          // setState(() {
                          //   dropValue = val.value;
                          // });
                        },
                      )*/
                      const SizedBox(
                        height: 10,
                      ),
                      DropDownTextField(
                        textFieldDecoration: getDecoration('Select Course'),
                        //initialValue: "Select Schools",
                        clearOption: true,
                        enableSearch: true,
                        onChanged: (val) {
                          user.course = val.value;
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownItemCount: 30,
                        dropDownList: dict[dropValue]!,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onSaved: (value) {
                          user.enroll = value;
                        },
                        decoration: getDecoration('Enter Enrollment No'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onSaved: (value) {
                          user.roll = value;
                        },
                        decoration: getDecoration('Enter Roll No'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DropDownTextField(
                        textFieldDecoration: getDecoration('Select Year'),
                        clearOption: true,
                        enableSearch: true,
                        onChanged: (val) {
                          user.year = val.value;
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownItemCount: 4,
                        dropDownList: const [
                          DropDownValueModel(name: '1st Year', value: "value1"),
                          DropDownValueModel(name: '2nd Year', value: "value2"),
                          DropDownValueModel(name: '3rd Year', value: "value3"),
                          DropDownValueModel(name: '4th Year', value: "value4"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DropDownTextField(
                        textFieldDecoration: getDecoration('Select Semester'),
                        clearOption: true,
                        enableSearch: true,
                        onChanged: (val) {
                          user.sem = val.value;
                        },
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownItemCount: 8,
                        dropDownList: const [
                          DropDownValueModel(name: '1st Sem', value: "value1"),
                          DropDownValueModel(name: '2nd Sem', value: "value2"),
                          DropDownValueModel(name: '3rd Sem', value: "value3"),
                          DropDownValueModel(name: '4th Sem', value: "value4"),
                          DropDownValueModel(name: '5th Sem', value: "value5"),
                          DropDownValueModel(name: '6th Sem', value: "value6"),
                          DropDownValueModel(name: '7th Sem', value: "value7"),
                          DropDownValueModel(name: '8th Sem', value: "value8"),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, '/dept_greet');
                              _formKey.currentState!.save();
                              print(user);
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff4c505b)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ))),
                            child: Text(
                              'Submit',
                              style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:greeting_app/pages/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greeting_app/static_data.dart';
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

  final dept = ['1', '2', '3'];

  final UserDetails user = UserDetails();

  String dropValue = '';

  @override
  void initState() {
    dropValue = dept[0];
    super.initState();
  }

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
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)), //<-- SEE HERE
                              borderSide:
                                  BorderSide(color: Colors.white10, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8.0)),
                              //<-- SEE HERE
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            filled: true,
                            fillColor: Colors.white10,
                          ),
                          dropdownColor: Colors.white,
                          items: dept
                              .map<DropdownMenuItem<String>>(
                                  (String e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Text(e),
                                      ))
                              .toList(),
                          // value: 'Select Dept',
                          value: dropValue.isNotEmpty ? dropValue : null,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          onChanged: (val) {
                            setState(() {
                              dropValue = val!;
                            });
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
                        dropDownList: Data.dict['btech']!,
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
                          setState(() {
                            user.year = val.value;
                          });
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

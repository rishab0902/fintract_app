import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

enum OtpType { Email, Phone }

class Ftlogin extends StatefulWidget {
  const Ftlogin({Key? key}) : super(key: key);

  @override
  State<Ftlogin> createState() => _FtloginState();
}

class _FtloginState extends State<Ftlogin> {
  _FtloginState() {
    _selectedVal = _productsizelist as String?;
  }

  OtpType? _otpType;
  final _productsizelist = {
    "select Customer",
    "CUSTOMER",
    "BANK ADMIN",
    "FINTRACT ADMIN",
  };
  String? _selectedVal = "select Customer";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 70),
              child: Text(
                'FinTract Global\nWelcome to \nopen Banking',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Email or username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // DropdownButton(
                    //   value: _selectedVal,
                    //   items: _productsizelist
                    //       .map((e) => DropdownMenuItem(
                    //             child: Text(e),
                    //             value: e,
                    //           ))
                    //       .toList(),
                    //   onChanged: (val) {
                    //     setState(() {
                    //       _selectedVal = val as String;
                    //     });
                    //   },
                    // ),
                    DropdownButtonFormField(
                      value: _selectedVal,
                      items: _productsizelist
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedVal = val as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.deepPurple,
                      ),
                      dropdownColor: Colors.deepPurple.shade50,
                      decoration: InputDecoration(
                          labelText: "select Customer",
                          prefixIcon: Icon(
                            Icons.accessibility_rounded,
                            color: Colors.deepPurple,
                          ),
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Otp Type',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<OtpType>(
                              contentPadding: EdgeInsets.all(0.0),
                              value: OtpType.Phone,
                              groupValue: _otpType,
                              tileColor: Colors.grey.shade50,
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              title: Text(OtpType.Phone.name),
                              onChanged: (val) {
                                setState(() {
                                  _otpType = val;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: RadioListTile<OtpType>(
                              contentPadding: EdgeInsets.all(0.0),
                              value: OtpType.Email,
                              groupValue: _otpType,
                              tileColor: Colors.grey.shade50,
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              title: Text(OtpType.Email.name),
                              onChanged: (val) {
                                setState(() {
                                  _otpType = val;
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 18),
                          ),
                          style: ButtonStyle(),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff4c505b),
                                fontSize: 18,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

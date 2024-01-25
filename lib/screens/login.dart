import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _phoneCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _test = TextEditingController();

  void _onSubmit() {
    if (_formKey.currentState!.validate()) print("Success");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's sign you in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              Text("Welcome back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  )),
              Text(
                "You've been missed bro",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _phoneCtrl,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Утасны дугаар хоосон байж болохгүй ";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.5), width: 1)),
                  labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  labelText: "Утасны дугаар",
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passCtrl,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Нууц үг хоосон байж болохгүй ";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.5), width: 1)),
                  labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  label: Text("Нууц үг"),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 130,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: _onSubmit,
                  child: Text("Нэвтрэх"),
                ),
              ),
            ],
          ),
        ));
  }
}

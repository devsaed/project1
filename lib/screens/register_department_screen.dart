import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:logger/logger.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/widgets/custom_textfield_widget.dart';
import 'package:string_validator/string_validator.dart';

class RegisterDepartmentScreen extends StatelessWidget {
  String name;
  String password;
  String email;
  GlobalKey<FormState> formKeys = GlobalKey();
  Logger logger = Logger();

  saveForm() {
    if (formKeys.currentState.validate()) {
      formKeys.currentState.save();
      logger.d(name);
    } else {
      return;
    }
  }

  normalSave(val) {
    this.name = val;
  }

  normalValidate(val) {
    if (val == null || val == '') {
      return 'required';
    }
  }

  savePassword(String val) {
    this.password = val;
  }

  validatePassword(String val) {
    if (val == null || val == '') {
      return 'required';
    } else if (val.length < 6) {
      return 'short password';
    }
  }

  saveEmail(String val) {
    this.password = val;
  }

  validateEmail(String val) {
    if (val == null || val == '') {
      return 'required';
    } else if (!isEmail(val)) {
      return 'input error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text(
          translator.translate('Register'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: formKeys,
          child: ListView(
            children: [
              Container(
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 40, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstATop),
                      image: AssetImage('assets/images/store.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle),
              ),
              CustomTextFieldWidget(
                label: 'username',
                saveFunction: normalSave,
                validateFunction: normalValidate,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldWidget(
                label: 'password',
                validateFunction: validatePassword,
                saveFunction: savePassword,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldWidget(
                  label: 'email',
                  saveFunction: saveEmail,
                  validateFunction: validateEmail),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  saveForm();
                },
                child: Text(
                  'REGISTER'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'cairo',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                color: primaryColor,
                padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:regular_expression_textformfiled_validation/helper/textEditing%20validator.dart';
import 'package:regular_expression_textformfiled_validation/home_screen.dart';
import 'package:regular_expression_textformfiled_validation/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //textEditing controller name

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  controller: firstNameController,
                  hintText: 'Enter your first Name',
                  validator: (String? value) {
                    return TextformFiledValidator.validateFirstName(
                        firstNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Last Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your last Name',
                  controller: lastNameController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateLastName(
                        lastNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateEmail(
                        emailController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child:  const CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'Bd',
                        favorite: ['+39','FR'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,

                      ),

                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: ReusableTextFormFieldWidget(
                        hintText: 'Enter your phone number',
                        controller: phoneController,
                        validator: (String? value) {
                          return TextformFiledValidator.validatePhone(
                              phoneController.text);
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your password',
                  controller: passWordController,
                  validator: (String? value) {
                    return TextformFiledValidator.validatePassword(
                        passWordController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeSreen()));
                    }
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Center(child: Text('Sign Up')),
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

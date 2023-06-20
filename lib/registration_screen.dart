import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'package:regular_expression_textformfiled_validation/home_screen.dart';
import 'package:regular_expression_textformfiled_validation/widgets.dart';

import 'helper/textformfiledvalidator.dart';

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
        title: const Text('Registration '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //first name

                const Text(
                  'First Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  onChanged: (value){
                    formKey.currentState!.validate();
                  },
                  controller: firstNameController,
                  hintText: 'Enter your first Name',
                  validator: (String? value) {
                    return TextformFiledValidator.validateFirstName(
                        firstNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  //keyboardType: TextInputType.text,
                ),



                //last name
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Last Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  onChanged: (value){
                    formKey.currentState!.validate();
                  },

                  hintText: 'Enter your last Name',
                  controller: lastNameController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateLastName(
                        lastNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),




                // email
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  onChanged: (value){
                    formKey.currentState!.validate();
                  },
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateEmail(
                        emailController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),



                //phone number
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
                ReusableTextFormFieldWidget(

                  prefixPhoneNumber: const CountryCodePicker(
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
                  onChanged: (value){
                    formKey.currentState!.validate();
                  },
                  hintText: 'Enter your phone number',
                  controller: phoneController,
                  validator: (String? value) {
                    return TextformFiledValidator.validatePhone(
                        phoneController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                ),



                // password
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                ReusableTextFormFieldWidget(
                  onChanged: (value){
                    formKey.currentState!.validate();
                  },
                  hintText: '6 character password',
                  controller: passWordController,
                  validator: (String? value) {
                    return TextformFiledValidator.validatePassword(
                        passWordController.text);
                  },
                  //textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),




                // sign up button
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

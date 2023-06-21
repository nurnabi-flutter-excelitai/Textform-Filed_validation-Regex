// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:regular_expression_textformfiled_validation/home_screen.dart';
// import 'package:regular_expression_textformfiled_validation/widgets.dart';
//
// import 'helper/textformfiledvalidator.dart';
//
// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<RegistrationScreen> createState() => _RegistrationScreenState();
// }
//
// class _RegistrationScreenState extends State<RegistrationScreen> {
//
//   //textEditing controller name
//   final TextEditingController firstNameController = TextEditingController();
//   final TextEditingController lastNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController passWordController = TextEditingController();
//
//   final formKey = GlobalKey<FormState>();
//
//   bool isClicked = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registration '),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Form(
//             key: formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 //first name
//
//                 const Text(
//                   'First Name',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ReusableTextFormFieldWidget(
//                   onChanged: (value){
//                     formKey.currentState!.validate();
//                   },
//                   controller: firstNameController,
//                   hintText: 'Enter your first Name',
//                   validator: (String? value) {
//                     return TextformFiledValidator.validateFirstName(
//                         firstNameController.text);
//                   },
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.text,
//                   //keyboardType: TextInputType.text,
//                 ),
//
//
//
//                 //last name
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Last Name',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ReusableTextFormFieldWidget(
//                   onChanged: (value){
//                     formKey.currentState!.validate();
//                   },
//
//                   hintText: 'Enter your last Name',
//                   controller: lastNameController,
//                   validator: (String? value) {
//                     return TextformFiledValidator.validateLastName(
//                         lastNameController.text);
//                   },
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.text,
//                 ),
//
//
//
//
//                 // email
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Email',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ReusableTextFormFieldWidget(
//                   onChanged: (value){
//                     formKey.currentState!.validate();
//                   },
//                   hintText: 'Enter your email',
//                   controller: emailController,
//                   validator: (String? value) {
//                     return TextformFiledValidator.validateEmail(
//                         emailController.text);
//                   },
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//
//
//
//
//                 //phone number
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Phone Number',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ReusableTextFormFieldWidget(
//
//                   prefixPhoneNumber: const CountryCodePicker(
//                     onChanged: print,
//                     // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
//                     initialSelection: 'Bd',
//                     favorite: ['+39','FR'],
//                     // optional. Shows only country name and flag
//                     showCountryOnly: false,
//                     // optional. Shows only country name and flag when popup is closed.
//                     showOnlyCountryWhenClosed: false,
//                     // optional. aligns the flag and the Text left
//                     alignLeft: false,
//
//                   ),
//                   onChanged: (value){
//                     formKey.currentState!.validate();
//                   },
//                   hintText: 'Enter your phone number',
//                   controller: phoneController,
//                   validator: (String? value) {
//                     return TextformFiledValidator.validatePhone(
//                         phoneController.text);
//                   },
//                   textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.number,
//                 ),
//
//
//
//                 // password
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text(
//                   'Password',
//                   style: TextStyle(fontSize: 14),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ReusableTextFormFieldWidget(
//                   onChanged: (value){
//                     formKey.currentState!.validate();
//                   },
//                   hintText: '6 character password',
//                   controller: passWordController,
//                   validator: (String? value) {
//                     return TextformFiledValidator.validatePassword(
//                         passWordController.text);
//                   },
//                   //textInputAction: TextInputAction.next,
//                   keyboardType: TextInputType.text,
//                 ),
//
//
//
//
//                 // sign up button
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     if (formKey.currentState!.validate()) {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => HomeSreen()));
//                     }
//                   },
//                   child: Container(
//                     height: 40,
//                     width: double.infinity,
//                     color: Colors.blue,
//                     child: Center(child: Text('Sign Up')),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:regular_expression_textformfiled_validation/helper/textformfiledvalidator.dart';
import 'package:regular_expression_textformfiled_validation/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetAddressController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  FocusNode firstNameFocusNode = FocusNode();
  FocusNode lastNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode streetAddressFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
    streetAddressFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'First Name',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  focusNode: firstNameFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: firstNameController,
                  validator: (value) {
                    if (firstNameFocusNode.hasFocus) {
                      return TextformFiledValidator.validateFirstName(
                          firstNameController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your first name',
                  ),
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
                TextFormField(
                  focusNode: lastNameFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: lastNameController,
                  validator: (value) {
                    if (lastNameFocusNode.hasFocus) {
                      return TextformFiledValidator.validateLastName(
                          lastNameController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your last name',
                  ),
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
                TextFormField(
                  focusNode: emailFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: emailController,
                  validator: (value) {
                    if (emailFocusNode.hasFocus) {
                      return TextformFiledValidator.validateEmail(
                          emailController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),


                // phone number

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
                TextFormField(
                  keyboardType: TextInputType.number,
                  focusNode: phoneFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: phoneController,
                  validator: (value) {
                    if (phoneFocusNode.hasFocus) {
                      return TextformFiledValidator.validatePhone(
                          phoneController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                  ),
                ),




                // street address
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Street Address',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  focusNode: streetAddressFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: streetAddressController,
                  validator: (value) {
                    if (streetAddressFocusNode.hasFocus) {
                      return TextformFiledValidator.validateAddress(
                          streetAddressController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your address',
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                TextFormField(
                  focusNode: passwordFocusNode,
                  onChanged: (value) {
                    formKey.currentState!.validate();
                  },
                  controller: passWordController,
                  validator: (value) {
                    if (passwordFocusNode.hasFocus) {
                      return TextformFiledValidator.validatePassword(
                          passWordController.text);
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                // sign up
                // InkWell(
                //   onTap: () {
                //     if(passWordController.text.isEmpty){
                //       return 'this filed must not be empty',
                //     }
                //
                //
                //     // firstNameFocusNode.unfocus();
                //     // lastNameFocusNode.unfocus();
                //     // emailFocusNode.unfocus();
                //     // phoneFocusNode.unfocus();
                //     // passwordFocusNode.unfocus();
                //
                //     // if (formKey.currentState!.validate()) {
                //     //   Navigator.push(context,
                //     //       MaterialPageRoute(builder: (context) => HomeSreen()));
                //     // }
                //   },
                //   child: Container(
                //     height: 40,
                //     width: double.infinity,
                //     color: Colors.blue,
                //     child: Center(child: Text('Sign Up')),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

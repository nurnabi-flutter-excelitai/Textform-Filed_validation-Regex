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
              children: [
                ReusableTextFormFieldWidget(
                  controller: firstNameController,
                  hintText: 'Enter your first Name',
                  validator: (String? value) {
                    return TextformFiledValidator.validateFirstName(firstNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your last Name',
                  controller: lastNameController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateLastName(lastNameController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your email',
                  controller: emailController,
                  validator: (String? value) {
                    return TextformFiledValidator.validateEmail(emailController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your phone number',
                  controller: phoneController,
                  validator: (String? value) {
                    return TextformFiledValidator.validatePhone(phoneController.text);
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ReusableTextFormFieldWidget(
                  hintText: 'Enter your password',
                  controller: passWordController,
                  validator: (String? value) {
                    return TextformFiledValidator.validatePassword(passWordController.text);

                  },

                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),

                InkWell(
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeSreen()));

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

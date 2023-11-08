import 'package:flutter/material.dart';
import 'package:ecommerce/core/theme/application_theme.dart';
import 'package:ecommerce/core/widgets/custom_text_form_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  static const String routename = "Profiles";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/route_logo.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15),
              child: Text(
                "Welcome, Mohamed",
                style: ApplicationTheme.lightTheme.textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 15),
              child: Text(
                "mohamed.N@gmail.com",
                style: ApplicationTheme.lightTheme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextFormField(
                          controller: fullNameController,
                          suffixIcon: Image.asset("assets/images/pencil.png"),
                          maxLines: 1,
                          label: Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Your full name",
                              style: ApplicationTheme.customLabelStyle,
                            ),
                          ),
                          borderColor: Color(0xffB2C7DA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextFormField(
                          controller: emailController,
                          suffixIcon: Image.asset("assets/images/pencil.png"),
                          maxLines: 1,
                          label: Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Your E-mail",
                              style: ApplicationTheme.customLabelStyle,
                            ),
                          ),
                          borderColor: Color(0xffB2C7DA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextFormField(
                          controller: passwordController,
                          suffixIcon: Image.asset("assets/images/pencil.png"),
                          obscureText: true,
                          maxLines: 1,
                          label: Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Your password",
                              style: ApplicationTheme.customLabelStyle,
                            ),
                          ),
                          borderColor: Color(0xffB2C7DA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextFormField(
                          controller: mobileController,
                          suffixIcon: Image.asset("assets/images/pencil.png"),
                          maxLines: 1,
                          label: Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Your mobile number",
                              style: ApplicationTheme.customLabelStyle,
                            ),
                          ),
                          borderColor: Color(0xffB2C7DA),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextFormField(
                          controller: addressController,
                          suffixIcon: Image.asset("assets/images/pencil.png"),
                          maxLines: 1,
                          label: Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Your Address",
                              style: ApplicationTheme.customLabelStyle,
                            ),
                          ),
                          borderColor: Color(0xffB2C7DA),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    mobileController.dispose();
    addressController.dispose();
    super.dispose();
  }
}

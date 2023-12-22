import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kasir_app_mobile/feature/home/home_page.dart';
import 'package:kasir_app_mobile/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double heightSpace = 10;

  goToHomePage() => Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      scale: 5,
                    ),
                  ),
                  SizedBox(
                    height: heightSpace,
                  ),
                  const Text(
                    "Kasir App",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Silahkan masukkan email dan password",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.number,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Email wajib di isi'),
                        EmailValidator(errorText: "Email tidak valid")
                      ]),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person,
                          color: Constants.primaryColor,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.only(
                        top: 4, left: 16, right: 16, bottom: 4),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: 'Password tidak boleh kosong'),
                        MinLengthValidator(4,
                            errorText: 'Password minimal 4 karakter')
                      ]),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {

                          },
                          icon: const Icon(Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Constants.primaryColor,
                        ),
                        hintText: 'Password',
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Obx(() => controller.isError.value
                  //     ? const Text(
                  //         "Username atau password anda salah",
                  //         style: TextStyle(color: Colors.red, fontSize: 18),
                  //       )
                  //     : const Text('')),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      goToHomePage();
                      // if (controller.formKey.currentState!.validate()) {
                      //   FocusScopeNode currentFocus = FocusScope.of(context);
                      //
                      //   if (!currentFocus.hasPrimaryFocus) {
                      //     currentFocus.unfocus();
                      //   }
                      //   if (!controller.isLoading.value) {
                      //     controller.login();
                      //   }
                      // }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.white),
                        // color:Constants.primaryColor,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constants.primaryColor.withAlpha(10).withOpacity(0.3),
                            Constants.primaryColor,
                          ],
                        ),
                      ),
                      child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

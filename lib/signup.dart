// import 'package:flutter/material.dart';
// import 'login.dart';
// import 'Screen/theplanner.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//   final formkey = new GlobalKey<FormState>();
//   var email = '';
//   var password = '';
//   var name = '';
//   var CNIC = '';
//   var phone = '';
//   var address = '';
//   var city= '';
//   var conformPassword = '';
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final conformPasswordController = TextEditingController();
//   final cityController = TextEditingController();
//   final CNICController = TextEditingController();
//   final phoneController = TextEditingController();
//   final addressController = TextEditingController();
//
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     nameController.dispose();
//     conformPasswordController.dispose();
//    cityController.dispose();
//     CNICController.dispose();
//     phoneController.dispose();
//     addressController.dispose();
//     super.dispose();
//   }
//   registration() async {
//     if (password == conformPassword) {
//       try {
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//             email: email, password: password).then((value)async{
//           await FirebaseFirestore.instance
//               .collection('Register')
//               .doc(FirebaseAuth.instance.currentUser.uid)
//               .set({
//             'name': name,
//             'email': email,
//             'phone': phone,
//             'CNIC': CNIC,
//             'Adddress': address,
//             'Password': password,
//             'Conform Password': conformPassword,
//             'City': city,
//           })
//               .then((value) => print('User Added'))
//               .catchError((error) => print('Falied to add user: $error'));
//         });
//
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => LoginPage(),
//         //   ),
//         ));
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             backgroundColor: Colors.red,
//             content: Text(
//               'Password Provided is too weak',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 color: Colors.white,
//               ),
//             ),
//           ));
//         } else if (e.code == 'email-already-in-use') {
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             backgroundColor: Colors.red,
//             content: Text(
//               'Account already exists',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.white,
//               ),
//             ),
//           ));
//         }
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         backgroundColor: Colors.red,
//         content: Text(
//           "Password and Conform Password Does'nt match",
//           style: TextStyle(
//             fontSize: 16.0,
//             color: Colors.white,
//           ),
//         ),
//       ));
//     }
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(vertical: 30.0),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               colors: [
//                 Colors.blue,
//                 Colors.white,
//               ],
//             ),
//           ),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(top: 40.0),
//                   child: Text("THE PLANNER", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),),
//                 ),
//                 Container(
//                   child: Text("A Man With Plan", style: TextStyle(color: Colors.white, fontSize: 18),),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 100, left: 25.0),
//                   alignment: Alignment.topLeft,
//                   child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
//                 ),
//                 SizedBox(height: 20.0,),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 15.0),
//                   child: Form(
//                     key: formkey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           decoration: InputDecoration(
//                               hintText: "Enter your name",
//                               hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                               fillColor: Colors.black87.withOpacity(0.2),
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(20.0),
//                               ),
//                               prefixIcon: Icon(Icons.email, color: Colors.white, size: 25.0,)
//                           ),
//                           controller: nameController,
//                           validator: (value){
//                             if(value==null || value.isEmpty){
//                               return 'Please Enter Name';
//                             }
//                             return null;
//                           },
//                         ),
//                 SizedBox(height: 8.0,),
//                 Container(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter your phone",
//                         hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                         fillColor: Colors.black87.withOpacity(0.2),
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                     ),
//                       controller: phoneController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please Enter Your Phone No.';
//                         }
//                         return null;
//                       }
//                   ),
//                 ),
//                 SizedBox(height: 8.0,),
//                 Container(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter your Email",
//                         hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                         fillColor: Colors.black87.withOpacity(0.2),
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                     ),
//                       controller: emailController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please Enter Email';
//                         } else if (!value.contains('@')) {
//                           return 'Please Enter Valid Email';
//                         }
//                         return null;
//                       }
//                   ),
//                 ),
//                 SizedBox(height: 8.0,),
//                 Container(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter your password",
//                         hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                         fillColor: Colors.black87.withOpacity(0.2),
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                     ),
//                       controller: passwordController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please Enter Password';
//                         }
//                         return null;
//                       }
//                   ),
//                 ),
//                         SizedBox(height: 8.0,),
//                         Container(
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                   hintText: "Conform Password",
//                                   hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                                   fillColor: Colors.black87.withOpacity(0.2),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                               ),
//                               controller: conformPasswordController,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please Enter Password';
//                                 }
//                                 return null;
//                               }
//                           ),
//                         ),
//                         SizedBox(height: 8.0,),
//                         Container(
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                   hintText: "Enter your CNIC",
//                                   hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                                   fillColor: Colors.black87.withOpacity(0.2),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                               ),
//                               controller: CNICController,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please Enter CNIC';
//                                 }
//                                 return null;
//                               }
//                           ),
//
//                         ),
//                         SizedBox(height: 8.0,),
//                         Container(
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                   hintText: "Enter your City",
//                                   hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                                   fillColor: Colors.black87.withOpacity(0.2),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                     borderRadius: BorderRadius.circular(20.0),
//                                   ),
//                                   prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                               ),
//                               controller: cityController,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please Enter City';
//                                 }
//                                 return null;
//                               }
//                           ),
//
//                         ),
//
//                 SizedBox(height: 8.0,),
//                 Container(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Enter your address",
//                         hintStyle: TextStyle(color: Colors.white, fontSize: 14.0),
//                         fillColor: Colors.black87.withOpacity(0.2),
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         prefixIcon: Icon(Icons.lock, color: Colors.white, size: 25.0,)
//                     ),
//                       controller: addressController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please Enter Your Address';
//                         }
//                         return null;
//                       }
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5.0,
//                 ),
//                 SizedBox(height: 20.0,),
//                   Center(
//                     child: Container(
//                       height: 40.0,
//                       width: 150.0,
//                       child: RaisedButton(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0),
//                         ),
//                         onPressed: () {
//                           if (formkey.currentState!.validate()) {
//                             setState(() {
//                               name = nameController.text;
//                               email = emailController.text;
//                               password = passwordController.text;
//                               conformPassword =
//                                   conformPasswordController.text;
//                               CNIC = CNICController.text;
//                               address = addressController.text;
//                               phone = phoneController.text;
//                               city= cityController.text;
//
//                             });
//                             registration();
//                           }
//                         },
//                         color: Colors.blue[300],
//                         child: Text(
//                           'Register',
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 SizedBox(height: 5.0,),
//                 Container(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Already Have an Account? "),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       LoginPage()));
//                         },
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                             color: Colors.blue,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

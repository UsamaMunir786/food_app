import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _auth = FirebaseAuth.instance;

//  Future<UserCredential?> loginWithGoogle() async {

//   try{

    
//         final googleUser = await GoogleSignIn().signIn();
//         final googleAuth = await googleUser?.authentication;

//         final cred = GoogleAuthProvider.credential(
//           idToken: googleAuth.idToken,
//           accessToken: googleAuth.accessToken
//         );

//       return await _auth.signInWithCredential(cred);
//   }catch (e){
//     print(e);
//   }
  
// }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: 400,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Sign in to continue..'),
                const SizedBox(height: 10),
                const Text(
                  'Vige',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        color: Colors.green,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Custom Google Sign-In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      // side: const BorderSide(color: Colors.grey, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      // TODO: Google Sign In action
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/google.png', height: 24),
                        const SizedBox(width: 10),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                const Text('By signing in you are agreeing to our'),
                const Text('Terms and Privacy Policy'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

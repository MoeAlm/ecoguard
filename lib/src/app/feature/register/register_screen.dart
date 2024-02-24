import 'package:ecoguard/src/app/feature/register/login_screen.dart';
import 'package:ecoguard/src/app/feature/register/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/register.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                theme.scaffoldBackgroundColor.withOpacity(0.8),
                theme.scaffoldBackgroundColor
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  scale: 7,
                ).opacity75(),
                RichText(
                  text: TextSpan(
                    text: 'Welcome to ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontFamily: 'Product'),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'EcoGuard! 🌍',
                        style: TextStyle(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Product'),
                      ),
                      const TextSpan(
                        text: ' \n\nJoin us in preserving the planet.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Product',
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: size.width * 0.6,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }),
                      );
                    },
                    child: Text('Login', style: theme.textTheme.headlineSmall,),
                  ),
                ).py16(),
                SizedBox(
                  width: size.width * 0.6,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignInScreen();
                        }),
                      );
                    },
                    child: Text('Sign up', style: theme.textTheme.headlineSmall,),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ).px16(),
          ),
        ),
      ),
    );
  }
}

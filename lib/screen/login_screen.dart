import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screen/forgot_password_screen.dart';
import 'package:myapp/screen/register_screen.dart';
import 'package:sign_in_button/sign_in_button.dart';

bool obscure = true;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.azulMeiaNoite, Colors.black],
            stops: [0.1, 0.9],
          ),
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context)
                      .size
                      .height, //define a altura da coluna para que seja pelo menos do tamanho máximo da tela, é como se expandisse a altura
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BuildStack(),
                    const SizedBox(height: 8),
                    BuildText(),
                    const SizedBox(height: 40),
                    EmailField(),
                    PassWordField(),
                    ForgotPassword(),
                    ButtonEntrar(),
                    DividerText(),
                    LoginWithGoogle(),
                    GoToRegister(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildText extends StatelessWidget {
  const BuildText({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return // Subtexto descritivo
    Text(
      'Organize sua rotina com facilidade.',
      style: TextStyle(
        fontFamily: "Gilroy",
        fontSize: 16,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}

class BuildStack extends StatelessWidget {
  const BuildStack({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return // Texto "Bem-vindo de volta!" com contorno
    Stack(
      children: <Widget>[
        Text(
          'Bem-vindo de volta!',
          style: TextStyle(
            fontFamily: "Gilroy",
            fontSize: 32,
            foreground:
                Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.white,
          ),
        ),
        Text(
          'Bem-vindo de volta!',
          style: TextStyle(
            fontFamily: "Gilroy",
            fontSize: 32,
            color: Color(0xFF004D40),
          ),
        ),
      ],
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 40, 40, 8),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white, // cor do texto digitado
          fontFamily: "Gilroy",
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email, color: Colors.white),
          border: OutlineInputBorder(),
          labelText: "Email",
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.white, fontFamily: "Gilroy"),
        ),
      ),
    );
  }
}

class PassWordField extends StatefulWidget {
  const PassWordField({super.key});

  @override
  State<PassWordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PassWordField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
      child: TextFormField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.white, fontFamily: "Gilroy"),
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            'assets/icons/password-svgrepo-com.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            width: 24,
            height: 24,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
            icon: SvgPicture.asset(
              obscure
                  ? 'assets/icons/eye-password-see-view-svgrepo-com.svg'
                  : 'assets/icons/eye-password-show-svgrepo-com.svg',
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              width: 24,
              height: 24,
            ),
          ),
          border: const OutlineInputBorder(),
          labelText: "Senha",
          hintText: "Senha",
          hintStyle: const TextStyle(color: Colors.white, fontFamily: "Gilroy"),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
        child: InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).pushReplacement(_createRoute_ForgotPassword());
          },
          child: new Text(
            "Esqueci minha senha",
            style: TextStyle(
              color: Colors.azulGaivota,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonEntrar extends StatelessWidget {
  const ButtonEntrar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
      child: ButtonTheme(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Color(0xFF004D40),
              fontFamily: "Gilroy",
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(320, 50), // LARGURA x ALTURA,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DividerText extends StatelessWidget {
  const DividerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Row(
          children: [
            Expanded(child: Divider(color: Colors.white, thickness: 1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Ou",
                style: TextStyle(color: Colors.white, fontFamily: "Gilroy"),
              ),
            ),
            Expanded(child: Divider(color: Colors.white, thickness: 1)),
          ],
        ),
      ),
    );
  }
}

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
      child: SizedBox(
        width: double.infinity,
        child: SignInButton(
          Buttons.google,
          text: "Logar com Google",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class GoToRegister extends StatelessWidget {
  const GoToRegister({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Não tem uma conta? ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(_createRoute_Register());
            },
            child: new Text(
              "Registre-se",
              style: TextStyle(
                color: Colors.azulGaivota,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute_Register() {
  return PageRouteBuilder(
    pageBuilder:
        (context, animation, secondaryAnimation) => const RegisterScreen(),
    transitionsBuilder: (_, animation, __, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOutCubic,
      );
      return FadeTransition(opacity: curved, child: child);
    },
  );
}

Route _createRoute_ForgotPassword() {
  return PageRouteBuilder(
    pageBuilder:
        (context, animation, secondaryAnimation) =>
            const ForgotPasswordScreen(),
    transitionsBuilder: (_, animation, __, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOutCubic,
      );
      return FadeTransition(opacity: curved, child: child);
    },
  );
}

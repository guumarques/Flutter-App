import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screen/login_screen.dart';
import 'package:sign_in_button/sign_in_button.dart';

bool obscure = true;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                    NameField(),
                    LastNameField(),
                    EmailField(),
                    PassWordField(),
                    ButtonRegistrar(),
                    DividerText(),
                    RegisterWithGoogle(),
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

class BuildStack extends StatelessWidget {
  const BuildStack({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return // Texto "Bem-vindo de volta!" com contorno
    Stack(
      children: <Widget>[
        Text(
          'Registro',
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
          'Registro',
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

class NameField extends StatelessWidget {
  const NameField({super.key});

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
          prefixIcon: Icon(Icons.person, color: Colors.white),
          border: OutlineInputBorder(),
          labelText: "Nome",
          hintText: "Nome",
          hintStyle: TextStyle(color: Colors.white, fontFamily: "Gilroy"),
        ),
      ),
    );
  }
}

class LastNameField extends StatelessWidget {
  const LastNameField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 8),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white, // cor do texto digitado
          fontFamily: "Gilroy",
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_2_outlined, color: Colors.white),
          border: OutlineInputBorder(),
          labelText: "Sobrenome",
          hintText: "Sobrenome",
          hintStyle: TextStyle(color: Colors.white, fontFamily: "Gilroy"),
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 8),
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

class ButtonRegistrar extends StatelessWidget {
  const ButtonRegistrar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
      child: ButtonTheme(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Registrar',
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

class RegisterWithGoogle extends StatelessWidget {
  const RegisterWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
      child: SizedBox(
        width: double.infinity,
        child: SignInButton(
          Buttons.google,
          text: "Registrar com Google",
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
            "Já tem uma conta? ",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(_createRoute_Login());
            },
            child: new Text(
              "Clique para logar",
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

Route _createRoute_Login() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Login(),
    transitionsBuilder: (_, animation, __, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOutCubic,
      );
      return FadeTransition(opacity: curved, child: child);
    },
  );
}

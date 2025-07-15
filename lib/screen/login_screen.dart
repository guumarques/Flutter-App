import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          child: Column(
            children: [
              Image.asset(
                "assets/images/calendar_icon.png",
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),

              // Texto "Bem-vindo de volta!" com contorno
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
              ),

              const SizedBox(height: 8),

              // Subtexto descritivo
              Text(
                'Organize sua rotina com facilidade.',
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),

              Padding(
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
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: "Gilroy",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
                child: PassWordField() 
              ),
            ],
          ),
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
    return TextFormField(
      obscureText: obscure,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: "Gilroy",
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            'assets/icons/password-svgrepo-com.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
          icon: SvgPicture.asset(
            obscure
                ? 'assets/icons/eye-password-see-view-svgrepo-com.svg' //se for verdadeiro
                : 'assets/icons/eye-password-show-svgrepo-com.svg', //se for falso
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: "Senha",
        hintText: "Senha",
        hintStyle: const TextStyle(
          color: Colors.white,
          fontFamily: "Gilroy",
        ),
      ),
    );
  }
}

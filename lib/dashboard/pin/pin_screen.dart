import 'package:bank_sha_modular/import_all.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final pinController = Modular.get<PinController>();

  @override
  void initState() {
    super.initState();
    pinController.addListener(() {
      if(!mounted){
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor(AppColor.colorDark),
      body: ListView(
        children: [
          const SizedBox(height: 36),
          Text(
              "Sha PIN",
              textAlign: TextAlign.center,
              style: AppStyle.whiteText.copyWith(fontSize: 20, fontWeight: FontWeight.w600)
          ),
          const SizedBox(height: 72),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextFormField(
                controller: pinController.pinController,
                textAlign: TextAlign.center,
                obscureText: true,
                obscuringCharacter: "*",
                cursorColor: AppColor("262939"),
                enabled: false,
                style: AppStyle.whiteText.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 14,
                ),
                decoration: InputDecoration(
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor("262939")),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor("262939")),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  PinKeyboard(number: 1, onTap: () => pinController.doAddPin("1")),
                  PinKeyboard(number: 2, onTap: () => pinController.doAddPin("2")),
                  PinKeyboard(number: 3, onTap: () => pinController.doAddPin("3")),
                  PinKeyboard(number: 4, onTap: () => pinController.doAddPin("4")),
                  PinKeyboard(number: 5, onTap: () => pinController.doAddPin("5")),
                  PinKeyboard(number: 6, onTap: () => pinController.doAddPin("6")),
                  PinKeyboard(number: 7, onTap: () => pinController.doAddPin("7")),
                  PinKeyboard(number: 8, onTap: () => pinController.doAddPin("8")),
                  PinKeyboard(number: 9, onTap: () => pinController.doAddPin("9")),
                  const SizedBox(width: 60, height: 60),
                  PinKeyboard(number: 0, onTap: () => pinController.doAddPin("0")),
                  PinKeyboard(
                    onTap: () => pinController.doDeletePin(),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor(AppColor.colorWhite),
                      size: 24,
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}

class PinKeyboard extends StatelessWidget {
  final int? number;
  final Widget? child;
  final void Function()? onTap;

  const PinKeyboard({
    super.key,
    this.number,
    this.child,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: AppColor("1A1D2E")
        ),
        child: Center(
          child: child ?? Text(number.toString(), style: AppStyle.whiteText.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w700
          )),
        ),
      ),
    );
  }
}

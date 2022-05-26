part of '../view.dart';

class TradeTypeRowButtons extends StatefulWidget {
  const TradeTypeRowButtons({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final AuthController controller;
  @override
  State<TradeTypeRowButtons> createState() => _TradeTypeRowButtonsState();
}

class _TradeTypeRowButtonsState extends State<TradeTypeRowButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BaseButton(
          height: 35,
          width: sizeFromWidth(context, 2.3),
          label: 'Live',
          onPressed: () {
            setState(() {
              widget.controller.toggle = true;
            });
          },
          onPrimary:
              widget.controller.toggle ? Colors.white : const Color(0xff4EA831),
          primary:
              widget.controller.toggle ? const Color(0xff4EA831) : Colors.white,
        ),
        BaseButton(
          height: 35,
          width: sizeFromWidth(context, 2.3),
          label: 'Paper Trading',
          onPressed: () {
            setState(() {
              widget.controller.toggle = false;
            });
          },
          onPrimary: widget.controller.toggle == false
              ? Colors.white
              : const Color(0xff4EA831),
          primary: widget.controller.toggle == false
              ? const Color(0xff4EA831)
              : Colors.white,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PinCodePoints extends StatefulWidget {
  const PinCodePoints({
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.hasError,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  final int pinCodeLength;
  final int pinFilledCodeLength;
  final bool hasError;
  final bool isLoading;

  @override
  _PinCodePointsState createState() => _PinCodePointsState();
}

class _PinCodePointsState extends State<PinCodePoints>
    with TickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    animation = Tween<double>(begin: widget.pinCodeLength.toDouble(), end: 0)
        .animate(controller)
      ..addListener(() async {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) async {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          await Future<dynamic>.delayed(const Duration(milliseconds: 250));
          controller.forward();
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant PinCodePoints oldWidget) {
    if (oldWidget.isLoading != widget.isLoading && widget.isLoading) {
      Future<dynamic>.delayed(const Duration(milliseconds: 250)).then((_) {
        controller.forward();
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
          widget.pinCodeLength,
          (int index) => _Point(
            hasError: widget.hasError,
            isFilled: index < animation.value.toInt(),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        widget.pinCodeLength,
        // animation.value.toInt(),
        (int index) => _Point(
          hasError: widget.hasError,
          isFilled: index < widget.pinFilledCodeLength,
        ),
      ),
    );
  }
}

class _Point extends StatelessWidget {
  const _Point({
    required this.hasError,
    required this.isFilled,
    Key? key,
  }) : super(key: key);

  final bool hasError;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    Color bgColor = Colors.transparent;

    if (isFilled) {
      bgColor = Theme.of(context).primaryColor;
    }

    if (hasError) {
      bgColor = Theme.of(context).errorColor;
    }

    return Container(
      width: 16,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(96.0),
        border: Border.all(
          color: Colors.black.withOpacity(isFilled || hasError ? 0.0 : 0.6),
        ),
      ),
    );
  }
}

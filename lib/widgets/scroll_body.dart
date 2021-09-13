import 'package:flutter/material.dart';

class ScrollBody extends StatelessWidget {
  const ScrollBody({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.minHeight,
            ),
            child: child,
          ),
        );
      },
    );
  }
}

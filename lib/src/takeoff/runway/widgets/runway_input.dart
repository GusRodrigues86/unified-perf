import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RunwayInput extends StatefulWidget {
  const RunwayInput({required this.label, required this.suffix, super.key});

  final String label;
  final String suffix;

  @override
  State<RunwayInput> createState() => _RunwayInputState();
}

class _RunwayInputState extends State<RunwayInput> {
  late final TextEditingController toraController;
  late final FocusNode toraFocus;

  @override
  void initState() {
    super.initState();
    toraController = TextEditingController(text: '0');
    toraFocus = FocusNode();
  }

  @override
  void dispose() {
    toraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      // onChanged: ,
      focusNode: toraFocus,
      controller: toraController,
      keyboardType: const TextInputType.numberWithOptions(signed: true),
      decoration: InputDecoration(
        focusColor: theme.colorScheme.tertiary,
        labelStyle: TextStyle(color: theme.colorScheme.tertiary),
        labelText: widget.label,
        suffixText: widget.suffix,
      ),
      style: theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.tertiary,
      ),
      inputFormatters: <TextInputFormatter>[
        // for below version 2 use this
        FilteringTextInputFormatter.allow(RegExp('\\d')),
// for version 2 and greater youcan also use this
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}

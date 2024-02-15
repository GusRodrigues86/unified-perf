import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../settings/provider/units_provider.dart';
import '../runway.dart';

class RunwayData extends ConsumerStatefulWidget {
  const RunwayData({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RunwayDataState();
}

class _RunwayDataState extends ConsumerState<RunwayData> {
  late final TextEditingController toraController;
  late final TextEditingController todaController;
  late final TextEditingController asdaController;
  late final FocusNode toraFocus;
  late final FocusNode todaFocus;
  late final FocusNode asdaFocus;

  @override
  void initState() {
    super.initState();
    toraController = TextEditingController(text: '0');
    todaController = TextEditingController(text: '0');
    asdaController = TextEditingController(text: '0');

    toraFocus = FocusNode();
    todaFocus = FocusNode();
    asdaFocus = FocusNode();
  }

  @override
  void dispose() {
    toraController.dispose();
    todaController.dispose();
    asdaController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final suffix = ref.watch(unitSettingsProvider).lengthInFeet ? 'ft' : 'm';

    return Column(
      children: [
        RunwayInput(label: 'TORA', suffix: suffix),
        TextField(
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          focusNode: todaFocus,
          controller: todaController,
          keyboardType: const TextInputType.numberWithOptions(signed: true),
          decoration: InputDecoration(
            focusColor: theme.colorScheme.tertiary,
            labelStyle: TextStyle(color: theme.colorScheme.tertiary),
            labelText: 'TODA',
            suffixText: suffix,
          ),
        ),
        TextField(
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.tertiary,
          ),
          focusNode: asdaFocus,
          controller: asdaController,
          keyboardType: const TextInputType.numberWithOptions(signed: true),
          decoration: InputDecoration(
            focusColor: theme.colorScheme.tertiary,
            labelStyle: TextStyle(color: theme.colorScheme.tertiary),
            labelText: 'ASDA',
            suffixText: suffix,
          ),
        ),
      ],
    );
  }
}

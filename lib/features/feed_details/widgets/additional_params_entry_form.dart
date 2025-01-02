import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_feed/features/feed_details/bloc/feed_details_cubit.dart';

class AdditionalParamsEntryForm extends StatefulWidget {
  final String originalUrl;
  final List<String?> requiredParams;

  const AdditionalParamsEntryForm({
    super.key,
    required this.originalUrl,
    required this.requiredParams,
  });

  @override
  State<AdditionalParamsEntryForm> createState() =>
      _AdditionalParamsEntryFormState();
}

class _AdditionalParamsEntryFormState extends State<AdditionalParamsEntryForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> paramValuesMap = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Please enter required params to proceed:"),
        Form(
          key: _formKey,
          child: Column(
            children: [
              ...widget.requiredParams.map(
                (rp) => rp?.isNotEmpty == true
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onSaved: (value) => paramValuesMap[rp!] = value ?? "",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter param value';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: rp,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<FeedDetailsCubit>().formUrlAndLoad(
                          widget.originalUrl,
                          paramValuesMap,
                        );
                  }
                },
                child: Text("Proceed"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class StepperLearn extends StatefulWidget {
  const StepperLearn({Key? key}) : super(key: key);

  @override
  State<StepperLearn> createState() => _StepperLearnState();
}

class _StepperLearnState extends State<StepperLearn> {
  int currentStep = 0;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final address = TextEditingController();
  final postCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Stepper"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: Colors.deepPurpleAccent,
          ),
        ),
        child: Stepper(
          type: StepperType.vertical,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              print("Completed");
            } else {
              setState(() {
                currentStep += 1;
              });
            }
          },
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }),
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: const Text("Account"),
          content: Column(
            children: [
              TextFormField(
                controller: firstName,
                decoration: const InputDecoration(
                  labelText: "First Name",
                ),
              ),
              TextFormField(
                controller: lastName,
                decoration: const InputDecoration(
                  labelText: "Last Name",
                ),
              ),
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: const Text("Address"),
          content: Column(
            children: [
              TextFormField(
                controller: address,
                decoration: const InputDecoration(
                  labelText: "Address",
                ),
              ),
              TextFormField(
                controller: postCode,
                decoration: const InputDecoration(
                  labelText: "Postcode",
                ),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text("Complete"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name: ${firstName.text}"),
                  Text("Last Name: ${lastName.text}"),
                  Text("Address: ${address.text}"),
                  Text("Postcode: ${postCode.text}"),
                ],
              ),
            ],
          ),
        ),
      ];
}

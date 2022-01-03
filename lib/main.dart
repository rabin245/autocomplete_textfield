import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  final addressController = TextEditingController();

  final phoneController = TextEditingController();

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  final emailAddController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Personal Details',
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(labelText: 'Name'),
                  controller: nameController,
                  autofillHints: const [AutofillHints.name],
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email'),
                  controller: emailController,
                  autofillHints: const [AutofillHints.email],
                ),
              ],
            ),
            AutofillGroup(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Firstname & Lastname',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(labelText: 'Name'),
                    controller: fnameController,
                    autofillHints: const [AutofillHints.givenName],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(labelText: 'Email'),
                    controller: lnameController,
                    autofillHints: const [AutofillHints.familyName],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Shipping Address',
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: const InputDecoration(labelText: 'Address'),
                  controller: addressController,
                  autofillHints: const [AutofillHints.addressCity],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Phone Number',
                  style: Theme.of(context).textTheme.headline5,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  controller: phoneController,
                  // autofillHints: const [AutofillHints.telephoneNumber],
                  autofillHints: const [AutofillHints.telephoneNumberNational],
                ),
              ],
            ),
            AutofillGroup(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Username & Password',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(labelText: 'Username'),
                    controller: userNameController,
                    autofillHints: const [AutofillHints.username],
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(labelText: 'Password'),
                    controller: passwordController,
                    autofillHints: const [AutofillHints.password],
                    onEditingComplete: () => TextInput.finishAutofillContext(),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Email & Password',
                  style: Theme.of(context).textTheme.headline5,
                ),
                AutofillGroup(
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(labelText: 'Email'),
                        controller: emailAddController,
                        autofillHints: const [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        controller: passController,
                        autofillHints: const [AutofillHints.password],
                        onEditingComplete: () =>
                            TextInput.finishAutofillContext(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

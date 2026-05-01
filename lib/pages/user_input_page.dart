import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});
  static const routeName = '/user-input';

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final TextEditingController _nameController = TextEditingController();
  String result = '';

  void submitName() {
    setState(() {
      result = _nameController.text.isEmpty ? 'Masukkan nama terlebih dahulu.' : 'Halo, ${_nameController.text}!';
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Input Example'), backgroundColor: const Color(0xFF3B5BA5)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Coba masukkan nama kamu di bawah ini:',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF2A2E3F),
                hintText: 'Nama kamu',
                hintStyle: const TextStyle(color: Colors.white38),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: submitName,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7D8CED),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                minimumSize: const Size.fromHeight(48),
              ),
              child: const Text('Tampilkan'),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2E3F),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                result.isEmpty ? 'Hasil akan muncul di sini.' : result,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

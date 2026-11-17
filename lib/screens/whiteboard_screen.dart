import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class WhiteboardScreen extends StatefulWidget { const WhiteboardScreen({super.key}); @override State<WhiteboardScreen> createState() => _WhiteboardScreenState(); }
class _WhiteboardScreenState extends State<WhiteboardScreen> {
  final _ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Whiteboard')),
      body: Column(children: [
        Expanded(child: TextField(controller: _ctrl, maxLines: null, expands: true, decoration: const InputDecoration(border: OutlineInputBorder()))),
        Row(children: [
          Expanded(child: ElevatedButton(onPressed: () => Clipboard.setData(ClipboardData(text: _ctrl.text)), child: const Text('Copy'))),
          Expanded(child: ElevatedButton(onPressed: () async { final d = await Clipboard.getData('text/plain'); _ctrl.text += d?.text ?? ''; }, child: const Text('Paste'))),
        ])
      ]),
    );
  }
}

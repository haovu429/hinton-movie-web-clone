import 'dart:async';
import 'dart:html';
import 'dart:typed_data';

Future<Uint8List> blobToUint8List(Blob blob) async {
  var reader = FileReader();
  reader.readAsArrayBuffer(blob);
  await reader.onLoad.first;
  return reader.result as Uint8List;
}
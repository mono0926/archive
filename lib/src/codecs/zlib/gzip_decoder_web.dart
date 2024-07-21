import 'dart:typed_data';

import '../../util/input_stream.dart';
import '../../util/output_stream.dart';
import '_gzip_decoder_web.dart';
import '_zlib_decoder_base.dart';

class GZipDecoderWeb extends ZLibDecoderBase {
  const GZipDecoderWeb();

  @override
  Uint8List decodeBytes(List<int> data, {bool verify = false}) =>
      platformGZipDecoder.decodeBytes(data, verify: verify);

  @override
  bool decodeStream(InputStream input, OutputStream output,
          {bool verify = false}) =>
      platformGZipDecoder.decodeStream(input, output, verify: verify);
}

// @dart=2.9
import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class UploadDiagnosticVideoCall {
  static Future<ApiCallResponse> call({
    String diagnosticVideo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadDiagnosticVideo',
      apiUrl: 'www.google.com',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'diagnosticVideo': diagnosticVideo,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

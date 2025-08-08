import 'package:auropay_payments/models/auropay_builder.dart';
import 'package:auropay_payments/models/auropay_response.dart';

import 'auropay_payments_platform_interface.dart';

class AuropayPayments {
  /// initiate payment with required data
  Future<AuropayResponse> doPayment(
      {required AuropayBuilder builder,
      required double amount,
      String? referenceNumber}) async {
    try {
      final response = await AuropayPaymentsPlatform.instance
          .doPayment(builder: builder, amount: amount, referenceNumber: referenceNumber);
      return AuropayResponse.fromJson(response!);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}

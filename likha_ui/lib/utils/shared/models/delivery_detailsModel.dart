// ignore_for_file: non_constant_identifier_names

class DeliveryDetailsSendPackage {
  final String branch_sender;
  final String branch_address;
  final String contact_sender;

  final String city_branch;
  final String adress_recipient;
  final String contact_recipient;
  final String units;
  final String months;

  DeliveryDetailsSendPackage(
      {required this.branch_sender,
      required this.branch_address,
      required this.contact_sender,
      required this.city_branch,
      required this.adress_recipient,
      required this.contact_recipient,
      required this.units,
      required this.months});
}

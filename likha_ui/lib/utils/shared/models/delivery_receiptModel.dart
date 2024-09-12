// ignore_for_file: non_constant_identifier_names

class CustomerInfo {
  final String customer_name;
  final String address;
  final String contact_person;
  final String contact_no;
  final String delivery_date;
  final String delivery_number;

  CustomerInfo(
      {required this.customer_name,
      required this.address,
      required this.contact_person,
      required this.contact_no,
      required this.delivery_date,
      required this.delivery_number});
}

class OrderInfo {
  final List<List<String>> quantity;
  final List<List<String>> units;
  final List<List<String>> qty;
  final List<List<String>> item;
  final List<List<String>> price;
  final List<List<String>> total;
  final List<List<String>> no_months;
  final List<List<String>> no_units;

  OrderInfo({
    required this.quantity,
    required this.units,
    required this.qty,
    required this.item,
    required this.price,
    required this.total,
    required this.no_months,
    required this.no_units,
  });
}

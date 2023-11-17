enum OrderStatus {
  invalidOrder(null),
  orderPlace('ORDER PLACED'),
  orderAccepted('ORDER ACCEPTED'),
  orderInProgress('ORDER PICK UP IN PROGRESS'),
  orderToCustomer('ORDER ON THE WAY TO CUSTOMER'),
  orderArrived('ORDER ARRIVED'),
  orderDelivered('ORDER DELIVERED');

  const OrderStatus(this.status);

  final String? status;
}

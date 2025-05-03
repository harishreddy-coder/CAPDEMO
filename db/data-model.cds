namespace my.salesordercustom;

entity SalesOrderscustom {
   key ID          : Integer;
      description : String(50) not null;
      customerNo  : String(10);
      item        : Association to many SalesOrderItemscustom
                      on item.salesOrder = $self;
      virtual overBookingInd : Boolean;
      virtual totalQuantity  : Decimal(10, 2);
}

entity SalesOrderItemscustom {
  key salesOrder : Association to one SalesOrderscustom;
  key item       : Integer;
      material   : String(18);
      quantity   : Decimal(10, 2);
}

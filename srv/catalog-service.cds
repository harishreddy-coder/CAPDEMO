using my.salesordercustom as my from '../db/data-model.cds';

service CatalogService {
    //Direct Entities
    entity SalesOrders     as projection on my.SalesOrderscustom;
    entity SalesOrderItems as projection on my.SalesOrderItemscustom;
}

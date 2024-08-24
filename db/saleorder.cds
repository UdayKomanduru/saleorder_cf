namespace app.saleorder;
using { managed } from '@sap/cds/common';

type String50 : String(50);


entity saleorder_header: managed {
    key order_id: UUID;
    saleorder_item: Association to many saleorder_item on saleorder_item.order_id = $self;
}

entity saleorder_item {
    key order_id : Association to one saleorder_header;
    key item_id: UUID;
    product_name: String50;
    amount:  Decimal(5, 2);

}

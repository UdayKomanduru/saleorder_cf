using app.saleorder from '../db/saleorder.cds';


service saleorder_header{
    entity saleorder_header as projection on saleorder.saleorder_header;

    entity saleorder_item as projection on saleorder.saleorder_item;
}
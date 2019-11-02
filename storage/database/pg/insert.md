若不存在，则插入，否则修改

insert into order_sku (order_id,store_id,sku_no,quantity) VALUES (42,'1000','6901028150', 10) on conflict(order_id,sku_no) do update set quantity=order_sku.quantity+10;

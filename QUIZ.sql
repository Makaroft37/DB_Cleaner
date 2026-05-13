USE cleaner;
show tables;
describe pago;
select * from pago;  

select distinct forma_pago from pago; /*paypal, transferencia, cheque*/

insert into pago (id_transaccion, codigo_cliente, forma_pago, fecha_pago, total)
values('ak-std-000027', 4, 'Paypal', sysdate(), 5000); /*Comando para incertar pago*/

insert into pago (id_transaccion, codigo_cliente, forma_pago, fecha_pago, total)
values('ak-std-000028', 4, 'Paypal', sysdate(), 300); /*Comando para incertar pago de nuevo */        


create table logs (
id int auto_increment primary key,
mensaje varchar(100),
fecha timestamp default current_timestamp);
   
CREATE EVENT revision_juan
on schedule every 1 minute
do
insert into logs(mensaje)
    values('Evento ejecutando aitomaticamente');

show events;
show variables like 'event_scheduler';


set global event_scheduler = on;

   

drop event revision_juan;
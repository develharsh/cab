select bookings.from_place, bookings.to_place, bookings.on_date, bookings.round_trip, bookings.return_date, bookings.driver_name, bookings.driver_phone, bookings.total_cost, bookings.paid,
customers.name as cust_name, customers.phone as cust_phone,
vehicles.title, vehicles.reg_no, vehicles.image, vehicles.perkm, vehicles.nightcost
from bookings 
inner join customers on customers.id=bookings.customer 
inner join vehicles on vehicles.id=bookings.vehicle 
where customers.id=2;
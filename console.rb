require_relative('models/film')
require_relative('models/customer')
require_relative('models/ticket')

require('pry')

Film.delete_all()
Customer.delete_all()
Ticket.delete_all()

  film1 = Film.new({
    'title' => 'My Neighbour Totoro',
    'price' => '5'
    })
  film1.save()

  film2 = Film.new({
    'title' => 'Spirited Away',
    'price' => '6'
    })
  film2.save()

  film3 = Film.new({
    'title' => 'The Wind Rises',
    'price' => '4'
    })
  film3.save()


  customer1 = Customer.new({
    'name' => 'Hayao Miyazaki',
    'funds' => 13
    })
  customer1.save()

  customer2 = Customer.new({
    'name' => 'Joe Hisaishi',
    'funds' => 15
    })
  customer2.save()


  ticket1 = Ticket.new({
    'film_id' => film1.id,
    'customer_id' => customer1.id
    })
  ticket1.save()

  ticket2 = Ticket.new({
    'film_id' => film2.id,
    'customer_id' => customer2.id
    })
  ticket2.save()

  ticket3 = Ticket.new({
    'film_id' => film3.id,
    'customer_id' => customer1.id
    })
  ticket3.save()

  binding.pry
  nil

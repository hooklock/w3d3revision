require('pry-byebug')
require_relative('./models/car')
require_relative('./models/dealer')

franks = Dealer.new({'name' => 'Franks Ford', 'address1' => 'Great Western Road', 'make' => 'Ford'}).save()
ants = Dealer.new({'name' => 'Anthonys Astons', 'address1' => 'Princes Street', 'make' => 'Aston Martin'}).save()
victors =  Dealer.new({'name' => 'Vicotrs Volvos', 'address1' => 'Waterloo Street', 'make' => 'Volvo'}).save()

ford1 = Car.new({'version' => 'Fiesta', 'fuel' => 'Petrol', 'engine' => '1.6', 'transmission' => 'Manual', 'picture' => 'http://media5.autotrader.co.uk/media/7f4abcaa9ebe4065b7447a530c0688b1?width=699', 'dealer_id' => franks.id}).save()
ford2 = Car.new({'version' => 'Focus', 'fuel' => 'Petrol', 'engine' => '1.8', 'transmission' => 'Manual', 'picture' => 'http://www.ford.com/resources/ford/focus/2016/enhancedhighlights/fcs16_st_pg_001_960.jpg', 'dealer_id' => franks.id}).save()
ford3 = Car.new({'version' => 'Mondeo', 'fuel' => 'Diesel', 'engine' => '2.0', 'transmission' => 'Automatic', 'picture' => 'http://cdn1.autoexpress.co.uk/sites/autoexpressuk/files/0/96//fordmondeo-5door_05.jpg', 'dealer_id' => franks.id}).save()
aston1 = Car.new({'version' => 'Cygnet', 'fuel' => 'Petrol', 'engine' => '1.3', 'transmission' => 'Manual', 'picture' => 'http://media.caranddriver.com/images/09q4/300858/2011-aston-martin-cygnet-photo-317056-s-429x262.jpg', 'dealer_id' => ants.id}).save()
aston2 = Car.new({'version' => 'DB11', 'fuel' => 'Petrol', 'engine' => '5.2', 'transmission' => 'Automatic', 'picture' => 'http://gtspirit.com/wp-content/uploads/2016/03/Aston-Martin-DB11-7.jpg', 'dealer_id' => ants.id}).save()
aston3 = Car.new({'version' => 'DB6', 'fuel' => 'Petrol', 'engine' => '4.0', 'transmission' => 'Manual', 'picture' => 'http://i.auto-bild.de/ir_img/6/8/4/4/5/9/Aston-Martin-DB5-von-James-Bond-729x486-b3f76f96d95f033f.jpg', 'dealer_id' => ants.id}).save()
volvo1 = Car.new({'version' => 'V40', 'fuel' => 'Diesel', 'engine' => '1.6', 'transmission' => 'Manual', 'picture' => 'https://s-media-cache-ak0.pinimg.com/736x/fc/d4/a8/fcd4a8e038ac8b380d3e349688630ebb.jpg', 'dealer_id' => victors.id}).save()
volvo2 = Car.new({'version' => 'XC60', 'fuel' => 'Diesel', 'engine' => '2.5', 'transmission' => 'Automatic', 'picture' => 'http://v.images.boldride.com/volvo/2014/volvo-xc60-r-design.2000x1333.Mar-27-2013_11.09.05.440018.jpg', 'dealer_id' => victors.id}).save()
volvo3 = Car.new({'version' => 'XC90', 'fuel' => 'Diesel', 'engine' => '2.0', 'transmission' => 'Automatic', 'picture' => 'http://media.caranddriver.com/images/media/634455/2016-volvo-xc90-t6-r-design-photo-634457-s-986x603.jpg', 'dealer_id' => victors.id}).save()


binding.pry
nil
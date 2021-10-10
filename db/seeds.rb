# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Customergroup.create!(party: 'Hendersons', partyquantity: 2, customerstatus: 'Preferred')
c2 = Customergroup.create!(party: 'Parkers and McMillens', partyquantity: 4, customerstatus: 'General')
c3 = Customergroup.create!(party: 'Jessica, Jack, and Susan', partyquantity: 3, customerstatus: 'General')
c4 = Customergroup.create!(party: 'Denzel Arlington', partyquantity: 1, customerstatus: 'Preferred')
c5 = Customergroup.create!(party: 'Dan Jacobs and Janice Thomson', partyquantity: 2, customerstatus: 'Diamond VIP')
c6 = Customergroup.create!(party: 'Wensingtons', partyquantity: 2, customerstatus: 'Diamond Elite VIP')
c7 = Customergroup.create!(party: 'The Ellison Family', partyquantity: 5, customerstatus: 'General')

b1 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'Pinot Grigio', price: '$5.99', drysweet: 'Semi-Sweet', alcoholcontent: '12.5%', img_src: 'barefoot.jpg')
b2 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'White Zinfindel', price: '$5.99', drysweet: 'Sweet', alcoholcontent: '9%', img_src: 'barefoot.jpg')
b3 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'California Cabernet Sauvignon', price: '$5.99', drysweet: 'Dry', alcoholcontent: '13.5%', img_src: 'barefoot.jpg')
b4 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'Moscato', price: '$5.99', drysweet: 'Sweet', alcoholcontent: '9%', img_src: 'barefoot.jpg')
b5 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'Pink Moscato', price: '$5.99', drysweet: 'Sweet', alcoholcontent: '9%', img_src: 'barefoot.jpg')
b6 = Brandofwine.create!(brand: 'barefoot', age: 2021, winetype: 'Merlot', price: '$5.99', drysweet: 'Dry', alcoholcontent: '13%', img_src: 'barefoot.jpg')
b7 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2019, winetype: 'Red Blend', price: '$19.97', drysweet: 'Sweet', alcoholcontent: '13.5%', img_src: 'black-girl-magic.jpg')
b8 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2018, winetype: 'Merlot', price: '$17.99', drysweet: 'Dry', alcoholcontent: '13.5%', img_src: 'black-girl-magic.jpg')
b9 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2018, winetype: 'Zinfandel', price: '$24.99', drysweet: 'Dry', alcoholcontent: '13.5%', img_src: 'black-girl-magic.jpg')
b10 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2020, winetype: 'Riesling', price: '$19.99', drysweet: 'Semi-Sweet', alcoholcontent: '13.5%', img_src: 'black-girl-magic.jpg')
b11 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2021, winetype: 'Sparkling Brut', price: '$28.49', drysweet: 'Dry', alcoholcontent: '13%', img_src: 'black-girl-magic.jpg')
b12 = Brandofwine.create!(brand: 'Black Girl Magic', age: 2020, winetype: 'Moscato Rose', price: '$16.19', drysweet: 'Sweet', alcoholcontent: '13.5%', img_src: 'black-girl-magic.jpg')
b13 = Brandofwine.create!(brand: 'Bottega Gold', age: 2021, winetype: 'Brut', price: '$35', drysweet: 'Dry', alcoholcontent: '11%', img_src: 'bottega.jpg')
b14 = Brandofwine.create!(brand: 'Bottega Rose Gold', age: 2021, winetype: 'Pinot Nior', price: '$35', drysweet: 'Sweet', alcoholcontent: '11.5%', img_src: 'bottega.jpg')
b15 = Brandofwine.create!(brand: 'Bottega White Gold', age: 2021, winetype: 'Pinot Nior', price: '$35', drysweet: 'Dry', alcoholcontent: '12%', img_src: 'bottega.jpg')
b16 = Brandofwine.create!(brand: 'Krug', age: 2021, winetype: 'Brut', price: '$179.99', drysweet: 'Dry', alcoholcontent: '12%', img_src: 'krug.jpg')
b17 = Brandofwine.create!(brand: 'One Hope', age: 2021, winetype: 'Brut', price: '$39', drysweet: 'Dry', alcoholcontent: '11.5%', img_src: 'one-hope-brut.jpg')
b18 = Brandofwine.create!(brand: 'One Hope', age: 2019, winetype: 'Pinot Nior', price: '$35', drysweet: 'Dry', alcoholcontent: '12.5%', img_src: 'one-hope-pinot-nior.jpg')
b19 = Brandofwine.create!(brand: "Risata Moscato D'Asti", age: 2020, winetype: 'Moscato', price: '$12.99', drysweet: 'Sweet', alcoholcontent: '5.5%', img_src: 'risata-moscato-dasti.jpg')
b20 = Brandofwine.create!(brand: 'Stella Rose', age: 2021, winetype: 'Red Blend', price: '$12.99', drysweet: 'Sweet', alcoholcontent: '5%', img_src: 'stella-rosa-red.jpg')
b21 = Brandofwine.create!(brand: 'Sun Goddess', age: 2019, winetype: 'Pinot Grigio', price: '$19.99', drysweet: 'dry', alcoholcontent: '12.5%', img_src: 'sun-goddess.jpg')
b22 = Brandofwine.create!(brand: 'Sun Goddess', age: 2019, winetype: 'Sauvignon Blanc', price: '$19.99', drysweet: 'Dry', alcoholcontent: '12.5%', img_src: 'sun-goddess.jpg')
b23 = Brandofwine.create!(brand: 'Usual', age: 2019, winetype: 'Red Blend', price: '$8', drysweet: 'Sweet', alcoholcontent: '14%', img_src: 'usual.jpg')
b24 = Brandofwine.create!(brand: 'Usual', age: 2021, winetype: 'Brut', price: '$8', drysweet: 'Dry', alcoholcontent: '12%', img_src: 'usual.jpg')
b25 = Brandofwine.create!(brand: 'Usual', age: 2020, winetype: 'Moscato Rose', price: '$8', drysweet: 'Semi-Sweet', alcoholcontent: '13.5%', img_src: 'usual.jpg')

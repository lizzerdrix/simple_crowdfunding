# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Donation.create([{ 
    level: 'Level One: Thank You Note', 
    price: 20, 
    level_descrip: 'I will mail you a hand-drawn thank you note.'
    },
  {
    level: 'Level Two: Flat Stanley',
    price: 50,
    level_descrip: 'I will mail you a hand-drawn thank you note and draw a picture of your face. While at RubyConf, I will take at least one selfie with the drawing of your face, Flat Stanley style.'
  },
  {
    level: 'Level Three: Flat Stanley PLUS!',
    price: 100,
    level_descrip: 'Everything above, PLUS I will mail you the original drawing of your face.'
  },
  {
    level: 'Level Four: MASTER OF THE UNIVERSE!',
    price: 300,
    level_descrip: "Get every single wonderful thing from the previous levels, PLUS I will make a very special musical 'thank you' video calling you (and any other sponsors at this level) out by name! I'll also draw you up a custom certificate, officially denoting your status as a MASTER OF THE UNIVERSE!"
  }
  ])

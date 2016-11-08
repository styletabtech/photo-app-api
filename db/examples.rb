# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: '111',
               password_confirmation: nil)
end

spots = Spot.create([
              { name: 'Boston Public Garden',
                address: '4 Charles St',
                city: 'Boston',
                state: 'MA',
                zip: 02116,
                description: 'The Public Garden is a large park located in the heart of Boston, MA, adjacent to the Boston Common.',
                user_id: 1
              },

              { name: 'Times Square',
                address: 'Times Square',
                city: 'New York City',
                state: 'NY',
                zip: 10036,
                description: 'Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.',
                user_id: 1
              },

              { name: 'Lincoln Memorial Reflecting Pool',
                address: '2 Lincoln Memorial Circle NW',
                city: 'Washington',
                state: 'DC',
                zip: 20024,
                description: 'This huge, iconic pool on the National Mall reflects the Lincoln Memorial & the Washington Monument.',
                user_id: 2
              },

              { name: 'Wynnwood Walls',
                address: '2520 NW 2nd Ave',
                city: 'Miami',
                state: 'FL',
                zip: 33127,
                description: 'Unique outdoor destination featuring huge, colorful street murals by artists from around the globe.',
                user_id: 2
              },

              { name: 'Cloud Gate',
                address: 'AT&T Plaza',
                city: 'Chicago',
                state: 'IL',
                zip: 60601,
                description: 'Huge outdoor sculpture shaped like a bean & allowing for views from its many mirrored sides.',
                user_id: 3
              },

              { name: 'Urban Light',
                address: '5905 Wilshire Blvd',
                city: 'Los Angeles',
                state: 'CA',
                zip: 90036,
                description: 'Urban Light is a large-scale assemblage sculpture by Chris Burden. The installation consists of 202 restored street lamps from the 1920s and 1930s.',
                user_id: 1
              }
          ])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
    {email: 'test@test.com', password: '123', password_confirmation: '123' },
  ])

spots = Spot.create([
              { name: 'Boston Public Garden',
                address: '4 Charles St',
                city: 'Boston',
                state: 'MA',
                zip: 02116,
                description: 'The Public Garden is a large park located in the heart of Boston, MA, adjacent to the Boston Common.',
                user_id: 1,
              },

              { name: 'Christian Science Center',
                address: '250 Massachusetts Ave',
                city: 'Boston',
                state: 'MA',
                zip: 02115,
                description: 'The Christian Science Center is a 14.5-acre site with a reflection pool and fountain in the Fenway neighborhood of Boston, Massachusetts. The complex, including most of the landscape was designated as a Boston Landmark by the Boston Landmarks Commission in 2011.',
                user_id: 1,
              },

              { name: 'Times Square',
                address: 'Times Square',
                city: 'New York City',
                state: 'NY',
                zip: 10036,
                description: 'Bustling destination in the heart of the Theater District known for bright lights, shopping & shows.',
                user_id: 1,
              },

              { name: 'Grand Central Terminal',
                address: '89 E 42nd St',
                city: 'New York City',
                state: 'NY',
                zip: 10017,
                description: 'Commonly referred to as Grand Central Station, the historic Grand Central Terminal is a famous NYC landmark in Midtown Manhattan and remains the busiest train station in the country.',
                user_id: 1,
              },

              { name: 'Lincoln Memorial Reflecting Pool',
                address: '2 Lincoln Memorial Circle NW',
                city: 'Washingtion',
                state: 'DC',
                zip: 20024,
                description: 'This huge, iconic pool on the National Mall reflects the Lincoln Memorial & the Washington Monument.',
                user_id: 1,
              },

              { name: 'National Arboretum',
                address: '3501 New York Ave NE',
                city: 'Washington',
                state: 'DC',
                zip: 20002,
                description: 'The United States National Arboretum is operated by the United States Department of Agriculture as a division of the Henry A. Wallace Beltsville Agricultural Research Center',
                user_id: 1,
              },

              { name: 'Wynnwood Walls',
                address: '2520 NW 2nd Ave',
                city: 'Miami',
                state: 'FL',
                zip: 33127,
                description: 'Unique outdoor destination featuring huge, colorful street murals by artists from around the globe.',
                user_id: 1,
              },

              { name: 'Port of Miami',
                address: '1015 North America Way',
                city: 'Miami',
                state: 'FL',
                zip: 33122,
                description: 'The Dante B. Fascell Port of Miami, now stylized as PortMiami, is a seaport located in Biscayne Bay in Miami, Florida, United States.',
                user_id: 1,
              },


              { name: 'Millennium Park Cloud Gate (“The Bean”)',
                address: '201 E. Randolph St.',
                city: 'Chicago',
                state: 'IL',
                zip: 60602,
                description: 'Huge outdoor sculpture shaped like a bean & allowing for views from its many mirrored sides.',
                user_id: 1,
              },

              { name: 'Buckingham Fountain',
                address: '301 South Columbus Drive',
                city: 'Chicago',
                state: 'IL',
                zip: 60605,
                description: 'Buckingham Fountain opened in 1927 and is one of the largest fountains in the world. It operates between April and October with water shows and a color-light show in the evenings.',
                user_id: 1,
              },

              { name: 'Urban Light',
                address: '5905 Wilshire Blvd',
                city: 'Los Angeles',
                state: 'CA',
                zip: 90036,
                description: 'Urban Light is a large-scale assemblage sculpture by Chris Burden. The installation consists of 202 restored street lamps from the 1920s and 1930s.',
                user_id: 1,
              },

              { name: 'Pink Wall at Paul Smith',
                address: '8221 Melrose Ave',
                city: 'Los Angeles',
                state: 'CA',
                zip: 90046,
                description: 'This all pink facade belongs to the Paul Smith store in West Hollywood, and it’s the only of its kind. Each of the brand’s locations boasts a different graphic design.',
                user_id: 1,
              }
          ])

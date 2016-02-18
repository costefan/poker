User.delete_all
users = User.create!([{email: "testuser@mail.com", password: "321321", password_confirmation: "321321"},
              {email: "testuser@yandex.ua", password: "123123", password_confirmation: "123123" },
              {email: "testuser2@mail.ua", password: "testcustomeruser", password_confirmation: "testcustomeruser" }
             ])

time_now = Time.now

PokerTable.delete_all
tables = PokerTable.create!([{name: "table1", start_date: time_now},
                    {name: "table2", start_date: time_now -= 1.day },
                    {name: "table3", start_date: time_now += 3.days },
                    {name: "table4", start_date: time_now += 2.days },
                   ])
UserTable.delete_all
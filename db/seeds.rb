# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
gender = ["男", "女"]
political_status = ["党员", "预备党员", "群众"]
nations = ["汉族","民族1","民族2","民族3","民族4","民族5"]
birthday = Array(Date.new(1940,1,1)..Date.new(1990,1,1))
mobile_value = "1"
10.times{mobile_value += rand(10).to_s}
start_work_date = Array(Date.new(1970,1,1)..Date.today)
join_company_date = Array(Date.new(1998,1,1)..Date.today)
statuses = ["离职","在职"]
marriage_statuses = ["已婚","未婚","其他"]
300.times do |i|
  e = Employee.create!(profile_number: "HCJL#{i}",
                       name: "张三#{i}",
                       gender: gender[rand(2)],
                       political_status: political_status[rand(3)],
                       nation: nations[rand(6)],
                       birthday: birthday[rand(birthday.length)].to_s,
                       join_company_date: join_company_date[rand(join_company_date.length)].to_s,
                       bank_card_number: "623455546353625"+"#{rand(1000..9999)}",
                       id_card_number: "53643637826162834"+"X",
                       status: statuses[rand(2)],
                       marriage_status: marriage_statuses[rand(3)]
                  )

end

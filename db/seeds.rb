# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'roo'
xlsx = Roo::Excelx.new("xlsx/ajoufood.xlsx")
#xlsx파일에 Sheet가 한 개 이상 존재할 경우 Sheet를 지정해주어야함
#xlsx.cell('A',1)이란 A열의 1행을 의미 즉 카테고리를 의미하며 이 경우 칼럼명이 변경되어도 상관없음
input = xlsx.sheet('Sheet1').parse(korea: xlsx.cell('A',1), japan: xlsx.cell('B',1), chinese: xlsx.cell('C',1), 
                                   soju: xlsx.cell('D',1),  beer: xlsx.cell('E',1),  meat: xlsx.cell('F',1))
    input.each.with_index do |item, index|
        next if index == 0
        Foodlist.create(item)
    end
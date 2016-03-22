//: Playground - noun: a place where people can play

import UIKit


let dateMaker = NSDateFormatter()
dateMaker.dateFormat = "HH:mm"
var mod1 = "08:25"
var mod2 = "08:47"
var mod3 = "09:10"
var mod4 = "09:30"
var mod5 = "09:55"
var mod6 = "10:17"
var mod7 = "10:40"
var mod8 = "11:02"
var mod9 = "11:25"
var mod10 = "11:45"
var mod11 = "12:10"
var mod12 = "12:32"
var mod13 = "12:55"
var mod14 = "13:17"
var mod15 = "13:40"
var mod16 = "14:00"
var mod17 = "14:25"
var mod18 = "14:47"
var mod19 = "15:10"


let regmodtimes: [String:String] = [
    mod1:"1",
    mod2:"2",
    mod3:"3",
    mod4:"4",
    mod5:"5",
    mod6:"6",
    mod7:"7",
    mod8:"8",
    mod9:"9",
    mod10:"10",
    mod11:"11",
    mod12:"12",
    mod13:"13",
    mod14:"14",
    mod15:"15",
    mod16:"16",
    mod17:"17",
    mod18:"18",
    mod19:"school's out"
]
regmodtimes[mod1]

let todaysDate:NSDate = NSDate()
let time:NSDateFormatter = NSDateFormatter()
time.dateFormat = "HH:mm" as String!
print(time)
let DateInHourFormat:String = time.stringFromDate(todaysDate)
let time1 = DateInHourFormat
if let mod = regmodtimes[time1] {
    print(mod)
}



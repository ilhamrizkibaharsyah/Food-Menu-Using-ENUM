//
//  main.swift
//  Food-Menu
//
//  Created by Ilham Rizki Baharsyah on 20/03/22.
//

import Foundation

// CREATE FUNCTION TO GET INPUT STRING AND INT FROM USER
// Function to get item from user
func getInput(message: String) -> String? {
    print(message, terminator: " ");
    return readLine()
}

func getInputInt(message: String) -> Int? {
    if let inputString = getInput(message: message) {
        return Int(inputString)
    } else {
        return nil
    }
}

// -------------------------------------------------------- //

// CREATE ENUM CLASS FOR LIST MENU FOOD, SNACK AND DRINK
// Enum class heavy meal
enum HeavyMeal: Int, CaseIterable {
    case BoiledPotatoes = 1, Eggs, Oatmeal, Fish, Soups, Meat
}

// Enum class snack meal
enum SnackMeal: Int, CaseIterable {
    case Chocolate = 1, Almonds, Yogurt, Pudding, Popcorn
}

// Enum class drink
enum Drink: Int, CaseIterable {
    case RedWine = 1, OrangeJuice, Tea, Coffe, Water
}

// -------------------------------------------------------- //

// CREATE FUNCTION TO SHOWING ALL ITEM IN ENUM CLASS (USING CaseIterable and allClases)
// Function for showing all item from Enum class
func showAllHeavyMeal(){
    var position = 1
    print("Heavy Meal\n")
    for heavyMeal in HeavyMeal.allCases {
        print("[\(position)] \(heavyMeal)")
        position += 1
    }
}

func showAllSnack(){
    var position = 1
    print("Snack\n")
    for snack in SnackMeal.allCases {
        print("[\(position)] \(snack)")
        position += 1
    }
}

func showAllDrink(){
    var position = 1
    print("Drink\n")
    for drink in Drink.allCases {
        print("[\(position)] \(drink)")
        position += 1
    }
}

// -------------------------------------------------------- //

// CREATE CODE TO GET ITEM ACCORDING IN THE ENUM CLASS
var total = 0
var item = ("","","")
func inputHeavyMeal(){
    if let position = getInputInt(message: "Choose heavy meal:") {
        if let heavyMeal = HeavyMeal(rawValue: position) {
            switch heavyMeal {
            case .BoiledPotatoes:
                total += 15000
                item.0 = "Boiled Potatoes"
            case .Eggs:
                total += 5000
                item.0 = "Eggs"
            case .Oatmeal:
                total += 35000
                item.0 = "Oatmeal"
            case .Fish:
                total += 12000
                item.0 = "Fish"
            case .Soups:
                total += 17000
                item.0 = "Soups"
            case .Meat:
                total += 25000
                item.0 = "Meat"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input not valid")
    }
}

func inputSnack(){
    if let position = getInputInt(message: "Choose snack:") {
        if let snack = SnackMeal(rawValue: position) {
            switch snack {
            case .Chocolate:
                total += 15000
                item.1 = "Chocolate"
            case .Almonds:
                total += 22000
                item.1 = "Almonds"
            case .Yogurt:
                total += 13000
                item.1 = "Yogurt"
            case .Pudding:
                total += 25000
                item.1 = "Pudding"
            case .Popcorn:
                total += 17000
                item.1 = "Popcorn"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input not valid")
    }
}

func inputDrink(){
    if let position = getInputInt(message: "Choose drink:") {
        if let drink = Drink(rawValue: position) {
            switch drink {
            case .RedWine:
                total += 75000
                item.2 = "Red Wine"
            case .OrangeJuice:
                total += 13000
                item.2 = "Orang Juice"
            case .Tea:
                total += 12000
                item.2 = "Tea"
            case .Coffe:
                total += 15000
                item.2 = "Coffe"
            case .Water:
                total += 3000
                item.2 = "Water"
            }
        } else {
            print("Position \(position) not found")
        }
    } else {
        print("Input not valid")
}
}

// CREATE FUNCTION TO SWOW MENU AND CALLING ANOTHER FUNCTION //
func menu(){
    print("Welcome to Dicoding Restaurant")
    print("------------------------------")
    showAllHeavyMeal()
    inputHeavyMeal()
    print("------------------------------")
    showAllSnack()
    inputSnack()
    print("------------------------------")
    showAllDrink()
    inputDrink()
    print("------------------------------")
    print("You choose \(item.0) + \(item.1) + \(item.2)")
    print("Total price is = Rp\(total)\n")
}

menu()

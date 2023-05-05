//
//  main.swift
//  BVN_6
//
//  Created by Mac on 05/05/2023.
//

import Foundation

var arrayStrings = [String]()

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map{ _ in letters.randomElement()! })
}

for _ in 1...10 {
    let length = Int(arc4random_uniform(5)) + 3
    let randomString = randomString(length: length)
    arrayStrings.append(randomString)
}

//MARK: - Bài 1: Tính tổng các số lẻ trong mảng
func bai1() {
    let arr = [1,2,3,4,5,6,7,8,9, nil]
    
    func check(_ num1: Int, _ num2: Int?) -> Int {
        if let num = num2 {
            if (num % 2 == 1) {
                return num1 + num
            }
            return num1
        }
        return num1

    }
    
    let sum = arr.reduce(0, check)
    
    print("Bài 1: \n- Tổng các số lẻ trong mảng là: \(sum)")
}

//MARK: - Bài 2: Tìm giá trị lớn nhất và nhỏ nhất trong mảng
func bai2() {
    let arr = [1,2,3,4,5,6,7,8,9, nil]
    let newArr = arr.compactMap { $0 }
    
    let min = newArr.min() ?? 0
    let max = newArr.max() ?? 0
    
    print("Bài 2: \n- Số nhỏ nhất trong mảng là: \(min) \n- Số lớn nhất trong mảng là: \(max)")
}

//MARK: - Bài 3: Tìm các chuỗi chứa từ “iOS” trong mảng
func bai3() {
    let arr : [String] = ["IOS", "IOA", "IOSA", "IOAS", "AIOSA"]
    
    let newArr = arr.filter { $0.contains("IOS") }
    
    print("Bài 3: \n- \(newArr)")
}

//MARK: - Bài 4: Tính tổng các phần tử trong mảng sau khi nhân với 2 và lọc bỏ các giá trị nil
func bai4() {
    let arr = [1,2,3,4,5,6,7,8,9, nil]
    let newArr = arr.compactMap { $0 }
    
    func check(_ num1: Int, _ num2: Int) -> Int {
            return num1 + num2
    }
    
    let sum = newArr.reduce(0, check)
    
    print("Bài 4: \n- Tổng bằng \(sum * 2)")
}

//MARK: - Bài 5: Tính trung bình cộng của một mảng số thực
func bai5() {
    let arr : [Double] = [1,2,3,4,5,6,7,8,9, 5.4, 2.6, 9.6]
    
    func check(_ num1: Double, _ num2: Double) -> Double { return num1 + num2 }
    
    let sum = arr.reduce(0, check)
    
    print("Bài 5: \n- Trung bình cộng xấp xỉ bằng \(String(format: "%.1f", sum / Double(arr.count)))")
}

//MARK: - Bài 6: Lấy ra tất cả các số chẵn lớn hơn hoặc bằng 10 trong một mảng
func bai6() {
    var evenNumbers = [Int]()

    while evenNumbers.count < 20 {
        let randomNumber = Int(arc4random_uniform(100))
        evenNumbers.append(randomNumber)
    }
    
    let newArr = evenNumbers.filter { $0 % 2 == 0 && $0 >= 10 }

    
    print("Bài 6: \n- Mảng cần tìm là \(newArr)")
}

//MARK: - Bài 7: Lấy ra tất cả các chuỗi có độ dài lớn hơn hoặc bằng 5 trong một mảng
func bai7() {
    let newArr = arrayStrings.filter { $0.count >= 5 }

    
    print("Bài 7: \n- Mảng cần tìm là \(newArr)")
}

//MARK: - Bài 8: Chuyển đổi một mảng các chuỗi thành các chuỗi in hoa
func bai8() {
    let newArr = arrayStrings.map { $0.uppercased() }

    
    print("Bài 8: \n- Mảng cần tìm là \(newArr)")
}

//MARK: - Bài 9: Tạo một mảng mới chỉ chứa phần tử là số nguyên trong một mảng có cả số nguyên và số thực
func bai9() {
    var evenNumbers = [Double]()

    while evenNumbers.count < 20 {
        let randomNumber_1 = Double(arc4random_uniform(100))
        let randomNumber_2 = Double.random(in: 1.0...100.0)
        evenNumbers.append(randomNumber_1)
        evenNumbers.append(randomNumber_2)
    }
    
    let newArr = evenNumbers.filter { $0.truncatingRemainder(dividingBy: 1) == 0 }
    
    print("Bài 9: \n- Mảng cần tìm là \(newArr)")
}

//MARK: - Bài 10: Lấy ra các phần tử là bội số của 3 và 5 trong một mảng số nguyên
func bai10() {
    var evenNumbers = [Int]()

    while evenNumbers.count < 50 {
        let randomNumber = Int(arc4random_uniform(100))

        evenNumbers.append(randomNumber)
    }
    
    let newArr = evenNumbers.filter { $0 % 3 == 0 && $0 % 5 == 0 }
    
    print("Bài 10: \n- Mảng cần tìm là \(newArr)")
}

bai1()
bai2()
bai3()
bai4()
bai5()
bai6()
bai7()
bai8()
bai9()
bai10()

//
//  ViewController.swift
//  palindrome
//
//  Created by Karthiga on 18/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sampleString = "radar"
        if isPalindrome(sampleString) {
            print("\(sampleString) is a palindrome!")
        } else {
            print("\(sampleString) is not a palindrome.")
        }
    }
    func isPalindrome(_ userString: String) -> Bool {

        let characters = Array(userString.lowercased())
        var initialIndex = 0
        var finalIndex = characters.count - 1
        while initialIndex < finalIndex {
            if characters[initialIndex] != characters[finalIndex] {
                return false
            }
            initialIndex += 1
            finalIndex -= 1
        }
        return true
    }

}


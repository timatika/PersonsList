//
//  Person.swift
//  PersonsList
//
//  Created by timatika on 09.11.2021.
//

import Foundation

struct Person {
    var personName: [String]
    var personSurname: [String]
    var personPhone: [String]
    var personEmail: [String]
}

var randomPerson = Person(personName: DataManager.personNames ,
                          personSurname: DataManager.pesonSurNames,
                          personPhone: DataManager.personPhones,
                          personEmail: DataManager.personEmails)

extension Person {
    static func getRandomFullName() -> ([String], [String], [String], [String]) {
        randomPerson.personName.shuffle()
        randomPerson.personSurname.shuffle()
        randomPerson.personPhone.shuffle()
        randomPerson.personEmail.shuffle()
        return (randomPerson.personName, randomPerson.personSurname, randomPerson.personPhone, randomPerson.personEmail)
    }
}

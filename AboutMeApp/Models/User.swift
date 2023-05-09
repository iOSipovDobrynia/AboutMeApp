//
//  User.swift
//  AboutMeApp
//
//  Created by Goodwasp on 09.05.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    func getUser() -> User {
        User(
            login: "Dobrynia",
            password: "Osipov",
            person: Person(
                shortDescription: "iOS Developer",
                lastUpdate: "09.09.2023",
                biography: "Hello World! My name is Dobrynia Osipov, and I'm a iOS Developer based in Moscow. I began my journey as a developer in January 2023 and I'm exploring various technologies and frameworks that pique my interest.",
                interests: [
                    Interes(image: "🪗", label: "Playing a masical instrument"),
                    Interes(image: "🎮", label: "Gaming"),
                    Interes(image: "🤸‍♂️", label: "Sport"),
                ],
                education: [
                    Institution(
                        type: .university,
                        beginingYear: 2017,
                        endYear: 2021,
                        place: "Moscow Power Engineering Institute",
                        location: "Moscow",
                        speciality: "Electrical Power Systems and Networks"
                    ),
                    Institution(
                        type: .university,
                        beginingYear: 2021,
                        endYear: 2023,
                        place: "Moscow Power Engineering Institute",
                        location: "Moscow",
                        speciality: "Engineering in electric power industry"
                    ),
                    Institution(
                        type: .course,
                        beginingYear: 2023,
                        endYear: 2023,
                        place: "SwiftBook",
                        location: "Moscow",
                        speciality: "iOS Developer"
                    )
                ]
            )
        )
    }
}

struct Person {
    let shortDescription: String
    let lastUpdate: String
    let biography: String
    let interests: [Interes]
    let education: [Institution]
}

struct Interes {
    let image: Character
    let label: String
}

struct Institution {
    let type: InstitutionType
    let beginingYear: Int
    let endYear: Int
    let place: String
    let location: String
    let speciality: String
}

enum InstitutionType: String {
    case university = "University"
    case course = "Course"
}


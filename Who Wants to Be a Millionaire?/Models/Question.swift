//
//  Questions.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

struct Question: Codable {
    
    var questions: String
    var answers: [String]
    var numbberOfAnswer: Int
    
}

class GameQuestions {
    
    var questionsCareTaker = QuestionsCareTaker()
    
    var gameQuestions: [Question] = [
        Question(questions: "Какое растение существует на самом деле?",
                 answers: ["Лох чилийский", "Лох индийский", "Лох греческий", "Лох русский"],
                 numbberOfAnswer: 1),
        Question(questions: "Что за место, попав в которое, человек делает селфи на кухне, которую не может себе позволить?",
                 answers: ["Лондон", "Париж", "IKEA", "Берлин"],
                 numbberOfAnswer: 2),
        Question(questions: "Какой город объявлен официальной родиной русского Деда Мороза?",
                 answers: ["Малая Вишера", "Великий Устюг", "Вышний Волочек", "Нижний Новгород"],
                 numbberOfAnswer: 1),
        Question(questions: "Что проводит боксер, наносящий удар противнику снизу?",
                 answers: ["Свинг", "Джэб", "Хук", "Апперкот"],
                 numbberOfAnswer: 3),
        Question(questions: "Кого нет среди смешариков?",
                 answers: ["Барана", "Свиньи", "Коня", "Лося"],
                 numbberOfAnswer: 2),
        Question(questions: "Как называется ближайшая к Земле звезда?",
                 answers: ["Проксиома Центавра", "Солнце", "Полярная", "Сириус"],
                 numbberOfAnswer: 1),
        Question(questions: "Какую площадь имеет клетка стандартной школьной тетради?",
                 answers: ["0.25 кв.см", "1 кв.см", "0.5 кв.см", "1.25 кв. см"],
                 numbberOfAnswer: 0),
        Question(questions: "Что происходит на соревнованиях по стрельбе, если соперники набрали одинаковое количество очков?",
                 answers: ["Перевербовка", "Перепалка", "Перебранка", "Перестрелка"],
                 numbberOfAnswer: 3),
        Question(questions: "Как назывались старинные русские пушки-гаубицы?",
                 answers: ["Кентавр", "Грифон", "Василиск", "Единорог"],
                 numbberOfAnswer: 3)
        ]
    
   
    
}


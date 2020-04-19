//
//  Questions.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

struct Questions: {
    let questions: String
    let answers: [String]
    let numbberOfAnswer: Int
}

let gameQuestions: [Questions] = [questions1, questions2, questions3, questions4, questions5, questions7, questions8, questions9, questions10]

// MARK: Вопросы
var questions1 = Questions(questions: "Какое растение существует на самом деле?",
                           answers: ["Лох чилийский", "Лох индийский", "Лох греческий", "Лох русский"],
                           numbberOfAnswer: 1)

var questions2 = Questions(questions: "Что за место, попав в которое, человек делает селфи на кухне, которую не может себе позволить?",
                           answers: ["Лондон", "Париж", "IKEA", "Берлин"],
                           numbberOfAnswer: 2)

var questions3 = Questions(questions: "Какой город объявлен официальной родиной русского Деда Мороза?",
                           answers: ["Малая Вишера", "Великий Устюг", "Вышний Волочек", "Нижний Новгород"],
                           numbberOfAnswer: 1)

var questions4 = Questions(questions: "Что проводит боксер, наносящий удар противнику снизу?",
                           answers: ["Свинг", "Джэб", "Хук", "Апперкот"],
                           numbberOfAnswer: 3)

var questions5 = Questions(questions: "Кого нет среди смешариков?",
                           answers: ["Барана", "Свиньи", "Коня", "Лося"],
                           numbberOfAnswer: 2)

var questions7 = Questions(questions: "Как называется ближайшая к Земле звезда?",
                           answers: ["Проксиома Центавра", "Солнце", "Полярная", "Сириус"],
                           numbberOfAnswer: 1)

var questions8 = Questions(questions: "Какую площадь имеет клетка стандартной школьной тетради?",
                           answers: ["0.25 кв.см", "1 кв.см", "0.5 кв.см", "1.25 кв. см"],
                           numbberOfAnswer: 0)

var questions9 = Questions(questions: "Что происходит на соревнованиях по стрельбе, если соперники набрали одинаковое количество очков?",
                           answers: ["Перевербовка", "Перепалка", "Перебранка", "Перестрелка"],
                           numbberOfAnswer: 3)

var questions10 = Questions(questions: "Как назывались старинные русские пушки-гаубицы?",
                            answers: ["Кентавр", "Грифон", "Василиск", "Единорог"],
                            numbberOfAnswer: 3)






import UIKit


class Shape {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    func calculateArea() -> Double {
        return 0.0
    }
}


class Circle: Shape {
    let radius: Double

    init(color: String, radius: Double) {
        self.radius = radius
        super.init(color: color)
    }
    
    override func calculateArea() -> Double {
        3.14 * radius * radius
    }
}


class Rectangle: Shape {
    let length: Double
    let width: Double
    
    init(color: String, length: Double, width: Double)  {
        self.length = length
        self.width = width
        super.init(color: color)
    }
    override func calculateArea() -> Double {
        length * width
    }
}


class Triangle: Shape {
    let a: Double
    let h: Double
    
    init(color:String, a: Double, h: Double) {
        self.a = a
        self.h = h
        super.init(color: color)
    }
    override func calculateArea() -> Double {
        0.5 * a * h
    }
}


var massShape: [Shape] = []
massShape.append(Circle(color: "Зелёный", radius: 12))
massShape.append(Rectangle(color: "Синий", length: 14, width: 9))
massShape.append(Triangle(color: "Красный", a: 12, h: 5))


for shape in massShape {
    print("Площадь фигуры с цветом \(shape.color): \(shape.calculateArea())")
}



struct Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String?
    init(firstName: String, lastName: String, phoneNumber: String, email: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
    }
}

func searchContactName(contacts: [Contact], name: String) -> [Contact] {
    if name.lowercased().isEmpty {
        return []
    }
    let lowerCaseName = name.lowercased()
    let filterContacts = contacts.filter { contact in
        contact.firstName.lowercased().contains(lowerCaseName) ||
        contact.lastName.lowercased().contains(lowerCaseName)
    }
    return filterContacts
}

let contacts: [Contact] = [Contact(firstName: "Вася", lastName: "Пупкин", phoneNumber: "+375291234567", email: "PupkinVasia228@mail.com"), Contact(firstName: "Маша", lastName: "Витебская", phoneNumber: "+375330987654", email: nil)]

let searchResult = searchContactName(contacts: contacts, name: "маША")
for contact in searchResult {
    print("Контакт: \(contact.firstName) \(contact.lastName), телефон: \(contact.phoneNumber), email: \(contact.email ?? "отсутсвует")")
}

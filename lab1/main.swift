import Foundation

print("=== Decimal in Swift ===\n")

// 1. Сравнение Double и Decimal

let doubleResult = 0.1 + 0.2

let decimalA = Decimal(string: "0.1")!
let decimalB = Decimal(string: "0.2")!
let decimalResult = decimalA + decimalB

print("Double:")
print("0.1 + 0.2 =", doubleResult)

print("\nDecimal:")
print("0.1 + 0.2 =", decimalResult)

print("\n--------------------------")

// 2. Практический пример: расчёт стоимости заказа

let price = Decimal(string: "1499.90")!
let quantity = Decimal(3)

let discountPercent = Decimal(string: "0.075")!
let taxPercent = Decimal(string: "0.20")!

let subtotal = price * quantity
let discount = subtotal * discountPercent
let priceAfterDiscount = subtotal - discount
let tax = priceAfterDiscount * taxPercent
let total = priceAfterDiscount + tax

print("Цена товара:", price)
print("Количество:", quantity)
print("Стоимость без скидки:", subtotal)
print("Скидка:", discount)
print("Стоимость после скидки:", priceAfterDiscount)
print("Налог:", tax)
print("Итого без округления:", total)

// 3. Округление

var valueToRound = total
var roundedTotal = Decimal()

NSDecimalRound(
    &roundedTotal,
    &valueToRound,
    2,
    .bankers
)

print("Итого после округления:", roundedTotal)
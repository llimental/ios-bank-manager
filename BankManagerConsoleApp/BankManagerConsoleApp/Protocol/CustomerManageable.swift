//
//  CustomerManageable.swift
//  BankManagerConsoleApp
//
//  Created by Blu on 2023/02/27.
//

import Foundation

protocol CustomerManageable {

    func makeAcceptableNumber() -> Int

    func makeCustomerQueue(maxCount: Int) -> LinkedQueue<Customer>
}

extension CustomerManageable {

    func makeAcceptableNumber() -> Int { Int.random(in: (10...30)) }

    func makeCustomerQueue(maxCount: Int) -> LinkedQueue<Customer> {
        let customerQueue = LinkedQueue<Customer>()

        for waitingNumber in 1...maxCount {
            customerQueue.enqueue(value: Customer(waitingOrder: waitingNumber))
        }

        return customerQueue
    }
}
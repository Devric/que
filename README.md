# Simple Aync Queue

someQ = new Que([funcA, funcB, funcC])

function funcA() {
    someQ.next()
}

function funcB() {
    someQ.next()
}

function funcC() {
    someQ.next()
}

# Simple Aync Queue

```
// create new queue instance
someQ = new Que([funcA, funcB, funcC])


function funcA() {

	// go to the next function in queue
    someQ.next()

}

function funcB() {

	// go to the next function in queue
    someQ.next()

}

function funcC() {

	// go to the next function in queue
    someQ.next()
    
}
```

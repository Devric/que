# Simple Aync Queue

Allows you easily control your function flow


```
funDo = function(next) {

    console.log('do');
    
    if(next) next();
}

funIt = function(next) {

    console.log('it');

    $.ajax({
        
    }).success(function(data){
        console.log(data);
        if(next) next();
    });
    
}

funAll = function(next) {

    console.log('all');
    
    if(next) next();
}

new Que(funDo, funIt, funAll).step(); // this steps through next()
new Que(funDo, funIt, funAll).run();  // this just keep on the next function without waiting for next

// You can also save as handler to recall it on refresh

var setup = new Que(bla,blo,ble);

var loop = function(){
    setTimeout(function(){
        // choose step or just run though it
        step.step();
    }, 200)
}; loop();

```

function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
       
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
         x = 'in block';
        console.log(x);
    }
     x = 'out of block again';
    console.log(x);
}

// mysteryScoping5();

madLib = function(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj} ${noun}.`
}

// console.log(madLib('make', 'best', 'guac'));

isSubstring = function(search, sub) {
    return search.includes(sub)
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));
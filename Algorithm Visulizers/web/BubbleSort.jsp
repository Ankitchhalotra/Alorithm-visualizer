<%-- 
    Document   : BubbleSort
    Created on : 14-Mar-2024, 10:03:20 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        *{
    padding: 0;
    margin: 0;
}
h1{
    text-align: center;
}
.grid{
    display: flex;
    flex-flow: row wrap;
    width: 620px;
    height: 50px;
    border: 1px solid black;
    margin: 100px auto;
}
.grid div{
    width: 60px;
    height: inherit;
    border: 1px solid black;
    text-align: center;
    font-weight: 700;
    
    font-size: x-large;

}
.exchange{
    background-color: red;
}
        </style>
        
    </head>
    <body>
        <h1>Bubble Sort</h1>
    <div class="grid">
        <script> 
       let grid = document.querySelector('.grid');
let timeout = 1000;
let squares = [];

for (let i = 0; i < 10; i++) {
    let square = document.createElement('div');
    square.setAttribute('id', i);
    square.innerHTML = 10-i;
 
    grid.append(square);
    squares.push(square);
}

function bubble_sort() {
    let steps = 0;

    for (let i = 0; i < squares.length-1; i++) {
        for (let j =0; j < (squares.length - i - 1); j++) {
            setTimeout(() => {
                if (parseInt(squares[j].innerHTML) > parseInt(squares[j + 1].innerHTML)) {
                    squares[j].classList.add('exchange');
                    squares[j + 1].classList.add('exchange');

                    setTimeout(() => {
                        let temp = squares[j].innerHTML;
                        squares[j].innerHTML = squares[j + 1].innerHTML;
                        squares[j + 1].innerHTML = temp;

                        squares[j].classList.remove('exchange');
                        squares[j + 1].classList.remove('exchange');
                    }, 1000);
                }
            }, timeout);

            steps++;
            timeout += 1000  // Dynamically calculate the timeout
        }
    }
}

bubble_sort();

        
        
        </script>

    </div>
    </body>
</html>

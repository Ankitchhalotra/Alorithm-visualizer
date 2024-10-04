<%-- 
    Document   : BubbleSort
    Created on : 14-Mar-2024, 10:03:20 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bubble Sort Visualization</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
        
        h1 {
            margin-bottom: 20px;
        }
        
        .grid {
            display: flex;
            flex-flow: row wrap;
            width: 500px;
            margin: 0 auto;
            margin-bottom: 50px;
        }
        
        .grid div {
            width: 50px;
            height: 50px;
            border: 1px solid black;
            text-align: center;
            line-height: 50px;
            font-size: large;
            font-weight: bold;
            transition: background-color 0.5s ease;
        }
        
        .exchange {
            background-color: #ff6b6b;
        }
        
        .description {
            max-width: 600px;
            margin: 0 auto;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Bubble Sort Visualization</h1>
    
    <div class="description">
        <h2>What is Bubble Sort?</h2>
        <p>Bubble Sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.</p>
        <p>It is named because smaller elements "bubble" to the top of the list, while larger elements "sink" to the bottom.</p>
    </div>

    <div class="grid"></div>

    <script>
        const grid = document.querySelector('.grid');
        const squares = [];
        const delay = 500;

        // Generate squares and display them on the grid
        for (let i = 0; i < 10; i++) {
            const square = document.createElement('div');
            square.classList.add('square');
            square.textContent = 10 - i;
            grid.appendChild(square);
            squares.push(square);
        }

        // Bubble Sort algorithm
        async function bubbleSort() {
            const n = squares.length;

            for (let i = 0; i < n - 1; i++) {
                for (let j = 0; j < n - i - 1; j++) {
                    await new Promise(resolve => setTimeout(resolve, delay));

                    squares[j].classList.add('exchange');
                    squares[j + 1].classList.add('exchange');

                    if (parseInt(squares[j].textContent) > parseInt(squares[j + 1].textContent)) {
                        // Swap elements
                        [squares[j].textContent, squares[j + 1].textContent] = [squares[j + 1].textContent, squares[j].textContent];
                    }

                    await new Promise(resolve => setTimeout(resolve, delay));

                    squares[j].classList.remove('exchange');
                    squares[j + 1].classList.remove('exchange');
                }
            }
        }

        // Start Bubble Sort animation
        bubbleSort();
    </script>
</body>
</html>

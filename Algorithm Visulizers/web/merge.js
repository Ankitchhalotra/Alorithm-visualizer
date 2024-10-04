const arrayContainer = document.getElementById('array-container');
let array = [10, 24, 76, 73, 72, 1, 9];

function createBars(array) {
    arrayContainer.innerHTML = '';
    for (let i = 0; i < array.length; i++) {
        const bar = document.createElement('div');
        bar.classList.add('bar');
        bar.style.height = `${array[i] * 3}px`;
        arrayContainer.appendChild(bar);
    }
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function mergeSort(arr) {
    if (arr.length < 2) {
        return arr;
    }
    const mid = Math.floor(arr.length / 2);
    const left = await mergeSort(arr.slice(0, mid));
    const right = await mergeSort(arr.slice(mid));

    return await merge(left, right);
}

async function merge(left, right) {
    let result = [], leftIndex = 0, rightIndex = 0;

    while (leftIndex < left.length && rightIndex < right.length) {
        if (left[leftIndex] < right[rightIndex]) {
            result.push(left[leftIndex]);
            leftIndex++;
        } else {
            result.push(right[rightIndex]);
            rightIndex++;
        }
        createBars([...result, ...left.slice(leftIndex), ...right.slice(rightIndex)]);
        await sleep(500);
    }

    return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex));
}

async function startSort() {
    array = await mergeSort(array);
    createBars(array);
}

createBars(array);

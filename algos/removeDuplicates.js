function removeDuplicate(arr) {
    let newArr = [];
    let idx = 0;
    let temp = {};

    for (let i = 0; i < arr.length; i++) {
        if (!temp[arr[i]]) {
            temp[arr[i]] = 1;
            newArr[idx] = arr[i];
            idx++;
        } 
    }
    return newArr;
}

console.log(removeDuplicate([1, 2, 1, 3, 4, 2]))

// function removeDup(arr){
//     for(let i=0; i < arr.length; i++){
//         for(let j= i+1; j < arr.length; j++){
//             if(arr[i] == arr[j]){
//                 arr.pop(arr[j])
//             }
//         }
//     }return arr
// }

// console.log(removeDup[1,2,1,3,4,2])
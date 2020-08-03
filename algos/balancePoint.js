function balancePoint(arr){
    const len = arr.length;
    let rightSum = 0;
    let leftSum = 0; 
    for(let i = 0; i < len; i++){
        rightSum += arr[i];
    }
    for(let j = 0; j < len; j++){
        rightSum -= arr[j]; 
        leftSum += arr[j];
        console.log(leftSum, rightSum)
        if(rightSum == leftSum){
            return true
        }
    }
    return false
}

console.log(balancePoint([1,2,2,9,3,2,4,4,4,3]))
console.log(balancePoint([1,2,3,4,10]))

function balanceIndex(arr){
    leftSum = 0;
    rightSum = 0;
    for(i=0; i<arr.length; i++){
        for(y=0; y<arr.length; y++){
            if(y<i){
                leftSum += arr[y]
            }
            if(y>i){
                rightSum += arr[y]
            }
        }
    }
}
//tool
// l( class2("val-2 val-1 val-3") );
// 2个或更多 class_value
function class2(class_value) {
    // 先 注释
    // if(document.getElementsByClassName){
    //    return array(document.getElementsByClassName(class_v));
    // }
    // ie6 ie7 ie8 
    let list = document.getElementsByTagName('*'),
        len1 = list.length,
        arr_small = class_value.split(" "),
        len2 = arr_small.length,
        result = [],
        count = 0;
    for (let i = 0; i < len1; i++) {
        if (list[i].className !== "") {
            let arr_big = list[i].className.split(" ");
            let len3 = arr_big.length;
            //如果 arr_small 所有元素 都在 arr_big 元素之中 result.push(list[i]);
            if (arr_small_all_items_in_arr_big(arr_small, len2, arr_big, len3)) {
                result.push(list[i]);
            }
        }
    }
    return result;
}

function arr_small_all_items_in_arr_big(arr_small, len1, arr_big, len2) {
    let count = 0;
    for (let i = 0; i < len2; i++) {
        let target = arr_big[i];
        // if (arr_big.indexof(target) !== -1) {
        //     count++
        // }
        if (arr_small.includes(target)) {
            count++
        }
    }
    if (count === len1) {
        return true;
    }
}
function calculate(operation, numbers) {

    let result = 0;


    switch(operation) {

        case "addition":
            result = numbers.number1 + numbers.number2;
            break;


        case "subtraction":
            result = numbers.number1 - numbers.number2;
            break;


        case "multiplication":
            result = numbers.number1 * numbers.number2;
            break;


        case "division":
            result = numbers.number1 / numbers.number2;
            break;


        default:
            throw new Error("Unknown operation");

    }


    return `KSh ${result}`;
}


module.exports = {
    calculate
};

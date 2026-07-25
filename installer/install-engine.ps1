Write-Host "Installing Bright Future Academy Engine..."


$enginePath = ".\engine"


if (!(Test-Path $enginePath)) {
    New-Item -ItemType Directory -Path $enginePath
}


$files = @(
    "randomEngine.js",
    "templateEngine.js",
    "answerEngine.js",
    "questionEngine.js",
    "difficultyEngine.js"
)


foreach ($file in $files) {

    $filePath = Join-Path $enginePath $file

    if (!(Test-Path $filePath)) {

        New-Item -ItemType File -Path $filePath | Out-Null

        Write-Host "Created: $file"

    }
    else {

        Write-Host "Exists: $file"

    }

}

$randomEngine = @'
const kenyaNames = [
    "Wanjiku",
    "Faith",
    "Brian",
    "Amina",
    "Kevin",
    "Njeri",
    "Otieno",
    "Zawadi"
];


const schoolItems = [
    "exercise books",
    "pens",
    "pencils",
    "textbooks",
    "rulers"
];


const shops = [
    "Nairobi Stationers",
    "Mama Mboga Shop",
    "School Supplies Centre",
    "Kisumu Bookshop"
];


function randomFrom(array) {
    return array[
        Math.floor(Math.random() * array.length)
    ];
}


function randomNumber(min, max) {
    return Math.floor(
        Math.random() * (max - min + 1)
    ) + min;
}


function generateContext() {

    return {
        name: randomFrom(kenyaNames),
        item: randomFrom(schoolItems),
        shop: randomFrom(shops),
        quantity: randomNumber(2,20),
        price: randomNumber(10,500)
    };

}


module.exports = {
    generateContext
};
'@


Set-Content `
    -Path "$enginePath\randomEngine.js" `
    -Value $randomEngine


Write-Host "Installed randomEngine.js"

$answerEngine = @'
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
'@


Set-Content `
    -Path "$enginePath\answerEngine.js" `
    -Value $answerEngine


Write-Host "Installed answerEngine.js"

$templateEngine = @'
function generateQuestion(template, context) {

    let question = template;


    Object.keys(context).forEach(key => {

        question = question.replace(
            `{${key}}`,
            context[key]
        );

    });


    return question;

}


module.exports = {
    generateQuestion
};
'@


Set-Content `
    -Path "$enginePath\templateEngine.js" `
    -Value $templateEngine


Write-Host "Installed templateEngine.js"

Write-Host "Engine installation complete."
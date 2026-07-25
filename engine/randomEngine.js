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

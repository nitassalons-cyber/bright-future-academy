const difficulties = [
    "easy",
    "medium",
    "hard",
    "competency"
];


function selectDifficulty(index) {

    return difficulties[
        index % difficulties.length
    ];

}


function getRandomDifficulty() {

    return difficulties[
        Math.floor(
            Math.random() * difficulties.length
        )
    ];

}


module.exports = {
    selectDifficulty,
    getRandomDifficulty
};

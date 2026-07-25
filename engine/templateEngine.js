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

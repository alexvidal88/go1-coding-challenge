def quiz_results(answers, responses)
    correct_answers_array = []
    answers.each_with_index do |answer, index|
        counter = 0
        responses.each do |response|
            if answer == response[index]
                counter += 1
            end
        end
        correct_answers_array << counter
    end
    index = correct_answers_array.index(correct_answers_array.max)
    "The easiest question is index #{index}"
end


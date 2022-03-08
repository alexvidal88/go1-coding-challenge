def learners_courses(input)
    learners_array=[]
    input.each do |key, value|
        learners_array.push(value)
    end

    new_array = []
    learners_array.each do |courses|
        new_array << courses.tally.to_a
    end

    final_array = new_array.flatten

    final_array.find_all do |v| 
        if v.class != Integer
            final_array.count(v) == 1
        end
    end
end

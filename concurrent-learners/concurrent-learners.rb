def concurrent_learners(learners)
    ranges_array = learners.map do |learner|
        [learner[1],learner[2]]
    end
    sorted_ranges = ranges_array.sort
    counter_array = []
    sorted_ranges.each do |range_1|
        counter = 0
        sorted_ranges.each do |range_2|
            if (range_1[0]..range_1[1]).any?(range_2[0]..range_2[1])
                counter += 1
            end
        end
        counter_array << counter
    end
    max_number = counter_array.max
    "The maximum number of concurrent streams is #{max_number}."
end

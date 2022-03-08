def watched_courses(courses)
    new_array = []
    courses.each do |course|
        course.each_cons(2) do |pair|
            new_array << pair
        end
    end
    keys_array = new_array.tally.keys
    new_hash = {}
    keys_array.each do |key, value|
        new_hash[key] = value
    end
    new_hash
end

p watched_courses([
    ["Course_001"],
    ["Course_001","Course_002"],
    ["Course_002","Course_003"],
    ["Course_001","Course_002","Course_003","Course_004"],
    ["Course_002","Course_003","Course_001","Course_004"]
])


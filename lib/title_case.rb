class Title

    def title_case(title, minor_words = '')
        words = title.split
        minor_array = minor_words.downcase.split
        words.each_with_index.map do |word, index|
            # binding.pry
            if minor_array.include?(word.downcase) && index != 0
                word.downcase
            else
                word.capitalize
            end
        end.join(" ")
    end
end
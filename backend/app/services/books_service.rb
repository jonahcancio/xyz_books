class BooksService
    @@logger = Rails.logger

    def self.trim_isbn(isbn)
        !isbn.blank? and isbn.gsub("-", "")
    end

    def self.is_isbn13(isbn)
        if isbn.blank? || isbn.length != 13
            return false
        end
        isbn.each_char.with_index do |c, i|
            if c.to_i.to_s != c
                return false
            end
        end
        return true
    end

    def self.is_isbn10(isbn)
        if isbn.blank? || isbn.length != 10
            return false
        end
        isbn.each_char.with_index do |c, i|
            if i < isbn.length-1 && c.to_i.to_s != c
                return false
            elsif i == isbn.length-1 && c.to_i.to_s != c && c.casecmp("x") != 0
                return false
            end
        end
        return true
    end

    def self.convert_isbn13_to_10(isbn_13)
        trim_str = isbn_13[3..11]
        weight_arr = Array.new

        i = 10
        trim_str.each_char do |c|
            weight_arr.push(c.to_i * i)
            i -= 1
        end

        sum = weight_arr.sum
        rem = sum % 11
        check = 11 - rem
        if check == 11
            check_str = "0"
        elsif check == 10
            check_str = "X"
        else
            check_str = check.to_s
        end

        isbn_10 = trim_str + check_str
        return isbn_10
    end

    def self.convert_isbn10_to_13(isbn_10)
        trim_str = "978" + isbn_10[0..8]
        weight_arr = Array.new

        i = 1
        trim_str.each_char do |c|
            weight_arr.push(c.to_i * i)
            i = i == 1? 3 : 1
        end

        sum = weight_arr.sum
        rem = sum % 10
        check = 10 - rem
        if check == 10
            check_str = "0"
        else
            check_str = check.to_s
        end

        isbn_13 = trim_str + check_str
        return isbn_13
    end
end


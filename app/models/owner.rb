class Owner

def name 
    name = "Foobar Kadigan"
end

def birthdate 
    birthdate = Date.new(1997, 11, 23)
end

def countdown 
    today = Date.today
    birthday = Date.new(birthdate.year, birthdate.month, birthdate.day)
    if birthday > today
        countdown = (birthday - today).to_i
    end
end

end # Class end
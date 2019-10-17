@person1 = {
  name: "Shaggy",
  age: 12,
  monies: 1,
  friends: ["Velma","Fred","Daphne", "Scooby"],
  favourites: {
    tv_show: "Friends",
    snacks: ["charcuterie"]
  }
}

@person2 = {
  name: "Velma",
  age: 15,
  monies: 2,
  friends: ["Fred"],
  favourites: {
    tv_show: "Baywatch",
    snacks: ["soup","bread"]
  }
}

@person3 = {
  name: "Scooby",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma"],
  favourites: {
    tv_show: "Pokemon",
    snacks: ["Scooby snacks"]
  }
}

@person4 = {
  name: "Fred",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma", "Daphne"],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spaghetti", "ratatouille"]
  }
}

@person5 = {
  name: "Daphne",
  age: 20,
  monies: 100,
  friends: [],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spinach"]
  }
}

@people = [@person1, @person2, @person3, @person4, @person5]



def get_name(person)
  return person[:name]
end


def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person,food)
  if food == person[:favourites][:snacks][0]
    return true
  else
    return false
  end
end

# @person5 = {
#   name: "Daphne",
#   age: 20,
#   monies: 100,
#   friends: [],
#   favourites: {
#     tv_show: "X-Files",
#     snacks: ["spinach"]
#   }
# }
#
# p likes_to_eat(@person5, "spinach")


def add_new_friend(person,name_of_friend)
  person[:friends]<< name_of_friend
end


def remove_friend(person,name_of_friend)
  person[:friends].delete(name_of_friend)
end


def money_total(people_array)

  # total = 0
  #
  # for person in people_array
  #   total += person[:monies]
  # end
  #
  # return total

  length = people_array.length
  total_money = 0
  index = 0

  while index < length
    total_money += people_array[index][:monies]
    index += 1
  end
  return total_money
end


def loan_money(p4,p5,lent_amount)
  p4[:monies] = p4[:monies] + lent_amount
  p5[:monies] = p5[:monies] - lent_amount

end


def favourite_snack(people_array)
  string = ""
  for person in people_array
    for snack in person[:favourites][:snacks]
      # p snack
      string = string + " " + snack
    end
  end
  p string
end

# favourite_snack(@people)


def no_friends(people_array)
  no_friends_array= []
  for person in people_array
    no_friends_array << person if person[:friends].empty? end
  end
end

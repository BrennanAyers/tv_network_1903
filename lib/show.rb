class Show
  attr_reader :name, :creator, :characters, :total_salary

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @total_salary = total_salary_equation
  end

  def total_salary_equation
    show_salary = 0
    @characters.each do |character|
      show_salary += character.salary
    end
    show_salary
  end

end

module EmailReportable
  def send_report
    puts "Sending important email..."
    #use some fancy email sending library
    puts "Email sent!"
  end
end

class Employee
  attr_accessor :first_name, :last_name, :active

  def initialize options_hash
    @first_name = options_hash[:first_name]
    @last_name = options_hash[:last_name]
    @salary = options_hash[:salary]
    @active = options_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  attr_accessor :employees
  include EmailReportable

  def initialize options_hash
    super
    @employees = options_hash[:employees]
  end

  def give_all_raises
    employees.each do |employee|
      p employee.give_annual_raise
    end
  end

  def fire_all_employees
    employees.each do |employee|
      p employee.active = false
    end
  end
end

class Intern < Employee
  include EmailReportable
end

employee1 = Employee.new({first_name: "Jay", last_name: "Wengrow", salary: 1000000, active: true})
employee2 = Employee.new(first_name: "Peter", last_name: "Jang", salary: 20000, active: true)
# employee1.print_info
# employee2.print_info

manager = Manager.new(first_name: "Winston", last_name: "Barbe", salary: 120000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

intern = Intern.new(first_name: "David", last_name: "Calhoun", salary: 10000, active: true)
intern.print_info
intern.send_report
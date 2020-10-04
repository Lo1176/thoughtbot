# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.
require 'rspec/autorun'

# Person class
class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # implement your behavior here
  def full_name
    # clean_name
    # "#{@first_name} #{@middle_name} #{@last_name}"
    [first_name, middle_name, last_name].compact.join(' ')
  end

  def full_name_with_middle_initial
    [first_name, middle_name ? middle_name[0] : nil, last_name].compact.join(' ')
  end

  def initials
    [first_name[0], middle_name ? middle_name[0] : nil, last_name[0]].compact.join(' ')
  end

  private

  attr_reader :first_name, :middle_name, :last_name

  # def clean_name
  #   first_name.gsub(/\s+/) if !first_name.nil?
  #   middle_name.gsub(/\s+/) if !middle_name.nil?
  #   last_name.gsub(/\s+/) if !last_name.nil?
  # end
end

RSpec.describe Person do
      person_with_middle_name = Person.new(
        first_name: 'John',
        middle_name: 'Hecttor',
        last_name: 'Proust'
      )
      person_without_mn = Person.new(
        first_name: 'Robert',
        last_name: 'Plant'
      )
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      expect(person_with_middle_name.full_name).to eq('John Hecttor Proust')
    end
    it "does not add extra spaces if middle name is missing" do
      expect(person_without_mn.full_name).to eq('Robert Plant')
    end
  end

  describe "#full_name_with_middle_initial" do
    it "concatenates first name, middle name initial, and last name with spaces" do
      expect(person_with_middle_name.full_name_with_middle_initial).to eq('John H Proust')

      expect(person_without_mn.full_name_with_middle_initial).to eq('Robert Plant')
    end
  end

  describe "#initials" do
    it "return all initials. If the middle name is missing, the initials should only have two characters." do
      expect(person_with_middle_name.initials).to eq('J H P')

      expect(person_without_mn.initials).to eq('R P')
    end
  end
end

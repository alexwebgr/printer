# frozen_string_literal: true

class Printer
  PHRASES = {
    people_power: 'People Power',
    people: 'People',
    power: 'Power',
    empty: 'The list empty'
  }

  def self.print(times = 100)
    new(times).print
  end

  private

  attr_reader :times

  def initialize(times)
    @times = times
  end

  def bucket(item)
    return PHRASES[:people_power] if power?(item) && people?(item)
    return PHRASES[:people] if people?(item)
    return PHRASES[:power] if power?(item)

    item
  end

  def people?(item)
    (item % 3).zero?
  end

  def power?(item)
    (item % 5).zero?
  end

  public

  def print
    return PHRASES[:empty] if times.zero?

    (1..times).map { |i| bucket(i) }.join("\n")
  end
end

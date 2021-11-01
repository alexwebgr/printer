# frozen_string_literal: true

class Printer
  attr_reader :times

  def self.print(times = 100)
    new(times).print
  end

  private

  def initialize(times)
    @times = times
  end

  def bucket(item)
    return 'People Power' if power?(item) && people?(item)
    return 'People' if people?(item)
    return 'Power' if power?(item)

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
    (1..times).map { |i| bucket(i) }.join("\n") + "\n"
  end
end

# frozen_string_literal: true

class Printer
  def initialize
  end

  def self.print(times = 100)
    items = []
    1.upto(times) { |i| items << bucket(i) }

    "#{items.join("\n")}\n"
  end

  def self.bucket(item)
    return 'People Power' if power?(item) && people?(item)
    return 'People' if people?(item)
    return 'Power' if power?(item)

    item
  end

  def self.people?(item)
    (item % 3).zero?
  end

  def self.power?(item)
    (item % 5).zero?
  end
end

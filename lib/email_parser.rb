require 'set'

class EmailParser


  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(/[,\s]+/).map{|x| x.strip}.to_set.to_a
  end
end
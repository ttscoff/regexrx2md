# frozen_string_literal: true

RSpec.describe RegExRX2MD::Todo do
  subject(:todo) { RegExRX2MD::Todo.new }

  describe ".todo" do
    it "returns todo" do
      expect(todo.todo).to be "TODO"
    end
  end
end

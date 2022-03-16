require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with valid attributes" do
    task = task = Task.new(title: "check out Ha Ling Peak", description: "Best trail in Canmore", priority: 2)
    expect(task).to be_valid
  end

  it "is not valid without a title" do
    task = Task.new(description: "Best trail in Canmore", priority: 2)
    expect(task).to_not be_valid
  end

  it "is valid without a description" do
    task = Task.new(title: "check out Ha Ling Peak", priority: 1)
    expect(task).to be_valid
  end

  it "is valid without a priority" do
    task = Task.new(title: "check out Ha Ling Peak", description: "Best trail in Canmore")
    expect(task).to be_valid
  end

  it "orders by priority" do
    task1 = Task.create!(title: "check out Ha Ling Peak", description: "Best trail in Canmore", priority: 4)
    task2 = Task.create!(title: "check out EEOR", description: "Second best trail in Canmore", priority: 2)
    expect(Task.by_priority).to eq([task2, task1])
  end
end

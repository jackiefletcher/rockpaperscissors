require('rspec')
require('game')

describe('String#beats?') do
  it("returns Player one is the victor if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq("Player one is the victor!"))
  end
  it("returns Player two is the victor! if scissors is the object and rock is the argument") do
    expect("scissors".beats?("rock")).to(eq("Player two is the victor!"))
  end
  it("returns Player one is the victor if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq("Player one is the victor!"))
  end
  it("returns Player two is the victor! if paper is the object and scissors is the argument") do
    expect("paper".beats?("scissors")).to(eq("Player two is the victor!"))
  end
  it("returns Player one is the victor if paper is the object and rock is the arguement") do
    expect("paper".beats?("rock")).to(eq("Player one is the victor!"))
  end
  it("returns Player two is the victor! if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq("Player two is the victor!"))
  end
  it("returns tie if rock is the object and rock is the argument") do
    expect("rock".beats?("rock")).to(eq("Ah! A tie! Fight again..."))
  end
end

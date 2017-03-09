require 'rspec'
require_relative 'domain.rb'

describe Domain do
# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"
  subject { Domain.canonical }

  it 'finds github' do
    expect(Domain.new("http://github.com/carbonfive/raygun").canonical).to eq 'github'
    expect(Domain.new("http://zombie-bites.com").canonical).to             eq 'zombie-bites'
    expect(Domain.new("http://www.zombie-bites.com").canonical).to         eq 'zombie-bites'
    expect(Domain.new("http://www.zombie-bites.co.uk").canonical).to         eq 'zombie-bites'
  end
end

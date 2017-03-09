class Domain
  def initialize(url)
    @url = url
  end

  def middle
    regexp = %r{
      (\w+:\/\/)     # beginning
      ([^$|\/]+)
    }x
    @url.match(regexp).captures[1]
  end

  def canonical
    # we need to remove the last item after a .
    # github.com => github

    re = %r{
    ([^\.]*)
    (\.\w+$)
    }x
    middle.match(re).captures[0]
  end
end

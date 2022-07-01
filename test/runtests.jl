using Fibonacci, Test

@testset "test fibs" begin
  @show collect(Iterators.take(fibs, 10))
  @show collect(Iterators.take(fibs, 100))
end
using Fibonacci, Test

@testset "test fibs" begin
  println(collect(Iterators.take(fibs, 10)))

  partfibs = collect(Iterators.take(fibs, 10))
  println(eltype(partfibs))
end
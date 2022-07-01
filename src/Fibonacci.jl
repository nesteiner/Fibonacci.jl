module Fibonacci

import Base: iterate, length, eltype
import Base.Iterators.Take

struct Fibs end

iterate(fibs::Fibs) = (BigInt(1),(BigInt(1),BigInt(0)))
iterate(fibs::Fibs, state::T) where T = begin
  (a, b) = state
  (a + b, (a + b, a))
end

length(fibs::Fibs) = typemax(Int)
eltype(::Fibs) = Integer
eltype(::Take{Fibs}) = Integer
fibs = Fibs()

export fibs
end # module

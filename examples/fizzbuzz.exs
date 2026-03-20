fb = fn
(0, 0, _) -> "FizzBuzz"
(0, _, _) -> "Fizz"
(_, 0, _) -> "Buzz"
(_, _, c) -> "#{c}"
end

fizzbuzz = fn n ->
  fb.(rem(n, 3), rem(n, 5), n)
end

IO.inspect(fizzbuzz.(10))
IO.inspect(fizzbuzz.(11))
IO.inspect(fizzbuzz.(12))
IO.inspect(fizzbuzz.(13))
IO.inspect(fizzbuzz.(14))
IO.inspect(fizzbuzz.(15))
IO.inspect(fizzbuzz.(16))

(1..34) |> Enum.map(fizzbuzz) |> IO.inspect()

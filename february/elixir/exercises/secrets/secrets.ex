defmodule Secrets do
  def secret_add(secret), do: &(&1 + secret)
  # or do: fn addition -> addition + secret end

  def secret_subtract(secret), do: &(&1 - secret)

  def secret_multiply(secret), do: &(&1 * secret)

  def secret_divide(secret), do: &(&1 / secret) |> floor
  #or do: &(div(&1, secret))
  #or do: fn division -> floor(division / secret) end

  def secret_and(secret), do: &(Bitwise.band(&1, secret))
  #or  do: fn and_operator -> Bitwise.band(and_operator, secret) end

  def secret_xor(secret), do: &(Bitwise.bxor(&1, secret))
  #or do: fn xor_operator -> Bitwise.bxor(xor_operator, secret) end

  def secret_combine(secret_function1, secret_function2) do
    &(secret_function1.(&1) |> secret_function2.())
  end
  #or &(secret_function2.(secret_function1.(&1)))
end
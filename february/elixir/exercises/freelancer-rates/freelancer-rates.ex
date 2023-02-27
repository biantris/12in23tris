defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    discounted_price = before_discount * (1 - discount/100)
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(22 * daily_rate(hourly_rate), discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
   price = daily_rate(hourly_rate) |> apply_discount(discount)
   budget / price |> Float.floor(1)
  end
end
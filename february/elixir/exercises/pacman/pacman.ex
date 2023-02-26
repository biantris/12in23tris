defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    if power_pellet_active and touching_ghost do
      true
    else
      false
    end
  end

  def score?(touching_power_pellet, touching_dot) do
    if touching_power_pellet or touching_dot do
      true
    else
      false
    end
  end

  def lose?(power_pellet_active, touching_ghost) do
    if power_pellet_active do
      not true
    else
      true
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    has_eaten_all_dots && !touching_ghost || power_pellet_active && has_eaten_all_dots
  end
end
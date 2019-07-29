# Is the string uppercase?
defmodule StringUtils do
  def upper_case?(str) do
    String.upcase(str) == str
  end
end

# Reverse first and last name
defmodule Messy do
  def name_shuffler(str) do
    str
    |> String.split
    |> Enum.reverse
    |> Enum.join(" ")
  end
end

# How good are you really?
defmodule Detector do
  def better_than_average(class_points, your_points) do
    if sum_list(class_points, 0)/length(class_points) < your_points do
      :true
    else
      :false
    end
  end

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end


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

# Sentence smash
defmodule SentenceSmasher do
  def smash(words) do
    Enum.join(words, " ")
  end
end

# Convert a string to a number!
defmodule Numerify do
  def string_to_number(str) do
    String.to_integer(str)
  end
end

# Summation
defmodule Series do
  def summation(n) do
    Enum.sum(1..n)
  end

  def sum(0) do
    0
  end

  def sum(n) do
    n + sum(n-1)
  end
end

# count by x (first n multiples of x)
defmodule Count do
  def count_by(x, n) do
    Enum.take_every(x..(x*n), x)
  end
end

defmodule Ex1 do
  def part1 do
    File.stream!("data/ex1/input")
    |> Enum.map(&String.trim/1)
    |> Enum.chunk_by(&(&1 == ""))
    |> Enum.filter(&(&1 != [""]))
    |> Enum.map(&Enum.map(&1, fn str -> String.to_integer(str) end))
    |> Enum.map(&Enum.sum/1)
    |> Enum.max()
  end

  def part2 do
    File.stream!("data/ex1/input")
    |> Enum.map(&String.trim/1)
    |> Enum.chunk_by(&(&1 == ""))
    |> Enum.filter(&(&1 != [""]))
    |> Enum.map(&Enum.map(&1, fn str -> String.to_integer(str) end))
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort()
    |> Enum.take(-3)
    |> Enum.sum()
  end
end

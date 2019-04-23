defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    # test 1 OK
    # sentence = %{sentence => 1}

    # test 2 KO

    # sentence
    # |> String.split()
    # |> Enum.map(fn word -> %{word => 1} end)

    # iex(6)> sentence |> String.split |> Enum.map(fn x -> %{x =>1} end)
    # [%{"one" => 1}, %{"of" => 1}, %{"each" => 1}]

    words =
      sentence
      |> String.downcase()
      |> String.split()

    Enum.reduce(words, %{}, fn word, acc -> Map.update(acc, word, 1, &(&1 + 1)) end)
  end
end

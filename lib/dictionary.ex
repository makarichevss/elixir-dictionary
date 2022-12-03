defmodule Dictionary do
  @list_words "assets/words.txt"
              |> File.read!()
              |> String.split(~r/\n/, trim: true)

  @list1 2

  @moduledoc """
  Documentation for `Dictionary`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello()
      :world

  """
  def hello do
    IO.puts("Hello world!!!!")
  end

  def random_word do
    @list_words
    |> Enum.random()
  end

  def split_test do
    IO.puts("#{@list1}")
    coy = "had we but world enough, and time"
    String.split(coy, ",")
    String.to_charlist(coy)
    String.reverse(coy)
    silly = "had we but bacon enough, and treacle"
    String.myers_difference(coy, silly)
    String.codepoints(coy)
  end
end

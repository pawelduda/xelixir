defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    base_letters = String.downcase(base) |> String.split("")
    sorted_base_letters = Enum.sort(base_letters)

    Enum.filter candidates, fn(candidate) ->
      candidate_letters = String.downcase(candidate) |> String.split("")

      Enum.sort(candidate_letters) == sorted_base_letters &&
        candidate_letters != base_letters
    end
  end
end

defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  #   @spec to_rna([char]) :: [char]
  #   def to_rna(dna) when is_list(dna) do
  #     dna
  #     |> Enum.map(fn char ->
  #       if char == ?G,
  #         do: ?C,
  #         else: if(char == ?C, do: ?G, else: if(char == ?T, do: ?A, else: if(char == ?A, do: ?U)))
  #     end)
  #   end
  # end
  @spec to_rna([char]) :: [char]
  def to_rna(dna) when is_list(dna) do
    dna
    |> Enum.map(fn char ->
      case char do
        ?G -> ?C
        ?C -> ?G
        ?T -> ?A
        ?A -> ?U
      end
    end)
  end
end

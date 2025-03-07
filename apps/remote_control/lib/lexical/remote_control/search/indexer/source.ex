defmodule Lexical.RemoteControl.Search.Indexer.Source do
  alias Lexical.Ast
  alias Lexical.Document
  alias Lexical.RemoteControl.Search.Indexer

  require Logger

  def index(path, source) do
    path
    |> Document.new(source, 1)
    |> Ast.analyze()
    |> Indexer.Quoted.index()
  end
end

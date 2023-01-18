defmodule TpkExamplesWeb.NumberExamples do
  use Phoenix.Component

  defp top_link(assigns) do
    ~H"""
    <a
      class="hover:shadow-md float-right w-8 bg-gray-200 hover:bg-blue-200 rounded border p-1 text-center"
      href="#idx"
    >
      <Heroicons.arrow_up class="w-full h-full" />
    </a>
    """
  end

  def number_examples(assigns) do
    ~H"""
    <div class="markdown border rounded p-4 mb-2">
      <h2 id="ad2" class="text-4xl font-bold text-zinc-600">2.) Numbers</h2>
      <.top_link />
      <div class="clear-right mb-2"></div>

      <p>not implemented yet</p>
    </div>
    """
  end
end

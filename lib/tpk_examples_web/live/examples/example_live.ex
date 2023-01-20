defmodule TpkExamplesWeb.ExampleLive do
  use TpkExamplesWeb, :live_view
  import TpkExamplesWeb.MarkdownExamples
  import TpkExamplesWeb.NumberExamples

  def render(assigns) do
    ~H"""
    <h1 id="idx" class="text-4xl font-bold mb-4 mt-[-4rem] drop-shadow-lg">TPK Common - Examples</h1>
    <div class="mx-2 bg-zinc-50 text-gray-800">
      <ul id="idx" class="list-inside ml-2 float-right mt-2 border-2 p-2 max-w-[40ch]">
        <strong>INDEX</strong>
        <ul class="list-disc list-inside">
          <li><a class="text-blue-600 hover:underline" href="#ad1">Markdown</a></li>
          <li><a class="text-blue-600 hover:underline" href="#ad2">Numbers</a></li>
        </ul>
      </ul>
      <p class="p-2 mb-4">See HEX docs and cheetsheets for all available functions in TPK.Common.</p>
      <div class="clear-right mb-2"></div>

      <.markdown_examples />
      <.number_examples />
    </div>
    """
  end
end

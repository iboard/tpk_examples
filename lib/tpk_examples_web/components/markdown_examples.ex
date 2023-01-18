defmodule TpkExamplesWeb.MarkdownExamples do
  use Phoenix.Component
  import Phoenix.HTML, only: [raw: 1]

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

  def markdown_examples(assigns) do
    ~H"""
    <div class="markdown border rounded p-4 mb-2">
      <h2 id="ad1" class="text-4xl font-bold text-zinc-600">1.) Markdown</h2>
      <.top_link />
      <div class="clear-right mb-2"></div>

      <code class="block p-2 font-mono bg-zinc-100 rounded my-4">
        # import TPK.Common
      </code>
      <h3 class="text-2xl font-semibold text-zinc-800 mt-2">From string</h3>
      <code class="block p-2 font-mono bg-zinc-100 rounded my-4">
        # md_to_html!("### This is a H3\n\nand a paragraph"
      </code>
      <div class="block p-2 bg-yellow-100 rounded my-4">
        <%= raw(TPK.Common.HTML.md_to_html!("### This is a H3\n\nand a paragraph")) %>
      </div>

      <h3 class="text-2xl font-semibold text-zinc-800">From file</h3>
      <code class="block p-2 font-mono bg-zinc-100 rounded my-4">
        # md_file_to_html!("README.md")
      </code>
      <div class="block p-2 bg-yellow-100 rounded my-4">
        <small>
          <%= raw(TPK.Common.HTML.md_file_to_html!("README.md")) %>
        </small>
      </div>
      <code class="block p-2 font-mono bg-zinc-100 rounded my-4">
        # md_file_to_html!("unknown.md")
      </code>
      <div class="block p-2 bg-yellow-100 rounded my-4">
        <small>
          <%= raw(TPK.Common.HTML.md_file_to_html!("unknown.md")) %>
        </small>
      </div>
    </div>
    """
  end
end

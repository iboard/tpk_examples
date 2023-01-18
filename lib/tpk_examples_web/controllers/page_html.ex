defmodule TpkExamplesWeb.PageHTML do
  use TpkExamplesWeb, :html
  import TpkExamplesWeb.MarkdownExamples
  import TpkExamplesWeb.NumberExamples

  embed_templates "page_html/*"
end

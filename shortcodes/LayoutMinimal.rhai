fn template(context, props, content) {
  context.assets.add("resources/css/layout-minimal.css");

  if context.is_watching {
    context.assets.add("resources/ts/global-live-reload.mjs");
  }

  component {
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <link rel="canonical" href={context.reference.canonical_link}>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content={if context.front_matter.description.is_empty() {
          "Open-source static site generator. Build websites, expose them as MCP servers, optimize for LLM SEO, and analyze content with NLP."
        } else {
          context.front_matter.description
        }}>

        <title>{
          let base_title = "Poet";

          if context.front_matter.title.is_empty() {
            base_title
          } else {
            `${context.front_matter.title} - ${base_title}`
          }
        }</title>
        {context.assets.render()}
      </head>
      <body>
        <div class="page">
          <nav class="page-navigation">
            <div class="page-navigation__track">
              <a class="page-navigation__link page-navigation__link--site-name" href={context.link_to("index")}>
                Your Page Name
              </a>
              <a class="page-navigation__link" href={context.link_to("#example-page")}>
                See examples
              </a>
            </div>
            <a
              class="page-navigation__link"
              href="https://github.com/intentee/poet"
              target="_blank"
            >
              <img alt="GitHub" src={context.assets.file("resources/media/logo-github.svg")}>
            </a>
          </nav>
          <main class="page-main">
            {content}
          </main>
          <footer class="page-footer">
            <p>
              Powered by <a href="https://github.com/intentee/poet" target="_blank">Poet</a>
            </p>
            <div class="page-footer__links">
              <a
                href="https://github.com/intentee/poet"
                target="_blank"
              >
                <img alt="GitHub" src={context.assets.file("resources/media/logo-github.svg")}>
              </a>
            </div>
          </footer>
        </div>
      </body>
    </html>
  }
}

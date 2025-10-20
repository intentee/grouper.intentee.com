fn template(context, props, content) {
  context.assets.add("resources/css/page-homepage.css");

  component {
    <LayoutMinimal>
      <div class="homepage">
        <h1 class="homepage__title">
          Build MCP servers the proper way
        </h1>
        <div class="homepage__details">
          <div class="homepage__details__section">
            <h2>What is it?</h2>
            <p>
              An MCP server building platform designed for collaboration across product, design/UX, and technical roles.
            </p>
          </div>
          <div class="homepage__details__section">
            <h2>Who made this?</h2>
            <p>
              This is an <a href="https://intentee.com">Intentee</a> project.
            </p>
          </div>
          <div class="homepage__details__section">
            <h2>For whom?</h2>
            <p>
              Product teams that need to guarantee high-quality conversational user experience when interacting with their products through MCP servers.
            </p>
          </div>
          <div class="homepage__cta">
            <div class="homepage__cta__button">
              To be released in H1 2026
            </div>
          </div>
        </div>
      </div>
    </LayoutMinimal>
  }
}

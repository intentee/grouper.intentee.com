fn template(context, props, content) {
  context.assets.add("resources/css/page-homepage.css");

  component {
    <LayoutMinimal>
      <div class="homepage">
        <h1 class="homepage__title">
          Hello!
        </h1>
        <h2 class="homepage__subtitle">
          This is a sample page that comes with Poet. Take a look around to see how everything works. You can also replace all of this with your own content.
        </h2>
        <div class="homepage__cta">
          <a href={context.link_to("#example-page")} class="homepage__cta__button homepage__cta__button--primary">
            See examples
          </a>
          <a href="https://poet.intentee.com" class="homepage__cta__button" target="_blank">
            Documentation
          </a>
        </div>
      </div>
    </LayoutMinimal>
  }
}

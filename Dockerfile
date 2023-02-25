FROM pandoc/extra

# Install ruby for panrun
RUN apk --no-cache add ruby bash

# Setup panrun to allow running pandoc with options from frontmatter
RUN wget https://raw.githubusercontent.com/mb21/panrun/master/panrun -O /usr/local/bin/panrun && chmod +x /usr/local/bin/panrun
ADD src/page-background.png /app/page-background.png
ADD src/titlepage-background.png /app/titlepage-background.png

ENTRYPOINT ["/usr/local/bin/panrun"]
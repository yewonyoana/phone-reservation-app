FROM ruby:3.1.3-bullseye

# Install Bundler, Rails, and Rake gems
RUN gem install bundler rails rake

# Create and set the working directory
RUN mkdir /app
ENV RAILS_ROOT /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock ./

# Run bundle install to install gems
RUN bundle install

# Copy the rest of the application code including the entrypoint script
COPY . .

# Ensure the entrypoint script is executable
RUN chmod +x bin/docker-entrypoint.sh

# Expose port 3000
EXPOSE 3000

# Set the entrypoint and default command
ENTRYPOINT ["./bin/docker-entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]

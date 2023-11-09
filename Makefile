# Define variables
BUNDLE := docker exec app ./bin/bundle
RAILS := docker exec app ./bin/rails

# Setup target
db:
	$(RAILS) db:create
	$(RAILS) db:migrate

# Migrate target
migrate:
	$(RAILS) db:migrate

# Run bundle install
bundle:
	$(BUNDLE) install

rails-command:
	$(RAILS) $(command)

bundle-add:
	$(BUNDLE) add $(name)
# Test target
test:
	$(RAILS) test

rubocop:
	$(BUNDLE) exec rubocop

rubocop-fix:
	$(BUNDLE) exec rubocop -A
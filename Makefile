TARGETS := $(shell find src -type d -d 1 -name "[^.]*" -execdir printf '%s\n' {} +)

.PHONY: $(TARGETS)

$(TARGETS):
	$(MAKE) play --directory=src/$@

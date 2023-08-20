PREFIX ?= /usr/local
TARGET_DIR := $(DESTDIR)$(PREFIX)/bin

$(TARGET_DIR):
	mkdir -p "$@"

.PHONY: install
install: udisk $(TARGET_DIR)
	install -m 755 "$<" "$(TARGET_DIR)/$<"

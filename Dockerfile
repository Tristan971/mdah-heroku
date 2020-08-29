FROM registry.gitlab.com/mangadex-pub/mangadex_at_home:latest

ADD read-settings-and-start.sh /mangahome/read-settings-and-start.sh
ADD settings.sample.json /mangahome/settings.json

ENTRYPOINT ["/mangahome/read-settings-and-start.sh",  "/mangahome/settings.json" ]


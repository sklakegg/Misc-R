library("slackr")

slackr_setup(channel="#",
             username="",
             incoming_webhook_url="",
             api_token="",
             echo=FALSE)


text_slackr("Text")

notify_slack(data.frame(matrix(ncol = 1, nrow = 1)), "df")

a_plot <- ggplot() + geom_point()
ggslackr(a_plot)
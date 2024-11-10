library(survival)
library(survminer)

# set event to 1 and censored to 0
lungd <- lung
lungd$status <- lungd$status - 1

# Create a survival object with status, time and sex as group
fit <- surv_fit(Surv(time, status) ~ sex, data = lungd)

ggsurvplot(
  fit,
  data = lungd,
  risk.table = T,
  cumevents = T,
  pval = T,
  conf.int = F,
  xlab = "Time",
  ggtheme = theme_light(),
  risk.table.text.col = T,
  risk.table.y.text = F,
  cumevents.y.text = F,
  pval.size = 3,
  fontsize = 3
  
)

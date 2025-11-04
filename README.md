# Terminating Cleaner

A Kubernetes CronJob that automatically identifies pods stuck in a terminating state and deletes them.

This fork adds a force deletion after it clears the finalizers.

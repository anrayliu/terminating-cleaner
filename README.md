# Terminating Cleaner

A Kubernetes CronJob that automatically identifies pods stuck in a terminating state and deletes them.

This fork uses a different strategy of termination (force deletion instead of finalizer removal)

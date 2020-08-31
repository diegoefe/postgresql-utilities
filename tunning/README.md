## Performance tunning


### Fix out-of-memory error
1. Modify this parameters on <path to database>/**postgresql.conf**
    
```bash
# shared_buffers = 128MB			# min 128kB
shared_buffers = 128kB			# min 128kB

#work_mem = 4MB				# min 64kB
work_mem = 128MB
```

1. Restart the server
// attributes: thunk
int dl_iterate_phdr(int (*callback)(struct dl_phdr_info *, size_t, void *), void *data)
{
  return dl_iterate_phdr(callback, data);
}

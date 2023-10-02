#include "header.h"

int filesize(char const *filepath)
{
    struct stat sb;

    if (stat(filepath, &sb) == -1)
        return -1;
    if (S_ISDIR(sb.st_mode))
        return -1;
    return sb.st_size;
}

char *open_file(char const *filepath)
{
    int fd;
    int size = filesize(filepath);
    char *buf;

    if (size == -1)
        return NULL;
    buf = malloc(size + 1);
    if (buf == NULL)
        return NULL;
    fd = open(filepath, O_RDONLY);
    if (fd <= 0)
        return NULL;
    if (read(fd, buf, size) < 0)
        return NULL;
    buf[size] = '\0';
    return buf;
}

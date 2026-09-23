.class public Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# static fields
.field public static final e:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field public a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.field public final b:Ljava/io/File;

.field public final c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field public final d:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2
    .line 3
    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmp-long v0, p4, v0

    .line 13
    .line 14
    if-ltz v0, :cond_2

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-wide p4, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    :cond_0
    move-wide v3, p4

    .line 26
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->b:Ljava/io/File;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 29
    .line 30
    const v5, 0x7fffffff

    .line 31
    .line 32
    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    move-object v2, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d(Ljava/io/File;Ljava/io/File;JI)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "fileNameGenerator argument must be not null"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "cacheMaxSize argument must be positive number"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p2, "cacheDir argument must be not null"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->e(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->c()Ljava/io/OutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x8000

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 30
    .line 31
    const/16 v2, 0x64

    .line 32
    .line 33
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    .line 35
    .line 36
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->b()V

    .line 43
    .line 44
    .line 45
    return p2

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->a()V

    .line 47
    .line 48
    .line 49
    return p2

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final b()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->j:J

    .line 4
    .line 5
    const-wide/16 v3, 0x3

    .line 6
    .line 7
    div-long/2addr v1, v3

    .line 8
    iget v3, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->k:I

    .line 9
    .line 10
    div-int/lit8 v3, v3, 0x3

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->b(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 21
    .line 22
    iget-object v3, v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->c:Ljava/io/File;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->b:Ljava/io/File;

    .line 25
    .line 26
    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :try_start_2
    iget-wide v5, v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    :try_start_3
    monitor-exit v1

    .line 30
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->i()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 46
    :goto_1
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->e(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->c()Ljava/io/OutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x8000

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {p2, v0, p3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->b(Ljava/io/InputStream;Ljava/io/BufferedOutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    .line 30
    .line 31
    .line 32
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->b()V

    .line 39
    .line 40
    .line 41
    return p2

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->a()V

    .line 43
    .line 44
    .line 45
    return p2

    .line 46
    :catchall_0
    move-exception p2

    .line 47
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->a()V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final clear()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->b(IJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->c:Ljava/io/File;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->c:Ljava/io/File;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->b:Ljava/io/File;

    .line 24
    .line 25
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    :try_start_2
    iget-wide v5, v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    :try_start_3
    monitor-exit v1

    .line 29
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->i()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    move-object v2, p0

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_1
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 45
    :goto_1
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method

.method public final d(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p1, p3, p4, p5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->k(Ljava/io/File;JI)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    move-object p1, v0

    .line 10
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p2

    .line 18
    move-wide v4, p3

    .line 19
    move v6, p5

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->d(Ljava/io/File;Ljava/io/File;JI)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p0

    .line 25
    :goto_0
    iget-object p2, v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    throw p1
.end method

.method public final get(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 5
    .line 6
    invoke-interface {v2, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->f(Ljava/lang/String;)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_3
    iget-object v1, p1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->c:[Ljava/io/File;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aget-object v0, v1, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    move-object v3, v0

    .line 32
    move-object v0, p1

    .line 33
    move-object p1, v3

    .line 34
    goto :goto_3

    .line 35
    :catch_1
    move-exception v1

    .line 36
    :goto_1
    move-object p1, v0

    .line 37
    goto :goto_2

    .line 38
    :catch_2
    move-exception p1

    .line 39
    move-object v1, p1

    .line 40
    goto :goto_1

    .line 41
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v0

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :goto_3
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    .line 54
    .line 55
    .line 56
    :cond_3
    throw v0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->a:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->c:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->u(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/L;->a(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1
.end method

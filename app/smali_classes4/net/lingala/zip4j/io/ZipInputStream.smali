.class public Lnet/lingala/zip4j/io/ZipInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final c:Lnet/lingala/zip4j/io/PartInputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/PartInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->close()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->a()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    :cond_0
    return v1
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 7
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, v0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return p3

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return p3
.end method

.method public final skip(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/ZipInputStream;->c:Lnet/lingala/zip4j/io/PartInputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/io/PartInputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

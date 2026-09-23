.class public final Lcom/nostra13/universalimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/BufferedOutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7d000

    .line 8
    .line 9
    .line 10
    :cond_0
    const v1, 0x8000

    .line 11
    .line 12
    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p2, v3, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;->a(II)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x4b

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    div-int v4, v3, v0

    .line 25
    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    move v4, v3

    .line 30
    :cond_2
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, -0x1

    .line 35
    if-eq v6, v7, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 38
    .line 39
    .line 40
    add-int/2addr v4, v6

    .line 41
    invoke-interface {p2, v4, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;->a(II)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    mul-int/lit8 v6, v4, 0x64

    .line 48
    .line 49
    div-int/2addr v6, v0

    .line 50
    if-ge v6, v5, :cond_2

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:I

.field public g:I

.field public h:Z


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final read()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public final read([BII)I
    .locals 3

    add-int/2addr p3, p2

    .line 2
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->j(III)V

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    int-to-byte v1, v1

    .line 4
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method

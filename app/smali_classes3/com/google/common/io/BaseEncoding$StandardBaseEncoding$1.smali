.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public c:I


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    throw v1

    .line 7
    :cond_0
    throw v1
.end method

.method public final flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final write(I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->c:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x8

    .line 4
    .line 5
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->c:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

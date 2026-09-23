.class Lcom/google/common/base/Splitter$4;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "SourceFile"


# virtual methods
.method public final b(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->g:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

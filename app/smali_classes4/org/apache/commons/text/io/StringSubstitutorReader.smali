.class public Lorg/apache/commons/text/io/StringSubstitutorReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# virtual methods
.method public final read()I
    .locals 3

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/text/io/StringSubstitutorReader;->read([CII)I

    goto :goto_0
.end method

.method public final read([CII)I
    .locals 0

    if-gtz p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

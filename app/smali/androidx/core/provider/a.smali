.class public final synthetic Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    check-cast p2, [B

    .line 4
    .line 5
    sget-object v0, Landroidx/core/provider/FontProvider;->a:Landroidx/collection/LruCache;

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    array-length v1, p2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    array-length p2, p2

    .line 13
    sub-int/2addr p1, p2

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    array-length v2, p1

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-byte v2, p1, v1

    .line 21
    .line 22
    aget-byte v3, p2, v1

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    return v2

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v0
.end method

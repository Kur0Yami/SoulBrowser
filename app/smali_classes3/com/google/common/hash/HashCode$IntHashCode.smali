.class final Lcom/google/common/hash/HashCode$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntHashCode"
.end annotation


# virtual methods
.method public final a()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    int-to-byte v1, v0

    .line 3
    shr-int/lit8 v2, v0, 0x8

    .line 4
    .line 5
    int-to-byte v2, v2

    .line 6
    shr-int/lit8 v3, v0, 0x10

    .line 7
    .line 8
    int-to-byte v3, v3

    .line 9
    shr-int/lit8 v4, v0, 0x18

    .line 10
    .line 11
    int-to-byte v4, v4

    .line 12
    const/4 v5, 0x4

    .line 13
    new-array v5, v5, [B

    .line 14
    .line 15
    aput-byte v1, v5, v0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-byte v2, v5, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-byte v3, v5, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte v4, v5, v0

    .line 25
    .line 26
    return-object v5
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final d()I
    .locals 1

    .line 1
    const/16 v0, 0x20

    return v0
.end method

.method public final e(Lcom/google/common/hash/HashCode;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

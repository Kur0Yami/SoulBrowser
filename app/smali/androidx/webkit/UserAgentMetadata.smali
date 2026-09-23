.class public final Landroidx/webkit/UserAgentMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/UserAgentMetadata$Builder;,
        Landroidx/webkit/UserAgentMetadata$BrandVersion;
    }
.end annotation


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p1, p1, Landroidx/webkit/UserAgentMetadata;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v3, v2, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v3, v2, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v3, v2, v0

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    aput-object v3, v2, v0

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    aput-object v3, v2, v0

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    aput-object v3, v2, v0

    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    const/4 v3, 0x6

    .line 31
    aput-object v0, v2, v3

    .line 32
    .line 33
    const/4 v3, 0x7

    .line 34
    aput-object v1, v2, v3

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    aput-object v0, v2, v1

    .line 39
    .line 40
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

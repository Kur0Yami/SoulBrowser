.class final Lokio/internal/ResourceFileSystem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/internal/ResourceFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokio/internal/ResourceFileSystem$Companion;",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokio/Path;)Z
    .locals 4

    .line 1
    sget-object v0, Lokio/internal/ResourceFileSystem;->i:Lokio/Path;

    .line 2
    .line 3
    iget-object v0, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 4
    .line 5
    sget-object v1, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lokio/ByteString;->k(Lokio/ByteString;Lokio/ByteString;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 16
    .line 17
    sget-object v3, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 18
    .line 19
    invoke-static {v1, v3}, Lokio/ByteString;->k(Lokio/ByteString;Lokio/ByteString;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    const/4 v3, 0x2

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-static {v0, v1, p0, v3}, Lokio/ByteString;->q(Lokio/ByteString;III)Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lokio/Path;->d()Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lokio/ByteString;->d()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-ne p0, v3, :cond_2

    .line 45
    .line 46
    sget-object v0, Lokio/ByteString;->h:Lokio/ByteString;

    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lokio/ByteString;->s()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lkotlin/text/StringsKt;->q(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    xor-int/lit8 p0, p0, 0x1

    .line 57
    .line 58
    return p0
.end method

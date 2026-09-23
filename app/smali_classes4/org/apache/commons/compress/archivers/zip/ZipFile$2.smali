.class Lorg/apache/commons/compress/archivers/zip/ZipFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 2
    .line 3
    check-cast p2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    if-nez p2, :cond_2

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_2
    if-ne p1, p2, :cond_3

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_3
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_4
    move-object p1, v1

    .line 28
    :goto_0
    instance-of v0, p2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    move-object v1, p2

    .line 33
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 34
    .line 35
    :cond_5
    if-nez p1, :cond_6

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_6
    if-nez v1, :cond_7

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_7
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 42
    .line 43
    iget-wide p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 44
    .line 45
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 46
    .line 47
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 48
    .line 49
    sub-long/2addr p1, v0

    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .line 52
    cmp-long p1, p1, v0

    .line 53
    .line 54
    if-nez p1, :cond_8

    .line 55
    .line 56
    :goto_1
    const/4 p1, 0x0

    .line 57
    return p1

    .line 58
    :cond_8
    if-gez p1, :cond_9

    .line 59
    .line 60
    :goto_2
    const/4 p1, -0x1

    .line 61
    return p1

    .line 62
    :cond_9
    :goto_3
    const/4 p1, 0x1

    .line 63
    return p1
.end method

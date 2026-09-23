.class Lorg/apache/commons/lang3/time/FastDateParser$1;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final c(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ge p2, v0, :cond_1

    .line 4
    .line 5
    iget v1, p1, Lorg/apache/commons/lang3/time/FastDateParser;->h:I

    .line 6
    .line 7
    add-int/2addr v1, p2

    .line 8
    iget p1, p1, Lorg/apache/commons/lang3/time/FastDateParser;->i:I

    .line 9
    .line 10
    if-lt p2, p1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    add-int/2addr v1, v0

    .line 14
    return v1

    .line 15
    :cond_1
    return p2
.end method

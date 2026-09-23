.class final Lorg/apache/commons/text/StrMatcher$TrimMatcher;
.super Lorg/apache/commons/text/StrMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrimMatcher"
.end annotation


# virtual methods
.method public final a([CII)I
    .locals 0

    .line 1
    aget-char p1, p1, p2

    .line 2
    .line 3
    const/16 p2, 0x20

    .line 4
    .line 5
    if-gt p1, p2, :cond_0

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

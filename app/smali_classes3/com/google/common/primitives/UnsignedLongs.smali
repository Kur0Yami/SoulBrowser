.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;,
        Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
    }
.end annotation


# direct methods
.method public static a(JJ)I
    .locals 2

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long/2addr p0, v0

    .line 4
    xor-long/2addr p2, v0

    .line 5
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-string p0, "0"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/16 v3, 0xa

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    invoke-static {p0, p1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    const/16 v2, 0x40

    .line 20
    .line 21
    new-array v2, v2, [C

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    ushr-long v4, p0, v4

    .line 25
    .line 26
    const/4 v6, 0x5

    .line 27
    int-to-long v6, v6

    .line 28
    div-long/2addr v4, v6

    .line 29
    int-to-long v6, v3

    .line 30
    mul-long v8, v4, v6

    .line 31
    .line 32
    sub-long/2addr p0, v8

    .line 33
    long-to-int p0, p0

    .line 34
    invoke-static {p0, v3}, Ljava/lang/Character;->forDigit(II)C

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/16 p1, 0x3f

    .line 39
    .line 40
    aput-char p0, v2, p1

    .line 41
    .line 42
    :goto_0
    cmp-long p0, v4, v0

    .line 43
    .line 44
    if-lez p0, :cond_2

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    rem-long v8, v4, v6

    .line 49
    .line 50
    long-to-int p0, v8

    .line 51
    invoke-static {p0, v3}, Ljava/lang/Character;->forDigit(II)C

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    aput-char p0, v2, p1

    .line 56
    .line 57
    div-long/2addr v4, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 60
    .line 61
    rsub-int/lit8 v0, p1, 0x40

    .line 62
    .line 63
    invoke-direct {p0, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

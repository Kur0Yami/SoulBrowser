.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SourceFile"


# virtual methods
.method public final b([BI)I
    .locals 4

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/16 v2, 0x81

    .line 7
    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    .line 10
    const/16 v3, 0x9f

    .line 11
    .line 12
    if-gt v0, v3, :cond_0

    .line 13
    .line 14
    sub-int/2addr v0, v2

    .line 15
    :goto_0
    mul-int/lit16 v0, v0, 0xbc

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/16 v2, 0xe0

    .line 19
    .line 20
    if-lt v0, v2, :cond_2

    .line 21
    .line 22
    const/16 v2, 0xef

    .line 23
    .line 24
    if-gt v0, v2, :cond_2

    .line 25
    .line 26
    add-int/lit16 v0, v0, -0xc1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    aget-byte p1, p1, p2

    .line 32
    .line 33
    and-int/lit16 p1, p1, 0xff

    .line 34
    .line 35
    add-int/lit8 p2, p1, -0x40

    .line 36
    .line 37
    add-int/2addr p2, v0

    .line 38
    const/16 v0, 0x80

    .line 39
    .line 40
    if-lt p1, v0, :cond_1

    .line 41
    .line 42
    add-int/2addr p2, v1

    .line 43
    :cond_1
    return p2

    .line 44
    :cond_2
    return v1
.end method

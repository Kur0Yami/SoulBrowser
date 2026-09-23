.class public Lorg/tukaani/xz/delta/DeltaDecoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "SourceFile"


# virtual methods
.method public final a([BII)V
    .locals 0

    .line 1
    add-int/2addr p3, p2

    .line 2
    if-lt p2, p3, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    aget-byte p1, p1, p2

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

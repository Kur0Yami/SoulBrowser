.class public Lorg/tukaani/xz/check/CRC64;
.super Lorg/tukaani/xz/check/Check;
.source "SourceFile"


# static fields
.field public static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    sput-object v0, Lorg/tukaani/xz/check/CRC64;->a:[J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    sget-object v2, Lorg/tukaani/xz/check/CRC64;->a:[J

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    int-to-long v2, v1

    .line 15
    move v4, v0

    .line 16
    :goto_1
    const/16 v5, 0x8

    .line 17
    .line 18
    if-ge v4, v5, :cond_1

    .line 19
    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    and-long v7, v2, v5

    .line 23
    .line 24
    cmp-long v5, v7, v5

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    ushr-long/2addr v2, v6

    .line 30
    const-wide v5, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    xor-long/2addr v2, v5

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    ushr-long/2addr v2, v6

    .line 38
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v4, Lorg/tukaani/xz/check/CRC64;->a:[J

    .line 42
    .line 43
    aput-wide v2, v4, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

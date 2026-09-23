.class public abstract Lorg/tukaani/xz/rangecoder/RangeEncoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->a:[I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    :goto_0
    const/16 v1, 0x800

    .line 10
    .line 11
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v3, v0

    .line 15
    move v2, v1

    .line 16
    :goto_1
    const/4 v4, 0x4

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    mul-int/2addr v3, v3

    .line 20
    shl-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    :goto_2
    const/high16 v4, -0x10000

    .line 23
    .line 24
    and-int/2addr v4, v3

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    ushr-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v1, Lorg/tukaani/xz/rangecoder/RangeEncoder;->a:[I

    .line 36
    .line 37
    shr-int/lit8 v3, v0, 0x4

    .line 38
    .line 39
    rsub-int v2, v2, 0xa1

    .line 40
    .line 41
    aput v2, v1, v3

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x10

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

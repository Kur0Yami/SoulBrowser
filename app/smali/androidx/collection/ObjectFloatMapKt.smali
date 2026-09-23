.class public final Landroidx/collection/ObjectFloatMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "collection"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 2
    .line 3
    sget-object v1, Landroidx/collection/FloatSetKt;->a:[F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->c(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v0, v1, 0xf

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x8

    .line 27
    .line 28
    shr-int/lit8 v0, v0, 0x3

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->s([J)V

    .line 33
    .line 34
    .line 35
    :goto_0
    shr-int/lit8 v2, v1, 0x3

    .line 36
    .line 37
    and-int/lit8 v3, v1, 0x7

    .line 38
    .line 39
    shl-int/lit8 v3, v3, 0x3

    .line 40
    .line 41
    aget-wide v4, v0, v2

    .line 42
    .line 43
    const-wide/16 v6, 0xff

    .line 44
    .line 45
    shl-long/2addr v6, v3

    .line 46
    not-long v8, v6

    .line 47
    and-long/2addr v4, v8

    .line 48
    or-long/2addr v4, v6

    .line 49
    aput-wide v4, v0, v2

    .line 50
    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    new-array v0, v1, [F

    .line 54
    .line 55
    return-void
.end method

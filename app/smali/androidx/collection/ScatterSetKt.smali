.class public final Landroidx/collection/ScatterSetKt;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1100:1\n1#2:1101\n*E\n"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/collection/ScatterMapKt;->a:[J

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 9
    .line 10
    sget-object v1, Landroidx/collection/internal/ContainerHelpersKt;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->b(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x7

    .line 26
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iput v1, v0, Landroidx/collection/ScatterSet;->c:I

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    sget-object v2, Landroidx/collection/ScatterMapKt;->a:[J

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v2, v1, 0xf

    .line 40
    .line 41
    and-int/lit8 v2, v2, -0x8

    .line 42
    .line 43
    shr-int/lit8 v2, v2, 0x3

    .line 44
    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->s([J)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object v2, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 51
    .line 52
    shr-int/lit8 v3, v1, 0x3

    .line 53
    .line 54
    and-int/lit8 v4, v1, 0x7

    .line 55
    .line 56
    shl-int/lit8 v4, v4, 0x3

    .line 57
    .line 58
    aget-wide v5, v2, v3

    .line 59
    .line 60
    const-wide/16 v7, 0xff

    .line 61
    .line 62
    shl-long/2addr v7, v4

    .line 63
    not-long v9, v7

    .line 64
    and-long/2addr v5, v9

    .line 65
    or-long/2addr v5, v7

    .line 66
    aput-wide v5, v2, v3

    .line 67
    .line 68
    iget v2, v0, Landroidx/collection/ScatterSet;->c:I

    .line 69
    .line 70
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->a(I)I

    .line 71
    .line 72
    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 76
    .line 77
    return-void
.end method

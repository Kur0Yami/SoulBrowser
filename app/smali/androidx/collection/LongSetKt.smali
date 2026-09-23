.class public final Landroidx/collection/LongSetKt;
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
        "SMAP\nLongSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSet.kt\nandroidx/collection/LongSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->c(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/lit8 v0, v1, 0xf

    .line 23
    .line 24
    and-int/lit8 v0, v0, -0x8

    .line 25
    .line 26
    shr-int/lit8 v0, v0, 0x3

    .line 27
    .line 28
    new-array v0, v0, [J

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->s([J)V

    .line 31
    .line 32
    .line 33
    :goto_0
    shr-int/lit8 v2, v1, 0x3

    .line 34
    .line 35
    and-int/lit8 v3, v1, 0x7

    .line 36
    .line 37
    shl-int/lit8 v3, v3, 0x3

    .line 38
    .line 39
    aget-wide v4, v0, v2

    .line 40
    .line 41
    const-wide/16 v6, 0xff

    .line 42
    .line 43
    shl-long/2addr v6, v3

    .line 44
    not-long v8, v6

    .line 45
    and-long/2addr v4, v8

    .line 46
    or-long/2addr v4, v6

    .line 47
    aput-wide v4, v0, v2

    .line 48
    .line 49
    new-array v0, v1, [J

    .line 50
    .line 51
    return-void
.end method

.class public final Landroidx/graphics/shapes/MutableCubic;
.super Landroidx/graphics/shapes/Cubic;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/graphics/shapes/MutableCubic;",
        "Landroidx/graphics/shapes/Cubic;",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n48#2:449\n54#2:451\n22#3:450\n22#3:452\n1#4:453\n*S KotlinDebug\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/MutableCubic\n*L\n433#1:449\n434#1:451\n433#1:450\n434#1:452\n*E\n"
    }
.end annotation


# virtual methods
.method public final f(Landroidx/graphics/shapes/PointTransformer;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 2
    .line 3
    aget v1, v0, p2

    .line 4
    .line 5
    add-int/lit8 v2, p2, 0x1

    .line 6
    .line 7
    aget v3, v0, v2

    .line 8
    .line 9
    check-cast p1, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;

    .line 10
    .line 11
    invoke-virtual {p1, v1, v3}, Landroidx/graphics/shapes/Shapes_androidKt$transformed$1;->a(FF)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const/16 p1, 0x20

    .line 16
    .line 17
    shr-long v5, v3, p1

    .line 18
    .line 19
    long-to-int p1, v5

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    aput p1, v0, p2

    .line 25
    .line 26
    const-wide p1, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr p1, v3

    .line 32
    long-to-int p1, p1

    .line 33
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    aput p1, v0, v2

    .line 38
    .line 39
    return-void
.end method

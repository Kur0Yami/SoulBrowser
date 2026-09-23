.class public final Landroidx/graphics/shapes/Cubic$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/graphics/shapes/Cubic$Companion;",
        "",
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


# direct methods
.method public static a(FFFF)Landroidx/graphics/shapes/Cubic;
    .locals 9

    .line 1
    const v0, 0x3eaaaaab

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p2, v0}, Landroidx/graphics/shapes/Utils;->c(FFF)F

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    invoke-static {p1, p3, v0}, Landroidx/graphics/shapes/Utils;->c(FFF)F

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v0, 0x3f2aaaab

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2, v0}, Landroidx/graphics/shapes/Utils;->c(FFF)F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {p1, p3, v0}, Landroidx/graphics/shapes/Utils;->c(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    move v1, p0

    .line 24
    move v2, p1

    .line 25
    move v7, p2

    .line 26
    move v8, p3

    .line 27
    invoke-static/range {v1 .. v8}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

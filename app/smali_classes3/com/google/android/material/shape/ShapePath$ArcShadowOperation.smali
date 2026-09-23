.class Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcShadowOperation"
.end annotation


# instance fields
.field public final c:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 2
    .line 3
    iget v6, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->f:F

    .line 4
    .line 5
    iget v7, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->g:F

    .line 6
    .line 7
    new-instance v4, Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->b:F

    .line 10
    .line 11
    iget v2, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->c:F

    .line 12
    .line 13
    iget v3, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->d:F

    .line 14
    .line 15
    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->e:F

    .line 16
    .line 17
    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    .line 19
    .line 20
    move-object v3, p1

    .line 21
    move-object v1, p2

    .line 22
    move v5, p3

    .line 23
    move-object v2, p4

    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shadow/ShadowRenderer;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

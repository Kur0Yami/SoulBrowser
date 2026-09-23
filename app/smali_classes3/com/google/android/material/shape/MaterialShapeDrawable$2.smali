.class Lcom/google/android/material/shape/MaterialShapeDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->i:Ljava/util/BitSet;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->g:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 13
    .line 14
    iget v1, p1, Lcom/google/android/material/shape/ShapePath;->f:F

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/material/shape/ShapePath;->h:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/google/android/material/shape/ShapePath$1;

    .line 32
    .line 33
    invoke-direct {p1, p2, v1}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 34
    .line 35
    .line 36
    aput-object p1, v0, p3

    .line 37
    .line 38
    return-void
.end method

.method public final b(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$2;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->i:Ljava/util/BitSet;

    .line 4
    .line 5
    add-int/lit8 v2, p3, 0x4

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->h:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 15
    .line 16
    iget v1, p1, Lcom/google/android/material/shape/ShapePath;->f:F

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Matrix;

    .line 22
    .line 23
    invoke-direct {v1, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/material/shape/ShapePath;->h:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/google/android/material/shape/ShapePath$1;

    .line 34
    .line 35
    invoke-direct {p1, p2, v1}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 36
    .line 37
    .line 38
    aput-object p1, v0, p3

    .line 39
    .line 40
    return-void
.end method

.class Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/MaterialShapes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VertexAndRounding"
.end annotation


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public final b:Landroidx/graphics/shapes/CornerRounding;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/graphics/shapes/CornerRounding;->c:Landroidx/graphics/shapes/CornerRounding;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->b:Landroidx/graphics/shapes/CornerRounding;

    return-void
.end method

.class Lcom/mycompany/app/editor/core/PhotoTouchListener$1;
.super Lcom/mycompany/app/editor/core/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public final c:Lcom/mycompany/app/editor/core/Vector2D;

.field public final synthetic d:Lcom/mycompany/app/editor/core/PhotoTouchListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->d:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/editor/core/Vector2D;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->c:Lcom/mycompany/app/editor/core/Vector2D;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/editor/core/ScaleGestureDetector;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->f:F

    .line 2
    .line 3
    iput v0, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a:F

    .line 4
    .line 5
    iget v0, p1, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->g:F

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->b:F

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->c:Lcom/mycompany/app/editor/core/Vector2D;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->e:Lcom/mycompany/app/editor/core/Vector2D;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

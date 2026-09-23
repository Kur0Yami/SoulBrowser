.class Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector$1;->a:Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector$1;->a:Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-interface {v0, v1, v2, p1}, Lcom/mycompany/app/zoom/ZoomGestureDetector$OnGestureListener;->a(FFF)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

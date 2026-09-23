.class Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/zoom/ZoomVideoAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field public final c:Lcom/mycompany/app/zoom/ZoomScroller;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/mycompany/app/zoom/ZoomVideoAttacher;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/zoom/ZoomVideoAttacher;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/widget/OverScroller;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 11
    .line 12
    check-cast v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v2, v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v4, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 36
    .line 37
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->f:I

    .line 38
    .line 39
    sub-int/2addr v5, v3

    .line 40
    int-to-float v5, v5

    .line 41
    iget v6, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->g:I

    .line 42
    .line 43
    sub-int/2addr v6, v2

    .line 44
    int-to-float v6, v6

    .line 45
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v5, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    iget-object v5, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v5, v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->K(Landroid/graphics/RectF;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    iput v3, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->f:I

    .line 77
    .line 78
    iput v2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->g:I

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

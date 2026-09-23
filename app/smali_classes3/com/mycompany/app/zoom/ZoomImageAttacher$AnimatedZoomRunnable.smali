.class Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/zoom/ZoomImageAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field public final c:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final synthetic i:Lcom/mycompany/app/zoom/ZoomImageAttacher;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->i:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 5
    .line 6
    iput p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->g:F

    .line 7
    .line 8
    iput p4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->c:F

    .line 9
    .line 10
    iput p5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->f:F

    .line 11
    .line 12
    cmpg-float p1, p2, p3

    .line 13
    .line 14
    if-gez p1, :cond_0

    .line 15
    .line 16
    const p1, 0x3f88f5c3    # 1.07f

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->h:F

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->h:F

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->i:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 11
    .line 12
    iget v3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->h:F

    .line 13
    .line 14
    iget v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->c:F

    .line 15
    .line 16
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->f:F

    .line 17
    .line 18
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/high16 v7, 0x3f800000    # 1.0f

    .line 30
    .line 31
    cmpl-float v8, v3, v7

    .line 32
    .line 33
    iget v9, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;->g:F

    .line 34
    .line 35
    if-lez v8, :cond_1

    .line 36
    .line 37
    cmpg-float v8, v6, v9

    .line 38
    .line 39
    if-ltz v8, :cond_2

    .line 40
    .line 41
    :cond_1
    cmpg-float v3, v3, v7

    .line 42
    .line 43
    if-gez v3, :cond_3

    .line 44
    .line 45
    cmpg-float v3, v9, v6

    .line 46
    .line 47
    if-gez v3, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 55
    .line 56
    div-float/2addr v9, v6

    .line 57
    iget-object v1, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 58
    .line 59
    invoke-virtual {v1, v9, v9, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

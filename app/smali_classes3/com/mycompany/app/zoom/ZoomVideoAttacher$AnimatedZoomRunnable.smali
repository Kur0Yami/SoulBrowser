.class Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;
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
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field public final c:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final synthetic i:Lcom/mycompany/app/zoom/ZoomVideoAttacher;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/zoom/ZoomVideoAttacher;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->i:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 5
    .line 6
    iput p3, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->g:F

    .line 7
    .line 8
    iput p4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->c:F

    .line 9
    .line 10
    iput p5, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->f:F

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
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->h:F

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->h:F

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->i:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

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
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 11
    .line 12
    iget v3, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->h:F

    .line 13
    .line 14
    iget v4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->c:F

    .line 15
    .line 16
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->f:F

    .line 17
    .line 18
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/high16 v6, 0x3f800000    # 1.0f

    .line 29
    .line 30
    cmpl-float v7, v3, v6

    .line 31
    .line 32
    iget v8, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;->g:F

    .line 33
    .line 34
    if-lez v7, :cond_1

    .line 35
    .line 36
    cmpg-float v7, v2, v8

    .line 37
    .line 38
    if-ltz v7, :cond_2

    .line 39
    .line 40
    :cond_1
    cmpg-float v3, v3, v6

    .line 41
    .line 42
    if-gez v3, :cond_3

    .line 43
    .line 44
    cmpg-float v3, v8, v2

    .line 45
    .line 46
    if-gez v3, :cond_3

    .line 47
    .line 48
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->p:Z

    .line 54
    .line 55
    div-float/2addr v8, v2

    .line 56
    iget-object v1, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 57
    .line 58
    invoke-virtual {v1, v8, v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

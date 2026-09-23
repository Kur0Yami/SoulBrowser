.class public Lcom/mycompany/app/zoom/ZoomVideoAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mycompany/app/zoom/ZoomGestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;,
        Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;,
        Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;

.field public f:Landroid/view/GestureDetector;

.field public g:Lcom/mycompany/app/zoom/ZoomGestureDetector;

.field public h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

.field public final s:Landroid/graphics/Matrix;

.field public final t:Landroid/graphics/Matrix;

.field public final u:Landroid/graphics/Matrix;

.field public final v:Landroid/graphics/RectF;

.field public final w:[F


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->s:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->t:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->v:Landroid/graphics/RectF;

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    new-array v0, v0, [F

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->w:[F

    .line 37
    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->c:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/mycompany/app/zoom/ZoomVideoAttacher$1;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f:Landroid/view/GestureDetector;

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object p0, v0, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 79
    .line 80
    iput-object p2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/high16 v1, 0x42c80000    # 100.0f

    .line 22
    .line 23
    cmpl-float v1, v0, v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 26
    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    const p1, 0x3f666666    # 0.9f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const v1, 0x3c23d70a    # 0.01f

    .line 40
    .line 41
    .line 42
    cmpl-float v0, v0, v1

    .line 43
    .line 44
    if-lez v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(FF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

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
    new-instance v2, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v2, v0, v3}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomVideoAttacher;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->r:Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->e()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v0, v5}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    neg-float v6, v6

    .line 54
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 59
    .line 60
    neg-float v7, v7

    .line 61
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    int-to-float v3, v3

    .line 66
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    cmpg-float v10, v3, v10

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    if-gez v10, :cond_2

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    sub-float/2addr v10, v3

    .line 80
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    move v10, v11

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v3, v6

    .line 87
    move v10, v3

    .line 88
    :goto_0
    int-to-float v4, v4

    .line 89
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    cmpg-float v12, v4, v12

    .line 94
    .line 95
    if-gez v12, :cond_3

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    sub-float/2addr v5, v4

    .line 102
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    move v13, v4

    .line 107
    move v12, v11

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move v12, v7

    .line 110
    move v13, v12

    .line 111
    :goto_1
    iput v6, v2, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->f:I

    .line 112
    .line 113
    iput v7, v2, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->g:I

    .line 114
    .line 115
    if-ne v6, v3, :cond_4

    .line 116
    .line 117
    if-eq v7, v13, :cond_5

    .line 118
    .line 119
    :cond_4
    const/4 v4, 0x1

    .line 120
    iput-boolean v4, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->q:Z

    .line 121
    .line 122
    iget-object v2, v2, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 123
    .line 124
    check-cast v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    iget-object v5, v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 128
    .line 129
    const/4 v14, 0x0

    .line 130
    move v11, v3

    .line 131
    invoke-virtual/range {v5 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->r:Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->K(Landroid/graphics/RectF;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-float v4, v4

    .line 36
    cmpg-float v5, v2, v4

    .line 37
    .line 38
    const/high16 v6, 0x40000000    # 2.0f

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-gtz v5, :cond_2

    .line 42
    .line 43
    sub-float/2addr v4, v2

    .line 44
    div-float/2addr v4, v6

    .line 45
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 46
    .line 47
    :goto_1
    sub-float/2addr v4, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    cmpl-float v5, v2, v7

    .line 52
    .line 53
    if-lez v5, :cond_3

    .line 54
    .line 55
    neg-float v4, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 58
    .line 59
    cmpg-float v5, v2, v4

    .line 60
    .line 61
    if-gez v5, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v4, v7

    .line 65
    :goto_2
    int-to-float v0, v0

    .line 66
    cmpg-float v2, v3, v0

    .line 67
    .line 68
    if-gtz v2, :cond_5

    .line 69
    .line 70
    sub-float/2addr v0, v3

    .line 71
    div-float/2addr v0, v6

    .line 72
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 73
    .line 74
    :goto_3
    sub-float v7, v0, v1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 78
    .line 79
    cmpl-float v3, v2, v7

    .line 80
    .line 81
    if-lez v3, :cond_6

    .line 82
    .line 83
    neg-float v7, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_6
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 86
    .line 87
    cmpg-float v2, v1, v0

    .line 88
    .line 89
    if-gez v2, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 93
    .line 94
    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final f()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->s:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->t:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    iget-object v2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->v:Landroid/graphics/RectF;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final h()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->w:[F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    return v0
.end method

.method public final i()Landroid/view/TextureView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/TextureView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/TextureView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->c:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f:Landroid/view/GestureDetector;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 24
    .line 25
    return-void
.end method

.method public final k(IIIZ)V
    .locals 5

    .line 1
    rem-int/lit16 v0, p3, 0xb4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v4, p2

    .line 7
    move p2, p1

    .line 8
    move p1, v4

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_6

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->l:I

    .line 22
    .line 23
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k:I

    .line 24
    .line 25
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 26
    .line 27
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    if-nez p4, :cond_4

    .line 47
    .line 48
    iget p4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 49
    .line 50
    if-ne p1, p4, :cond_4

    .line 51
    .line 52
    iget p4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 53
    .line 54
    if-ne p2, p4, :cond_4

    .line 55
    .line 56
    iget p4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k:I

    .line 57
    .line 58
    if-ne v2, p4, :cond_4

    .line 59
    .line 60
    iget p4, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->l:I

    .line 61
    .line 62
    if-ne v1, p4, :cond_4

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 66
    .line 67
    iput p2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 68
    .line 69
    iput v2, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k:I

    .line 70
    .line 71
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->l:I

    .line 72
    .line 73
    int-to-float p4, p1

    .line 74
    int-to-float v0, v2

    .line 75
    div-float/2addr p4, v0

    .line 76
    int-to-float v0, p2

    .line 77
    int-to-float v3, v1

    .line 78
    div-float/2addr v0, v3

    .line 79
    iget-object v3, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->s:Landroid/graphics/Matrix;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p4, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 85
    .line 86
    .line 87
    sub-int/2addr v2, p1

    .line 88
    int-to-float p1, v2

    .line 89
    const/high16 p4, 0x40000000    # 2.0f

    .line 90
    .line 91
    div-float/2addr p1, p4

    .line 92
    sub-int/2addr v1, p2

    .line 93
    int-to-float p2, v1

    .line 94
    div-float/2addr p2, p4

    .line 95
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 96
    .line 97
    .line 98
    int-to-float p1, p3

    .line 99
    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->u:Landroid/graphics/Matrix;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    :goto_1
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->l:I

    .line 112
    .line 113
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k:I

    .line 114
    .line 115
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 116
    .line 117
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    :goto_2
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->l:I

    .line 124
    .line 125
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->k:I

    .line 126
    .line 127
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 128
    .line 129
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->d()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->m:Z

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    :goto_0
    move v6, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    iget p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i:I

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j:I

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->i()Landroid/view/TextureView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->p:Z

    .line 53
    .line 54
    new-instance v3, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    move-object v4, p0

    .line 61
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomVideoAttacher;FFFF)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    return v1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->k()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    if-eq v1, v3, :cond_4

    .line 14
    .line 15
    if-eq v1, v2, :cond_4

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    move-object v5, p0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->m()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    :cond_3
    iput-boolean v3, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->o:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iput-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->n:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    .line 43
    cmpg-float v1, v1, v4

    .line 44
    .line 45
    if-gez v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->e()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f()Landroid/graphics/Matrix;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    new-instance v4, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h()F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/high16 v7, 0x3f800000    # 1.0f

    .line 75
    .line 76
    move-object v5, p0

    .line 77
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomVideoAttacher;FFFF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    move v0, v3

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move-object v5, p0

    .line 86
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->m()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    :cond_6
    iput-boolean v3, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->n:Z

    .line 97
    .line 98
    :cond_7
    iput-boolean v0, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->o:Z

    .line 99
    .line 100
    iput-boolean v0, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->q:Z

    .line 101
    .line 102
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->r:Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    iget-object p1, p1, Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 107
    .line 108
    check-cast p1, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    iput-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->r:Lcom/mycompany/app/zoom/ZoomVideoAttacher$FlingRunnable;

    .line 117
    .line 118
    :cond_8
    :goto_1
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->m()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_9

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    :goto_2
    move v0, v3

    .line 130
    goto :goto_4

    .line 131
    :cond_a
    :goto_3
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->f:Landroid/view/GestureDetector;

    .line 132
    .line 133
    if-eqz p1, :cond_b

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_b

    .line 140
    .line 141
    move v0, v3

    .line 142
    :cond_b
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->g:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 143
    .line 144
    if-eqz p1, :cond_c

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a(Landroid/view/MotionEvent;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_c
    :goto_4
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 151
    .line 152
    if-eqz p1, :cond_10

    .line 153
    .line 154
    iget-boolean v1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->o:Z

    .line 155
    .line 156
    if-nez v1, :cond_e

    .line 157
    .line 158
    iget-boolean v1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->p:Z

    .line 159
    .line 160
    if-nez v1, :cond_e

    .line 161
    .line 162
    iget-boolean v1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->q:Z

    .line 163
    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_d
    invoke-interface {p1, p2}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->x(Landroid/view/MotionEvent;)V

    .line 168
    .line 169
    .line 170
    return v0

    .line 171
    :cond_e
    :goto_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eq p1, v3, :cond_f

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-ne p1, v2, :cond_10

    .line 182
    .line 183
    :cond_f
    iget-object p1, v5, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->h:Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;

    .line 184
    .line 185
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;->q()V

    .line 186
    .line 187
    .line 188
    :cond_10
    return v0
.end method

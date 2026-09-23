.class public Lcom/mycompany/app/zoom/ZoomImageAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mycompany/app/zoom/ZoomGestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;,
        Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;,
        Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public c:Landroid/view/ViewGroup;

.field public f:Landroid/widget/ImageView;

.field public g:Ljava/lang/ref/WeakReference;

.field public h:Landroid/view/GestureDetector;

.field public i:Lcom/mycompany/app/zoom/ZoomGestureDetector;

.field public j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

.field public final k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

.field public final r:Landroid/graphics/Matrix;

.field public final s:Landroid/graphics/Matrix;

.field public final t:Landroid/graphics/Matrix;

.field public final u:Landroid/graphics/RectF;

.field public final v:[F

.field public w:Landroid/widget/ImageView$ScaleType;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->v:[F

    .line 7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r:Landroid/graphics/Matrix;

    .line 21
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s:Landroid/graphics/Matrix;

    .line 22
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 23
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    const/16 p3, 0x9

    .line 24
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->v:[F

    .line 25
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k:Z

    .line 28
    invoke-virtual {p0, p1, p3, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V
    .locals 2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s:Landroid/graphics/Matrix;

    .line 13
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 14
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 15
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->v:[F

    .line 16
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    return-void
.end method


# virtual methods
.method public final a(FFF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->y:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

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
    const/4 v2, 0x1

    .line 26
    iget-object v3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    const p1, 0x3f7d70a4    # 0.99f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const v1, 0x3c23d70a    # 0.01f

    .line 41
    .line 42
    .line 43
    cmpl-float v0, v0, v1

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->z:Z

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-ne v1, p2, :cond_1

    .line 26
    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    cmpl-float v2, p1, v2

    .line 30
    .line 31
    if-gez v2, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 v2, 0x2

    .line 34
    if-ne v1, v2, :cond_4

    .line 35
    .line 36
    const/high16 v1, -0x40800000    # -1.0f

    .line 37
    .line 38
    cmpg-float p1, p1, v1

    .line 39
    .line 40
    if-gtz p1, :cond_4

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void

    .line 53
    :cond_4
    iput-boolean p2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->o:Z

    .line 54
    .line 55
    return-void
.end method

.method public final c(FF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->y:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    new-instance v2, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v0, v3}, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q:Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 63
    .line 64
    neg-float v6, v6

    .line 65
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    neg-float v7, v7

    .line 72
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    int-to-float v3, v3

    .line 77
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    cmpg-float v10, v3, v10

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    if-gez v10, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    sub-float/2addr v10, v3

    .line 91
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    move v10, v11

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    move v3, v6

    .line 98
    move v10, v3

    .line 99
    :goto_0
    int-to-float v4, v4

    .line 100
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    cmpg-float v12, v4, v12

    .line 105
    .line 106
    if-gez v12, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    sub-float/2addr v5, v4

    .line 113
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    move v13, v4

    .line 118
    move v12, v11

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    move v12, v7

    .line 121
    move v13, v12

    .line 122
    :goto_1
    iput v6, v2, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;->f:I

    .line 123
    .line 124
    iput v7, v2, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;->g:I

    .line 125
    .line 126
    if-ne v6, v3, :cond_5

    .line 127
    .line 128
    if-eq v7, v13, :cond_6

    .line 129
    .line 130
    :cond_5
    const/4 v4, 0x1

    .line 131
    iput-boolean v4, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->p:Z

    .line 132
    .line 133
    iget-object v2, v2, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 134
    .line 135
    check-cast v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 136
    .line 137
    const/4 v15, 0x0

    .line 138
    iget-object v5, v2, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 139
    .line 140
    const/4 v14, 0x0

    .line 141
    move v11, v3

    .line 142
    invoke-virtual/range {v5 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q:Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->p:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q:Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;->c:Lcom/mycompany/app/zoom/ZoomScroller;

    .line 9
    .line 10
    check-cast v0, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iget-object v0, v0, Lcom/mycompany/app/zoom/ZoomScroller$ZoomOverScroller;->a:Landroid/widget/OverScroller;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q:Lcom/mycompany/app/zoom/ZoomImageAttacher$FlingRunnable;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_2
    if-nez v1, :cond_3

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 22
    .line 23
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 24
    .line 25
    sub-float/2addr v2, v3

    .line 26
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 27
    .line 28
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    sub-float/2addr v3, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_6

    .line 37
    .line 38
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-float v1, v1

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-float v4, v4

    .line 55
    div-float v5, v1, v2

    .line 56
    .line 57
    div-float v6, v4, v3

    .line 58
    .line 59
    cmpl-float v5, v5, v6

    .line 60
    .line 61
    if-lez v5, :cond_5

    .line 62
    .line 63
    mul-float/2addr v3, v1

    .line 64
    mul-float/2addr v2, v4

    .line 65
    div-float/2addr v3, v2

    .line 66
    :goto_0
    move v8, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    mul-float/2addr v2, v4

    .line 69
    mul-float/2addr v3, v1

    .line 70
    div-float v3, v2, v3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    iput-boolean v2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 88
    .line 89
    new-instance v5, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;

    .line 90
    .line 91
    const/high16 v2, 0x40000000    # 2.0f

    .line 92
    .line 93
    div-float v9, v1, v2

    .line 94
    .line 95
    div-float v10, v4, v2

    .line 96
    .line 97
    move-object v6, p0

    .line 98
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;FFFF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_2
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float v1, v3, v1

    .line 20
    .line 21
    if-gtz v1, :cond_3

    .line 22
    .line 23
    const v1, 0x3f666666    # 0.9f

    .line 24
    .line 25
    .line 26
    cmpg-float v1, v3, v1

    .line 27
    .line 28
    if-gez v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    div-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    int-to-float v5, v2

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    int-to-float v6, v2

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    move-object v2, p0

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;FFFF)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t(Landroid/graphics/Matrix;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

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
    if-gtz v5, :cond_4

    .line 42
    .line 43
    iget-object v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    if-ne v5, v8, :cond_2

    .line 48
    .line 49
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    neg-float v2, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 54
    .line 55
    if-ne v5, v8, :cond_3

    .line 56
    .line 57
    sub-float/2addr v4, v2

    .line 58
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 59
    .line 60
    :goto_1
    sub-float v2, v4, v2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    sub-float/2addr v4, v2

    .line 64
    div-float/2addr v4, v6

    .line 65
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    const/4 v4, 0x0

    .line 69
    iput v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 73
    .line 74
    cmpl-float v5, v2, v7

    .line 75
    .line 76
    if-lez v5, :cond_5

    .line 77
    .line 78
    neg-float v2, v2

    .line 79
    const/4 v4, 0x1

    .line 80
    iput v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    cmpg-float v5, v2, v4

    .line 86
    .line 87
    if-gez v5, :cond_6

    .line 88
    .line 89
    sub-float v2, v4, v2

    .line 90
    .line 91
    const/4 v4, 0x2

    .line 92
    iput v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->B:I

    .line 97
    .line 98
    move v2, v7

    .line 99
    :goto_3
    int-to-float v0, v0

    .line 100
    cmpg-float v4, v3, v0

    .line 101
    .line 102
    if-gtz v4, :cond_9

    .line 103
    .line 104
    iget-object v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    .line 105
    .line 106
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 107
    .line 108
    if-ne v4, v5, :cond_7

    .line 109
    .line 110
    iget v0, v1, Landroid/graphics/RectF;->top:F

    .line 111
    .line 112
    neg-float v7, v0

    .line 113
    goto :goto_5

    .line 114
    :cond_7
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 115
    .line 116
    if-ne v4, v5, :cond_8

    .line 117
    .line 118
    sub-float/2addr v0, v3

    .line 119
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 120
    .line 121
    :goto_4
    sub-float v7, v0, v1

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    sub-float/2addr v0, v3

    .line 125
    div-float/2addr v0, v6

    .line 126
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_9
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 130
    .line 131
    cmpl-float v4, v3, v7

    .line 132
    .line 133
    if-lez v4, :cond_a

    .line 134
    .line 135
    neg-float v7, v3

    .line 136
    goto :goto_5

    .line 137
    :cond_a
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 138
    .line 139
    cmpg-float v3, v1, v0

    .line 140
    .line 141
    if-gez v3, :cond_b

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 145
    .line 146
    invoke-virtual {v0, v2, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public final i()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    iget-object v3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-le p1, v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-float p1, p1

    .line 53
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->f:Landroid/widget/ImageView;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    :goto_1
    move v0, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    :goto_2
    int-to-float v0, v0

    .line 83
    div-float/2addr p1, v0

    .line 84
    iget v0, v3, Landroid/graphics/RectF;->right:F

    .line 85
    .line 86
    iget v1, v3, Landroid/graphics/RectF;->left:F

    .line 87
    .line 88
    sub-float/2addr v0, v1

    .line 89
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 90
    .line 91
    iget v2, v3, Landroid/graphics/RectF;->top:F

    .line 92
    .line 93
    sub-float/2addr v1, v2

    .line 94
    mul-float/2addr v0, p1

    .line 95
    sub-float p1, v1, v0

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    div-float/2addr p1, v0

    .line 102
    iget v0, v3, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    add-float/2addr v0, v1

    .line 105
    add-float/2addr v0, p1

    .line 106
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 107
    .line 108
    :cond_5
    return-object v3
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->f:Landroid/widget/ImageView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public final l()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->v:[F

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

.method public final m()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Landroid/widget/ImageView;

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
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object v0
.end method

.method public final n(Landroid/widget/ImageView;Landroid/widget/ImageView$ScaleType;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Landroid/view/GestureDetector;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher$1;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h:Landroid/view/GestureDetector;

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;

    .line 51
    .line 52
    invoke-direct {v0, p2}, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object p0, v0, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 58
    .line 59
    iput-object p3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s(Landroid/widget/ImageView;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final o()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-le v0, v1, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 31
    .line 32
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    sub-float/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    cmpl-float v3, v1, v2

    .line 41
    .line 42
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    .line 44
    if-ltz v3, :cond_3

    .line 45
    .line 46
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 49
    .line 50
    add-float/2addr v1, v0

    .line 51
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-float/2addr v2, v4

    .line 56
    cmpg-float v0, v0, v2

    .line 57
    .line 58
    if-gez v0, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sub-float v1, v2, v1

    .line 62
    .line 63
    const/high16 v3, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float/2addr v1, v3

    .line 66
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 67
    .line 68
    add-float/2addr v0, v1

    .line 69
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-float/2addr v2, v4

    .line 74
    cmpg-float v0, v0, v2

    .line 75
    .line 76
    if-gez v0, :cond_4

    .line 77
    .line 78
    :goto_0
    const/4 v0, 0x1

    .line 79
    return v0

    .line 80
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 81
    return v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->t()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k:Z

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/high16 v2, -0x40800000    # -1.0f

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    :cond_3
    if-nez v3, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 39
    .line 40
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    sub-float/2addr v4, v5

    .line 43
    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 44
    .line 45
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 46
    .line 47
    sub-float/2addr v5, v3

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_8

    .line 54
    .line 55
    invoke-static {v5, v3}, Ljava/lang/Float;->compare(FF)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-float v0, v0

    .line 72
    div-float v3, v2, v4

    .line 73
    .line 74
    div-float v6, v0, v5

    .line 75
    .line 76
    cmpl-float v3, v3, v6

    .line 77
    .line 78
    if-lez v3, :cond_6

    .line 79
    .line 80
    mul-float/2addr v2, v5

    .line 81
    mul-float/2addr v4, v0

    .line 82
    div-float/2addr v2, v4

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    mul-float/2addr v0, v4

    .line 85
    mul-float/2addr v5, v2

    .line 86
    div-float v2, v0, v5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    const/high16 v2, 0x40000000    # 2.0f

    .line 90
    .line 91
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sub-float v0, v2, v0

    .line 96
    .line 97
    const v3, 0x3c23d70a    # 0.01f

    .line 98
    .line 99
    .line 100
    cmpl-float v0, v0, v3

    .line 101
    .line 102
    if-lez v0, :cond_9

    .line 103
    .line 104
    :goto_1
    move v6, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    iget-boolean p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 118
    .line 119
    if-nez p1, :cond_c

    .line 120
    .line 121
    iget-boolean p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->y:Z

    .line 122
    .line 123
    if-eqz p1, :cond_a

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-nez p1, :cond_b

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_b
    iput-boolean v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 134
    .line 135
    new-instance v3, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    move-object v4, p0

    .line 142
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;FFFF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 146
    .line 147
    .line 148
    :cond_c
    :goto_3
    return v1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->C:I

    .line 25
    .line 26
    if-ne v1, v5, :cond_1

    .line 27
    .line 28
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->D:I

    .line 29
    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->E:I

    .line 33
    .line 34
    if-ne v3, v5, :cond_1

    .line 35
    .line 36
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->F:I

    .line 37
    .line 38
    if-eq v4, v5, :cond_2

    .line 39
    .line 40
    :cond_1
    iget-boolean v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->A:Z

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/high16 v6, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpl-float v5, v5, v6

    .line 51
    .line 52
    if-lez v5, :cond_3

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    const/4 v5, 0x1

    .line 56
    iput-boolean v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->A:Z

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s(Landroid/widget/ImageView;)V

    .line 59
    .line 60
    .line 61
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->C:I

    .line 62
    .line 63
    iput v2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->D:I

    .line 64
    .line 65
    iput v3, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->E:I

    .line 66
    .line 67
    iput v4, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->F:I

    .line 68
    .line 69
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->k()Z

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
    .locals 9

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
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    if-eq v1, v2, :cond_4

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v1, v3, :cond_4

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v1, p1, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    move-object v4, p0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->m()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    :cond_3
    iput-boolean v2, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    iput-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->o:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    cmpg-float v1, v1, v3

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i()Landroid/graphics/Matrix;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    new-instance v3, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const/high16 v6, 0x3f800000    # 1.0f

    .line 77
    .line 78
    move-object v4, p0

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AnimatedZoomRunnable;-><init>(Lcom/mycompany/app/zoom/ZoomImageAttacher;FFFF)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    move p1, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move-object v4, p0

    .line 88
    iget-object v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    invoke-interface {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->m()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    :cond_6
    iput-boolean v2, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l:Z

    .line 99
    .line 100
    :cond_7
    iput-boolean v0, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m:Z

    .line 101
    .line 102
    iput-boolean v0, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->o:Z

    .line 103
    .line 104
    iget-boolean v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->z:Z

    .line 105
    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 115
    .line 116
    .line 117
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->d()V

    .line 118
    .line 119
    .line 120
    :goto_1
    move p1, v0

    .line 121
    :goto_2
    iget-object v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 122
    .line 123
    if-eqz v1, :cond_9

    .line 124
    .line 125
    invoke-interface {v1}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->m()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_c

    .line 130
    .line 131
    :cond_9
    iget-object v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h:Landroid/view/GestureDetector;

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    move p1, v2

    .line 142
    :cond_a
    iget-object v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 143
    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    invoke-virtual {v1, p2}, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a(Landroid/view/MotionEvent;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_b
    move v2, p1

    .line 151
    :cond_c
    :goto_3
    iget-object p1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 152
    .line 153
    if-eqz p1, :cond_e

    .line 154
    .line 155
    iget-boolean v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m:Z

    .line 156
    .line 157
    if-nez v1, :cond_e

    .line 158
    .line 159
    iget-boolean v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->n:Z

    .line 160
    .line 161
    if-nez v1, :cond_e

    .line 162
    .line 163
    iget-boolean v1, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->p:Z

    .line 164
    .line 165
    if-eqz v1, :cond_d

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_d
    invoke-interface {p1, p2, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->D(Landroid/view/MotionEvent;Z)V

    .line 169
    .line 170
    .line 171
    :cond_e
    :goto_4
    return v2
.end method

.method public final p()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-le v0, v1, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 31
    .line 32
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    sub-float/2addr v1, v2

    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->k()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    cmpl-float v3, v1, v2

    .line 41
    .line 42
    const/high16 v4, 0x3f800000    # 1.0f

    .line 43
    .line 44
    if-ltz v3, :cond_3

    .line 45
    .line 46
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    cmpg-float v0, v0, v4

    .line 53
    .line 54
    if-gez v0, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sub-float/2addr v2, v1

    .line 58
    const/high16 v1, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float/2addr v2, v1

    .line 61
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 62
    .line 63
    sub-float/2addr v0, v2

    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    cmpg-float v0, v0, v4

    .line 69
    .line 70
    if-gez v0, :cond_4

    .line 71
    .line 72
    :goto_0
    const/4 v0, 0x1

    .line 73
    return v0

    .line 74
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 75
    return v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->l()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpl-float v1, v0, v1

    .line 8
    .line 9
    if-gtz v1, :cond_1

    .line 10
    .line 11
    const v1, 0x3f666666    # 0.9f

    .line 12
    .line 13
    .line 14
    cmpg-float v0, v0, v1

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    return v0
.end method

.method public final r()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->f:Landroid/widget/ImageView;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->h:Landroid/view/GestureDetector;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->i:Lcom/mycompany/app/zoom/ZoomGestureDetector;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 35
    .line 36
    return-void
.end method

.method public final s(Landroid/widget/ImageView;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v1, :cond_a

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    int-to-float v1, v1

    .line 38
    div-float v3, v2, v1

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    div-float v4, p1, v0

    .line 42
    .line 43
    iget-object v5, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r:Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 46
    .line 47
    .line 48
    iget-object v6, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 51
    .line 52
    const/high16 v8, 0x40000000    # 2.0f

    .line 53
    .line 54
    if-ne v6, v7, :cond_3

    .line 55
    .line 56
    sub-float/2addr v2, v1

    .line 57
    div-float/2addr v2, v8

    .line 58
    sub-float/2addr p1, v0

    .line 59
    div-float/2addr p1, v8

    .line 60
    invoke-virtual {v5, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 65
    .line 66
    if-ne v6, v7, :cond_4

    .line 67
    .line 68
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 73
    .line 74
    .line 75
    mul-float/2addr v1, v3

    .line 76
    sub-float/2addr v2, v1

    .line 77
    div-float/2addr v2, v8

    .line 78
    mul-float/2addr v0, v3

    .line 79
    sub-float/2addr p1, v0

    .line 80
    div-float/2addr p1, v8

    .line 81
    invoke-virtual {v5, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 86
    .line 87
    if-ne v6, v7, :cond_5

    .line 88
    .line 89
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 100
    .line 101
    .line 102
    mul-float/2addr v1, v3

    .line 103
    sub-float/2addr v2, v1

    .line 104
    div-float/2addr v2, v8

    .line 105
    mul-float/2addr v0, v3

    .line 106
    sub-float/2addr p1, v0

    .line 107
    div-float/2addr p1, v8

    .line 108
    invoke-virtual {v5, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/graphics/RectF;

    .line 119
    .line 120
    invoke-direct {v0, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->w:Landroid/widget/ImageView$ScaleType;

    .line 124
    .line 125
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 126
    .line 127
    if-ne p1, v1, :cond_6

    .line 128
    .line 129
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 130
    .line 131
    invoke-virtual {v5, v3, v0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 136
    .line 137
    if-ne p1, v1, :cond_7

    .line 138
    .line 139
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 140
    .line 141
    invoke-virtual {v5, v3, v0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 146
    .line 147
    if-ne p1, v1, :cond_8

    .line 148
    .line 149
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 150
    .line 151
    invoke-virtual {v5, v3, v0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 156
    .line 157
    if-ne p1, v1, :cond_9

    .line 158
    .line 159
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 160
    .line 161
    invoke-virtual {v5, v3, v0, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 162
    .line 163
    .line 164
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->t:Landroid/graphics/Matrix;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    invoke-virtual {p0, p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->g(Z)V

    .line 171
    .line 172
    .line 173
    :cond_a
    :goto_1
    return-void
.end method

.method public final t(Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->y:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j:Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->j(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;->C(Landroid/graphics/RectF;Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->m()Landroid/widget/ImageView;

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
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->s(Landroid/widget/ImageView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

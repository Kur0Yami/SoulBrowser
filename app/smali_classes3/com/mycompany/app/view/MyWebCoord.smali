.class public Lcom/mycompany/app/view/MyWebCoord;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;,
        Lcom/mycompany/app/view/MyWebCoord$MyCaptureListener;
    }
.end annotation


# instance fields
.field public A0:F

.field public B0:F

.field public C:Lcom/mycompany/app/view/MyWebCoord$MyCaptureListener;

.field public C0:Z

.field public D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

.field public final D0:Ljava/lang/Runnable;

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public M:I

.field public N:I

.field public O:Landroid/graphics/Paint;

.field public P:Landroid/graphics/Paint;

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:Landroid/animation/ValueAnimator;

.field public o0:Landroid/graphics/Paint;

.field public p0:Landroid/graphics/RectF;

.field public q0:F

.field public r0:Landroid/graphics/Paint;

.field public s0:Landroid/graphics/RectF;

.field public t0:Ljava/lang/String;

.field public u0:Landroid/graphics/Paint;

.field public v0:Landroid/graphics/Rect;

.field public w0:F

.field public x0:F

.field public y0:F

.field public z0:F


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/mycompany/app/view/MyWebCoord$5;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyWebCoord$5;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->D0:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method

.method private setValAnimMove(F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->A0:F

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->e0:I

    .line 5
    .line 6
    int-to-float v1, v0

    .line 7
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->c0:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    int-to-float v0, v0

    .line 11
    mul-float/2addr v0, p1

    .line 12
    sub-float/2addr v1, v0

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->f0:I

    .line 18
    .line 19
    int-to-float v2, v1

    .line 20
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->d0:I

    .line 21
    .line 22
    sub-int/2addr v1, v3

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr v1, p1

    .line 25
    sub-float/2addr v2, v1

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->i0:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->j0:I

    .line 35
    .line 36
    if-ne p1, v1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/view/MyWebCoord;->E(II)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static bridge synthetic y(Lcom/mycompany/app/view/MyWebCoord;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyWebCoord;->setValAnimMove(F)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->O:Landroid/graphics/Paint;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->L:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->m0:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->s0:Landroid/graphics/RectF;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->t0:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 9
    .line 10
    return v0
.end method

.method public final D(Lcom/mycompany/app/web/WebNestView;JLcom/mycompany/app/view/MyWebCoord$MyCaptureListener;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebNestView;->computeVerticalScrollRange()I

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_0
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v2, p2, v2

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    int-to-long v2, p1

    .line 25
    const-wide/16 v4, 0x20

    .line 26
    .line 27
    mul-long/2addr v2, v4

    .line 28
    div-long/2addr p2, v2

    .line 29
    long-to-int p2, p2

    .line 30
    if-le v1, p2, :cond_1

    .line 31
    .line 32
    move v1, p2

    .line 33
    :cond_1
    mul-int p2, p1, v1

    .line 34
    .line 35
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->o2()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    mul-int/2addr p3, p3

    .line 40
    if-lt p2, p3, :cond_2

    .line 41
    .line 42
    div-int v1, p3, p1

    .line 43
    .line 44
    div-int/lit8 p1, v1, 0xa

    .line 45
    .line 46
    sub-int/2addr v1, p1

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-gt v1, p1, :cond_4

    .line 52
    .line 53
    iput-object p4, p0, Lcom/mycompany/app/view/MyWebCoord;->C:Lcom/mycompany/app/view/MyWebCoord$MyCaptureListener;

    .line 54
    .line 55
    iput v0, p0, Lcom/mycompany/app/view/MyWebCoord;->E:I

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/view/MyWebCoord$1;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyWebCoord$1;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    :cond_3
    move v1, v0

    .line 73
    :catch_1
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyWebCoord;->E:I

    .line 74
    .line 75
    if-ne p1, v1, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->E:I

    .line 79
    .line 80
    if-lez v1, :cond_6

    .line 81
    .line 82
    iput-object p4, p0, Lcom/mycompany/app/view/MyWebCoord;->C:Lcom/mycompany/app/view/MyWebCoord$MyCaptureListener;

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->C:Lcom/mycompany/app/view/MyWebCoord$MyCaptureListener;

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 96
    .line 97
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 100
    .line 101
    :goto_0
    new-instance p1, Lcom/mycompany/app/view/MyWebCoord$2;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyWebCoord$2;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final E(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->V:I

    .line 7
    .line 8
    add-int v2, p1, v1

    .line 9
    .line 10
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 11
    .line 12
    if-le v2, v3, :cond_1

    .line 13
    .line 14
    sub-int p1, v3, v1

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->W:I

    .line 17
    .line 18
    add-int v2, p2, v1

    .line 19
    .line 20
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->b0:I

    .line 21
    .line 22
    if-le v2, v3, :cond_2

    .line 23
    .line 24
    sub-int p2, v3, v1

    .line 25
    .line 26
    :cond_2
    const/4 v1, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v1

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v1

    .line 33
    :cond_4
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->i0:I

    .line 34
    .line 35
    iput p2, p0, Lcom/mycompany/app/view/MyWebCoord;->j0:I

    .line 36
    .line 37
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->M:I

    .line 38
    .line 39
    add-int v2, p1, v1

    .line 40
    .line 41
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->g0:I

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    iput v2, p0, Lcom/mycompany/app/view/MyWebCoord;->k0:I

    .line 45
    .line 46
    add-int/2addr v1, p2

    .line 47
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->h0:I

    .line 48
    .line 49
    add-int/2addr v1, v2

    .line 50
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->l0:I

    .line 51
    .line 52
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->N:I

    .line 53
    .line 54
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    sub-int/2addr v4, v1

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    .line 59
    add-int/2addr p1, v4

    .line 60
    add-int/2addr p1, v3

    .line 61
    add-int/2addr v4, p2

    .line 62
    add-int/2addr v4, v2

    .line 63
    add-int p2, p1, v1

    .line 64
    .line 65
    add-int/2addr v1, v4

    .line 66
    invoke-virtual {v0, p1, v4, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final F(FZ)V
    .locals 13

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    sub-float p1, v0, p1

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    cmpg-float v1, p1, v0

    .line 12
    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 19
    .line 20
    int-to-float v2, v1

    .line 21
    cmpg-float v2, p1, v2

    .line 22
    .line 23
    if-gez v2, :cond_2

    .line 24
    .line 25
    int-to-float v0, v1

    .line 26
    div-float/2addr p1, v0

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    sub-float v0, p1, v0

    .line 30
    .line 31
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 32
    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    iget p1, p0, Lcom/mycompany/app/view/MyWebCoord;->q0:F

    .line 36
    .line 37
    mul-float/2addr p1, v0

    .line 38
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    neg-float p1, p1

    .line 43
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 44
    .line 45
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyWebCoord;->z0:F

    .line 46
    .line 47
    iget p2, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 48
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 58
    .line 59
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->z0:F

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    new-instance p1, Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 77
    .line 78
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 84
    .line 85
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    const v2, -0xdededf

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const/high16 v2, -0x1000000

    .line 94
    .line 95
    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    sget p1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 99
    .line 100
    int-to-float p1, p1

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 112
    .line 113
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 124
    .line 125
    const v3, -0x4f4f50

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 142
    .line 143
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 144
    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    const v2, -0x50506

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const/4 v2, -0x1

    .line 152
    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 156
    .line 157
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 158
    .line 159
    int-to-float v2, v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Landroid/graphics/RectF;

    .line 164
    .line 165
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 169
    .line 170
    new-instance v1, Landroid/graphics/RectF;

    .line 171
    .line 172
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->s0:Landroid/graphics/RectF;

    .line 176
    .line 177
    new-instance v1, Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iput-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->t0:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iget-object v4, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    int-to-float v1, v1

    .line 215
    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    .line 217
    div-float/2addr v1, v2

    .line 218
    iget-object v3, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    int-to-float v3, v3

    .line 225
    div-float/2addr v3, v2

    .line 226
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 227
    .line 228
    int-to-float v4, v4

    .line 229
    add-float/2addr v4, v1

    .line 230
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 231
    .line 232
    int-to-float v6, v5

    .line 233
    add-float/2addr v6, v3

    .line 234
    int-to-float v5, v5

    .line 235
    sub-float v5, v4, v5

    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    int-to-float v7, v7

    .line 242
    div-float/2addr v7, v2

    .line 243
    if-eqz p2, :cond_8

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    int-to-float v8, v8

    .line 250
    sub-float v5, v8, v5

    .line 251
    .line 252
    iget-object v8, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 253
    .line 254
    sub-float v9, v5, v4

    .line 255
    .line 256
    sub-float v10, v7, v6

    .line 257
    .line 258
    add-float v11, v5, v4

    .line 259
    .line 260
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 261
    .line 262
    int-to-float v12, v12

    .line 263
    add-float/2addr v11, v12

    .line 264
    add-float/2addr v6, v7

    .line 265
    invoke-virtual {v8, v9, v10, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    iget-object v8, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 270
    .line 271
    sub-float v9, v5, v4

    .line 272
    .line 273
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 274
    .line 275
    int-to-float v10, v10

    .line 276
    sub-float/2addr v9, v10

    .line 277
    sub-float v10, v7, v6

    .line 278
    .line 279
    add-float v11, v5, v4

    .line 280
    .line 281
    add-float/2addr v6, v7

    .line 282
    invoke-virtual {v8, v9, v10, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    .line 284
    .line 285
    :goto_3
    mul-float/2addr v4, v2

    .line 286
    iput v4, p0, Lcom/mycompany/app/view/MyWebCoord;->q0:F

    .line 287
    .line 288
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->s0:Landroid/graphics/RectF;

    .line 289
    .line 290
    iget-object v6, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 291
    .line 292
    iget v8, v6, Landroid/graphics/RectF;->left:F

    .line 293
    .line 294
    add-float/2addr v8, p1

    .line 295
    iput v8, v2, Landroid/graphics/RectF;->left:F

    .line 296
    .line 297
    iget v8, v6, Landroid/graphics/RectF;->top:F

    .line 298
    .line 299
    add-float/2addr v8, p1

    .line 300
    iput v8, v2, Landroid/graphics/RectF;->top:F

    .line 301
    .line 302
    iget v8, v6, Landroid/graphics/RectF;->right:F

    .line 303
    .line 304
    add-float/2addr v8, p1

    .line 305
    iput v8, v2, Landroid/graphics/RectF;->right:F

    .line 306
    .line 307
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 308
    .line 309
    add-float/2addr v6, p1

    .line 310
    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 311
    .line 312
    sub-float/2addr v5, v1

    .line 313
    iget-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 314
    .line 315
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 316
    .line 317
    int-to-float v1, v1

    .line 318
    sub-float/2addr v5, v1

    .line 319
    iput v5, p0, Lcom/mycompany/app/view/MyWebCoord;->w0:F

    .line 320
    .line 321
    sub-float/2addr v7, v3

    .line 322
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 323
    .line 324
    int-to-float p1, p1

    .line 325
    sub-float/2addr v7, p1

    .line 326
    iput v7, p0, Lcom/mycompany/app/view/MyWebCoord;->x0:F

    .line 327
    .line 328
    mul-float/2addr v4, v0

    .line 329
    iput v4, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 330
    .line 331
    if-eqz p2, :cond_9

    .line 332
    .line 333
    neg-float p1, v4

    .line 334
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 335
    .line 336
    :cond_9
    iget p1, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 337
    .line 338
    iput p1, p0, Lcom/mycompany/app/view/MyWebCoord;->z0:F

    .line 339
    .line 340
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    iget p2, p0, Lcom/mycompany/app/view/MyWebCoord;->q0:F

    .line 345
    .line 346
    cmpg-float p1, p1, p2

    .line 347
    .line 348
    if-gez p1, :cond_a

    .line 349
    .line 350
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 351
    .line 352
    .line 353
    :cond_a
    :goto_4
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->F:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->H:Z

    .line 33
    .line 34
    new-instance v0, Lcom/mycompany/app/view/MyWebCoord$7;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyWebCoord$7;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->O:Landroid/graphics/Paint;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->k0:I

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->l0:I

    .line 54
    .line 55
    int-to-float v2, v2

    .line 56
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->N:I

    .line 57
    .line 58
    int-to-float v3, v3

    .line 59
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->P:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    const/high16 v2, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v1, v2

    .line 72
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->k0:I

    .line 73
    .line 74
    int-to-float v2, v2

    .line 75
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->l0:I

    .line 76
    .line 77
    int-to-float v3, v3

    .line 78
    iget v4, p0, Lcom/mycompany/app/view/MyWebCoord;->N:I

    .line 79
    .line 80
    int-to-float v4, v4

    .line 81
    sub-float/2addr v4, v1

    .line 82
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->s0:Landroid/graphics/RectF;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->v0:Landroid/graphics/Rect;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 115
    .line 116
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->q0:F

    .line 121
    .line 122
    cmpg-float v0, v0, v1

    .line 123
    .line 124
    if-gez v0, :cond_5

    .line 125
    .line 126
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->y0:F

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->p0:Landroid/graphics/RectF;

    .line 133
    .line 134
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 135
    .line 136
    int-to-float v1, v1

    .line 137
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->o0:Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->s0:Landroid/graphics/RectF;

    .line 143
    .line 144
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 145
    .line 146
    int-to-float v1, v1

    .line 147
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->r0:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->t0:Ljava/lang/String;

    .line 153
    .line 154
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->w0:F

    .line 155
    .line 156
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->x0:F

    .line 157
    .line 158
    iget-object v3, p0, Lcom/mycompany/app/view/MyWebCoord;->u0:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v3, :cond_4

    .line 13
    .line 14
    if-eq v0, v4, :cond_1

    .line 15
    .line 16
    if-eq v0, v2, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyWebCoord;->z()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget v6, p0, Lcom/mycompany/app/view/MyWebCoord;->R:I

    .line 41
    .line 42
    int-to-float v6, v6

    .line 43
    iget v7, p0, Lcom/mycompany/app/view/MyWebCoord;->S:I

    .line 44
    .line 45
    int-to-float v7, v7

    .line 46
    invoke-static {v6, v2, v7, v5}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 51
    .line 52
    int-to-float v7, v7

    .line 53
    div-float/2addr v7, v1

    .line 54
    cmpg-float v1, v6, v7

    .line 55
    .line 56
    if-gez v1, :cond_2

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->R:I

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->S:I

    .line 71
    .line 72
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->R:I

    .line 73
    .line 74
    iget v5, p0, Lcom/mycompany/app/view/MyWebCoord;->T:I

    .line 75
    .line 76
    add-int/2addr v2, v5

    .line 77
    iget v5, p0, Lcom/mycompany/app/view/MyWebCoord;->U:I

    .line 78
    .line 79
    add-int/2addr v1, v5

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/mycompany/app/view/MyWebCoord;->E(II)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 84
    .line 85
    if-eqz v1, :cond_c

    .line 86
    .line 87
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 88
    .line 89
    if-eq v1, v4, :cond_c

    .line 90
    .line 91
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 92
    .line 93
    if-eqz v1, :cond_c

    .line 94
    .line 95
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 96
    .line 97
    if-eqz v1, :cond_c

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v4, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 108
    .line 109
    invoke-interface {v4, v1, v2, v0}, Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;->g(FFI)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_c

    .line 114
    .line 115
    iput v3, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_4
    iget-object v5, p0, Lcom/mycompany/app/view/MyWebCoord;->Q:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    if-eqz v5, :cond_9

    .line 123
    .line 124
    iget-object v5, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_5
    iget v5, p0, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 131
    .line 132
    int-to-float v5, v5

    .line 133
    const/high16 v7, 0x40400000    # 3.0f

    .line 134
    .line 135
    div-float/2addr v5, v7

    .line 136
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    iget v7, p0, Lcom/mycompany/app/view/MyWebCoord;->i0:I

    .line 141
    .line 142
    iput v7, p0, Lcom/mycompany/app/view/MyWebCoord;->c0:I

    .line 143
    .line 144
    iget v8, p0, Lcom/mycompany/app/view/MyWebCoord;->j0:I

    .line 145
    .line 146
    iput v8, p0, Lcom/mycompany/app/view/MyWebCoord;->d0:I

    .line 147
    .line 148
    iget v8, p0, Lcom/mycompany/app/view/MyWebCoord;->M:I

    .line 149
    .line 150
    add-int/2addr v7, v8

    .line 151
    if-ge v7, v5, :cond_6

    .line 152
    .line 153
    iput v3, p0, Lcom/mycompany/app/view/MyWebCoord;->m0:I

    .line 154
    .line 155
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 156
    .line 157
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->e0:I

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    iget v8, p0, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 161
    .line 162
    sub-int v5, v8, v5

    .line 163
    .line 164
    if-le v7, v5, :cond_7

    .line 165
    .line 166
    iput v2, p0, Lcom/mycompany/app/view/MyWebCoord;->m0:I

    .line 167
    .line 168
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->V:I

    .line 169
    .line 170
    sub-int/2addr v8, v1

    .line 171
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 172
    .line 173
    sub-int/2addr v8, v1

    .line 174
    iput v8, p0, Lcom/mycompany/app/view/MyWebCoord;->e0:I

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_7
    iput v4, p0, Lcom/mycompany/app/view/MyWebCoord;->m0:I

    .line 178
    .line 179
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->V:I

    .line 180
    .line 181
    sub-int/2addr v8, v2

    .line 182
    int-to-float v2, v8

    .line 183
    div-float/2addr v2, v1

    .line 184
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->e0:I

    .line 189
    .line 190
    :goto_0
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->b0:I

    .line 191
    .line 192
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->W:I

    .line 193
    .line 194
    sub-int/2addr v1, v2

    .line 195
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 196
    .line 197
    sub-int/2addr v1, v2

    .line 198
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->f0:I

    .line 199
    .line 200
    iget v2, p0, Lcom/mycompany/app/view/MyWebCoord;->c0:I

    .line 201
    .line 202
    int-to-float v2, v2

    .line 203
    iget v5, p0, Lcom/mycompany/app/view/MyWebCoord;->e0:I

    .line 204
    .line 205
    int-to-float v5, v5

    .line 206
    iget v7, p0, Lcom/mycompany/app/view/MyWebCoord;->d0:I

    .line 207
    .line 208
    int-to-float v7, v7

    .line 209
    int-to-float v1, v1

    .line 210
    invoke-static {v2, v5, v7, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const/4 v2, 0x0

    .line 215
    cmpg-float v5, v1, v2

    .line 216
    .line 217
    if-gtz v5, :cond_8

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyWebCoord;->A()V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_8
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->A0:F

    .line 224
    .line 225
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->B0:F

    .line 226
    .line 227
    iput-boolean v6, p0, Lcom/mycompany/app/view/MyWebCoord;->C0:Z

    .line 228
    .line 229
    new-array v5, v4, [F

    .line 230
    .line 231
    aput v1, v5, v6

    .line 232
    .line 233
    aput v2, v5, v3

    .line 234
    .line 235
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iput-object v2, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 240
    .line 241
    const/high16 v3, 0x43c80000    # 400.0f

    .line 242
    .line 243
    mul-float/2addr v1, v3

    .line 244
    iget v3, p0, Lcom/mycompany/app/view/MyWebCoord;->a0:I

    .line 245
    .line 246
    iget v5, p0, Lcom/mycompany/app/view/MyWebCoord;->b0:I

    .line 247
    .line 248
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    int-to-float v3, v3

    .line 253
    div-float/2addr v1, v3

    .line 254
    float-to-long v7, v1

    .line 255
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 259
    .line 260
    new-instance v2, Lcom/mycompany/app/view/MyWebCoord$3;

    .line 261
    .line 262
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyWebCoord$3;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 269
    .line 270
    new-instance v2, Lcom/mycompany/app/view/MyWebCoord$4;

    .line 271
    .line 272
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyWebCoord$4;-><init>(Lcom/mycompany/app/view/MyWebCoord;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->n0:Landroid/animation/ValueAnimator;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 281
    .line 282
    .line 283
    :cond_9
    :goto_1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 284
    .line 285
    if-eqz v1, :cond_a

    .line 286
    .line 287
    iget v1, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 288
    .line 289
    if-eq v1, v4, :cond_a

    .line 290
    .line 291
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 292
    .line 293
    if-eqz v1, :cond_a

    .line 294
    .line 295
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 296
    .line 297
    if-eqz v1, :cond_a

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    iget-object v3, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 308
    .line 309
    invoke-interface {v3, v1, v2, v0}, Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;->g(FFI)Z

    .line 310
    .line 311
    .line 312
    :cond_a
    iput-boolean v6, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 313
    .line 314
    iput-boolean v6, p0, Lcom/mycompany/app/view/MyWebCoord;->J:Z

    .line 315
    .line 316
    iput v6, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iput v0, p0, Lcom/mycompany/app/view/MyWebCoord;->R:I

    .line 332
    .line 333
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    iput v0, p0, Lcom/mycompany/app/view/MyWebCoord;->S:I

    .line 338
    .line 339
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    return p1
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->E:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 7
    .line 8
    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    .line 10
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->G:Z

    .line 20
    .line 21
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasure(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyWebCoord;->J:Z

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    cmpl-float p1, p1, v0

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    move p1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p1, v1

    .line 30
    :goto_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->J:Z

    .line 31
    .line 32
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->J:Z

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 41
    .line 42
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    const/4 p1, 0x2

    .line 46
    if-ne v0, p1, :cond_3

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->J:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 57
    .line 58
    iput v1, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 59
    .line 60
    :cond_3
    return v2
.end method

.method public setMoveListener(Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->L:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchListener(Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 2
    .line 3
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebCoord;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->z:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebCoord;->D:Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v0, v2, v2, v1}, Lcom/mycompany/app/view/MyWebCoord$MyTouchListener;->g(FFI)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/mycompany/app/view/MyWebCoord;->K:I

    .line 26
    .line 27
    return-void
.end method

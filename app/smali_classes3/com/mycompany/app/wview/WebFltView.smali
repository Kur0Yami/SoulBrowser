.class public Lcom/mycompany/app/wview/WebFltView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebFltView$FltViewListener;,
        Lcom/mycompany/app/wview/WebFltView$FltTouchListener;,
        Lcom/mycompany/app/wview/WebFltView$EventHandler;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:Lcom/mycompany/app/view/MyProgressDrawable;

.field public D:I

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroid/animation/ValueAnimator;

.field public G:Landroid/animation/ValueAnimator;

.field public H:Z

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public final M:I

.field public final N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:I

.field public V:I

.field public W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

.field public a0:Z

.field public b0:Z

.field public c:Z

.field public c0:Z

.field public d0:I

.field public e0:I

.field public f:Landroid/content/Context;

.field public f0:Landroid/graphics/Paint;

.field public g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

.field public g0:F

.field public h:Lcom/mycompany/app/wview/WebFltView$FltTouchListener;

.field public h0:F

.field public final i:I

.field public i0:Z

.field public final j:I

.field public j0:Landroid/graphics/Rect;

.field public k:I

.field public k0:Ljava/util/ArrayList;

.field public l:I

.field public l0:F

.field public m:Landroid/graphics/Paint;

.field public m0:Z

.field public final n:I

.field public final n0:Ljava/lang/Runnable;

.field public o:I

.field public o0:F

.field public p:I

.field public p0:Z

.field public q:Landroid/graphics/Paint;

.field public final q0:Ljava/lang/Runnable;

.field public r:Landroid/animation/ValueAnimator;

.field public r0:F

.field public s:Landroid/animation/ValueAnimator;

.field public s0:Z

.field public t:F

.field public final t0:Ljava/lang/Runnable;

.field public u:I

.field public u0:F

.field public v:Landroid/graphics/Paint;

.field public v0:Z

.field public final w:F

.field public final w0:Ljava/lang/Runnable;

.field public final x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$5;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->n0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$9;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$9;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->q0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$13;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$13;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->t0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$17;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$17;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->w0:Ljava/lang/Runnable;

    .line 31
    .line 32
    iput p2, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 38
    .line 39
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 40
    .line 41
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 42
    .line 43
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    div-int/2addr p1, v1

    .line 47
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 48
    .line 49
    iput v2, p0, Lcom/mycompany/app/wview/WebFltView;->j:I

    .line 50
    .line 51
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 52
    .line 53
    iput v2, p0, Lcom/mycompany/app/wview/WebFltView;->n:I

    .line 54
    .line 55
    int-to-float p1, p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 57
    .line 58
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 59
    .line 60
    iput p2, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 61
    .line 62
    if-nez p2, :cond_0

    .line 63
    .line 64
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_down_white_24:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-ne p2, v0, :cond_1

    .line 68
    .line 69
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_rss_feed_white_24:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-ne p2, v1, :cond_2

    .line 73
    .line 74
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_white_24:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p1, 0x3

    .line 78
    if-ne p2, p1, :cond_3

    .line 79
    .line 80
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_white_24:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 p1, 0x4

    .line 84
    if-ne p2, p1, :cond_4

    .line 85
    .line 86
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_zoom_in_white_24:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 p1, 0x5

    .line 90
    if-ne p2, p1, :cond_5

    .line 91
    .line 92
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_white_24:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const/4 p1, 0x6

    .line 96
    if-ne p2, p1, :cond_6

    .line 97
    .line 98
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->j:I

    .line 99
    .line 100
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 101
    .line 102
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const/4 p1, 0x7

    .line 108
    if-ne p2, p1, :cond_7

    .line 109
    .line 110
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->k:I

    .line 111
    .line 112
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 113
    .line 114
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    sget p1, Lcom/mycompany/app/pref/PrefFloat;->l:I

    .line 120
    .line 121
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 122
    .line 123
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->r(I)Z

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/mycompany/app/wview/WebFltView$1;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/mycompany/app/wview/WebFltView$2;

    .line 139
    .line 140
    invoke-direct {p1, p0}, Lcom/mycompany/app/wview/WebFltView$2;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    .line 145
    .line 146
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    const/16 p2, 0x1d

    .line 149
    .line 150
    if-lt p1, p2, :cond_8

    .line 151
    .line 152
    new-instance p1, Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->j0:Landroid/graphics/Rect;

    .line 158
    .line 159
    new-instance p1, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->k0:Ljava/util/ArrayList;

    .line 165
    .line 166
    iget-object p2, p0, Lcom/mycompany/app/wview/WebFltView;->j0:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_8
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/wview/WebFltView;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/wview/WebFltView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/wview/WebFltView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/wview/WebFltView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/wview/WebFltView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->setValPreScaleUp(F)V

    return-void
.end method

.method private getColorPos()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->Q:F

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 24
    .line 25
    return v0

    .line 26
    :cond_3
    const/4 v1, 0x4

    .line 27
    if-ne v0, v1, :cond_4

    .line 28
    .line 29
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 30
    .line 31
    return v0

    .line 32
    :cond_4
    const/4 v1, 0x5

    .line 33
    if-ne v0, v1, :cond_5

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    return v0

    .line 38
    :cond_5
    const/4 v1, 0x6

    .line 39
    if-ne v0, v1, :cond_6

    .line 40
    .line 41
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->r:F

    .line 42
    .line 43
    return v0

    .line 44
    :cond_6
    const/4 v1, 0x7

    .line 45
    if-ne v0, v1, :cond_7

    .line 46
    .line 47
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->v:F

    .line 48
    .line 49
    return v0

    .line 50
    :cond_7
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->z:F

    .line 51
    .line 52
    return v0
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 24
    .line 25
    const v2, 0x3f4ccccd    # 0.8f

    .line 26
    .line 27
    .line 28
    cmpg-float v3, v1, v2

    .line 29
    .line 30
    if-gtz v3, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->o0:F

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->p0:Z

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [F

    .line 39
    .line 40
    aput v1, v3, v0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput v2, v3, v0

    .line 44
    .line 45
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    const-wide/16 v1, 0xc8

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/wview/WebFltView$7;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebFltView$7;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/wview/WebFltView$8;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebFltView$8;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 20
    .line 21
    move v2, v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    move v2, v1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :goto_0
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void
.end method

.method public final i(Z)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/wview/WebFltView;->getColorPos()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmpl-double v0, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget v4, p0, Lcom/mycompany/app/wview/WebFltView;->B:I

    .line 33
    .line 34
    if-eq v4, v3, :cond_1

    .line 35
    .line 36
    iput v3, p0, Lcom/mycompany/app/wview/WebFltView;->B:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyProgressDrawable;->c(I)V

    .line 41
    .line 42
    .line 43
    move v2, v1

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->D:I

    .line 53
    .line 54
    if-eq v3, v0, :cond_2

    .line 55
    .line 56
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->D:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v1, v2

    .line 65
    :goto_1
    if-eqz v1, :cond_3

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_3
    return v1
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/wview/WebFltView;->k(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v1}, Lcom/mycompany/app/wview/WebFltView;->i(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final k(IZ)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->z:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    :goto_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->r(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return p1
.end method

.method public final l(Z)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/16 p1, 0xb0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    const/16 p1, 0xff

    .line 13
    .line 14
    return p1
.end method

.method public final layout(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v2, 0x0

    .line 40
    cmpg-float v3, p1, v2

    .line 41
    .line 42
    if-gtz v3, :cond_4

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->setOnlyVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 53
    .line 54
    .line 55
    :cond_5
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->u0:F

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebFltView;->v0:Z

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [F

    .line 61
    .line 62
    aput p1, v0, v1

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    aput v2, v0, v1

    .line 66
    .line 67
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    const/high16 v1, 0x43c80000    # 400.0f

    .line 74
    .line 75
    mul-float/2addr p1, v1

    .line 76
    float-to-long v1, p1

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$15;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$15;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$16;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$16;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x6

    .line 8
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 9
    .line 10
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/mycompany/app/pref/PrefFloat;->m:Z

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x7

    .line 16
    if-ne v1, v0, :cond_2

    .line 17
    .line 18
    sget-boolean v0, Lcom/mycompany/app/pref/PrefFloat;->n:Z

    .line 19
    .line 20
    return v0

    .line 21
    :cond_2
    const/16 v0, 0x8

    .line 22
    .line 23
    if-ne v1, v0, :cond_3

    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/pref/PrefFloat;->o:Z

    .line 26
    .line 27
    return v0

    .line 28
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->a0:Z

    .line 29
    .line 30
    return v0
.end method

.method public final o()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 16
    .line 17
    :cond_0
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->h:Lcom/mycompany/app/wview/WebFltView$FltTouchListener;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->j0:Landroid/graphics/Rect;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->k0:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->f()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->l:I

    .line 34
    .line 35
    int-to-float v3, v3

    .line 36
    const/high16 v5, 0x3f800000    # 1.0f

    .line 37
    .line 38
    iget v6, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 39
    .line 40
    sub-float/2addr v5, v6

    .line 41
    mul-float/2addr v5, v3

    .line 42
    mul-float/2addr v5, v4

    .line 43
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->l:I

    .line 48
    .line 49
    if-le v3, v5, :cond_3

    .line 50
    .line 51
    move v3, v5

    .line 52
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->l:I

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->j:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    iget-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v6, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 69
    .line 70
    iget v7, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 71
    .line 72
    invoke-virtual {p1, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->p:I

    .line 82
    .line 83
    int-to-float v2, v2

    .line 84
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 85
    .line 86
    const v5, 0x3f4ccccd    # 0.8f

    .line 87
    .line 88
    .line 89
    sub-float/2addr v3, v5

    .line 90
    mul-float/2addr v3, v2

    .line 91
    mul-float/2addr v3, v4

    .line 92
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    .line 101
    .line 102
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 103
    .line 104
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 105
    .line 106
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 107
    .line 108
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->n:I

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 117
    .line 118
    iget v4, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 119
    .line 120
    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    move v1, v2

    .line 125
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 130
    .line 131
    int-to-float v2, v2

    .line 132
    const/high16 v3, 0x40000000    # 2.0f

    .line 133
    .line 134
    div-float/2addr v2, v3

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->n:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->j:I

    .line 141
    .line 142
    :goto_4
    int-to-float v3, v3

    .line 143
    sub-float/2addr v3, v2

    .line 144
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 145
    .line 146
    iget v4, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 147
    .line 148
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    if-eqz v1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    .line 155
    .line 156
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->A:Z

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    .line 174
    .line 175
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 176
    .line 177
    if-eqz v0, :cond_d

    .line 178
    .line 179
    iget-boolean v1, p0, Lcom/mycompany/app/wview/WebFltView;->i0:Z

    .line 180
    .line 181
    if-eqz v1, :cond_c

    .line 182
    .line 183
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->h0:F

    .line 184
    .line 185
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 186
    .line 187
    add-float/2addr v2, v1

    .line 188
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 189
    .line 190
    sub-float/2addr v3, v1

    .line 191
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->g0:F

    .line 192
    .line 193
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_c
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->h0:F

    .line 198
    .line 199
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->w:F

    .line 200
    .line 201
    sub-float/2addr v2, v1

    .line 202
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->x:F

    .line 203
    .line 204
    sub-float/2addr v3, v1

    .line 205
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->g0:F

    .line 206
    .line 207
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    :goto_6
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move v0, p5

    .line 5
    move p5, p4

    .line 6
    move p4, p3

    .line 7
    move p3, p2

    .line 8
    move p2, p1

    .line 9
    move-object p1, p0

    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->u()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1d

    .line 18
    .line 19
    if-ge p2, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/wview/WebFltView;->j0:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/wview/WebFltView;->k0:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sub-int p3, p5, p3

    .line 32
    .line 33
    sub-int p5, v0, p4

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p2, p4, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/wview/WebFltView;->k0:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v0, :cond_e

    .line 19
    .line 20
    if-eq v0, v4, :cond_9

    .line 21
    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    if-eq v0, v1, :cond_a

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->g()V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 51
    .line 52
    const/high16 v5, 0x40000000    # 2.0f

    .line 53
    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 71
    .line 72
    int-to-float v3, v3

    .line 73
    div-float/2addr v3, v5

    .line 74
    cmpg-float v2, v2, v3

    .line 75
    .line 76
    if-gez v2, :cond_3

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 91
    .line 92
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 93
    .line 94
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->K:I

    .line 95
    .line 96
    add-int/2addr v1, v2

    .line 97
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->L:I

    .line 98
    .line 99
    add-int/2addr v0, v2

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebFltView;->t(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->s()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_4
    iget-boolean v2, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 109
    .line 110
    if-eqz v2, :cond_1c

    .line 111
    .line 112
    float-to-int v0, v0

    .line 113
    float-to-int v1, v1

    .line 114
    sget v2, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 115
    .line 116
    invoke-static {v0, v1, v2, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_1c

    .line 121
    .line 122
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->g()V

    .line 125
    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_5
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 135
    .line 136
    int-to-float v2, v2

    .line 137
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 138
    .line 139
    int-to-float v3, v3

    .line 140
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iget-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 145
    .line 146
    if-nez v3, :cond_7

    .line 147
    .line 148
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 149
    .line 150
    int-to-float v3, v3

    .line 151
    cmpg-float v3, v2, v3

    .line 152
    .line 153
    if-gez v3, :cond_6

    .line 154
    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_6
    iput-boolean v4, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 158
    .line 159
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 160
    .line 161
    iput v3, p0, Lcom/mycompany/app/wview/WebFltView;->U:I

    .line 162
    .line 163
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 164
    .line 165
    iput v3, p0, Lcom/mycompany/app/wview/WebFltView;->V:I

    .line 166
    .line 167
    new-instance v3, Lcom/mycompany/app/wview/WebFltView$19;

    .line 168
    .line 169
    invoke-direct {v3, p0}, Lcom/mycompany/app/wview/WebFltView$19;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    :cond_7
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 176
    .line 177
    int-to-float v3, v3

    .line 178
    div-float/2addr v3, v5

    .line 179
    cmpg-float v2, v2, v3

    .line 180
    .line 181
    if-gez v2, :cond_8

    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 196
    .line 197
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 198
    .line 199
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->K:I

    .line 200
    .line 201
    add-int/2addr v1, v2

    .line 202
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->L:I

    .line 203
    .line 204
    add-int/2addr v0, v2

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebFltView;->t(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->s()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 214
    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 218
    .line 219
    if-nez v0, :cond_a

    .line 220
    .line 221
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 222
    .line 223
    if-eqz v0, :cond_a

    .line 224
    .line 225
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$20;

    .line 226
    .line 227
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$20;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 231
    .line 232
    .line 233
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->h:Lcom/mycompany/app/wview/WebFltView$FltTouchListener;

    .line 234
    .line 235
    if-eqz v0, :cond_b

    .line 236
    .line 237
    invoke-interface {v0, v3}, Lcom/mycompany/app/wview/WebFltView$FltTouchListener;->a(Z)V

    .line 238
    .line 239
    .line 240
    :cond_b
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 241
    .line 242
    if-nez v0, :cond_c

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->g()V

    .line 245
    .line 246
    .line 247
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_c
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 255
    .line 256
    if-eqz v0, :cond_d

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->v()V

    .line 259
    .line 260
    .line 261
    :cond_d
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->g()V

    .line 264
    .line 265
    .line 266
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    iput-boolean v4, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 285
    .line 286
    iput-boolean v4, p0, Lcom/mycompany/app/wview/WebFltView;->S:Z

    .line 287
    .line 288
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->T:Z

    .line 289
    .line 290
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 295
    .line 296
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 301
    .line 302
    iget-boolean v5, p0, Lcom/mycompany/app/wview/WebFltView;->c0:Z

    .line 303
    .line 304
    if-eqz v5, :cond_f

    .line 305
    .line 306
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->d0:I

    .line 307
    .line 308
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 309
    .line 310
    sub-int/2addr v1, v5

    .line 311
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->K:I

    .line 312
    .line 313
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->e0:I

    .line 314
    .line 315
    sub-int/2addr v1, v0

    .line 316
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->L:I

    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_f
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 321
    .line 322
    if-nez v0, :cond_10

    .line 323
    .line 324
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->I:F

    .line 325
    .line 326
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->J:F

    .line 327
    .line 328
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->K:F

    .line 329
    .line 330
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->L:F

    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_10
    if-ne v0, v4, :cond_11

    .line 334
    .line 335
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->D:F

    .line 336
    .line 337
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->E:F

    .line 338
    .line 339
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->F:F

    .line 340
    .line 341
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->G:F

    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_11
    if-ne v0, v2, :cond_12

    .line 345
    .line 346
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 347
    .line 348
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 349
    .line 350
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 351
    .line 352
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 353
    .line 354
    goto :goto_0

    .line 355
    :cond_12
    if-ne v0, v1, :cond_13

    .line 356
    .line 357
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->V:F

    .line 358
    .line 359
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->W:F

    .line 360
    .line 361
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->X:F

    .line 362
    .line 363
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->Y:F

    .line 364
    .line 365
    goto :goto_0

    .line 366
    :cond_13
    const/4 v1, 0x4

    .line 367
    if-ne v0, v1, :cond_14

    .line 368
    .line 369
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l:F

    .line 370
    .line 371
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->m:F

    .line 372
    .line 373
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->n:F

    .line 374
    .line 375
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->o:F

    .line 376
    .line 377
    goto :goto_0

    .line 378
    :cond_14
    const/4 v1, 0x5

    .line 379
    if-ne v0, v1, :cond_15

    .line 380
    .line 381
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->q:F

    .line 382
    .line 383
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->r:F

    .line 384
    .line 385
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->s:F

    .line 386
    .line 387
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->t:F

    .line 388
    .line 389
    goto :goto_0

    .line 390
    :cond_15
    const/4 v1, 0x6

    .line 391
    if-ne v0, v1, :cond_16

    .line 392
    .line 393
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->B:F

    .line 394
    .line 395
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->C:F

    .line 396
    .line 397
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->D:F

    .line 398
    .line 399
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->E:F

    .line 400
    .line 401
    goto :goto_0

    .line 402
    :cond_16
    const/4 v1, 0x7

    .line 403
    if-ne v0, v1, :cond_17

    .line 404
    .line 405
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->F:F

    .line 406
    .line 407
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->G:F

    .line 408
    .line 409
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->H:F

    .line 410
    .line 411
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->I:F

    .line 412
    .line 413
    goto :goto_0

    .line 414
    :cond_17
    sget v0, Lcom/mycompany/app/pref/PrefFloat;->J:F

    .line 415
    .line 416
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->K:F

    .line 417
    .line 418
    sget v5, Lcom/mycompany/app/pref/PrefFloat;->L:F

    .line 419
    .line 420
    sget v6, Lcom/mycompany/app/pref/PrefFloat;->M:F

    .line 421
    .line 422
    :goto_0
    iget v7, p0, Lcom/mycompany/app/wview/WebFltView;->Q:I

    .line 423
    .line 424
    iget v8, p0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 425
    .line 426
    sub-int/2addr v7, v8

    .line 427
    int-to-float v7, v7

    .line 428
    invoke-static {v0, v1, v7, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->R:I

    .line 433
    .line 434
    iget v7, p0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 435
    .line 436
    sub-int/2addr v1, v7

    .line 437
    int-to-float v1, v1

    .line 438
    invoke-static {v5, v6, v1, v5}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 443
    .line 444
    sub-int/2addr v0, v5

    .line 445
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->K:I

    .line 446
    .line 447
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 448
    .line 449
    sub-int/2addr v1, v0

    .line 450
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->L:I

    .line 451
    .line 452
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 453
    .line 454
    if-nez v0, :cond_18

    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_18
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 458
    .line 459
    if-eqz v0, :cond_19

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_19
    const v0, 0x3f4ccccd    # 0.8f

    .line 463
    .line 464
    .line 465
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->t:F

    .line 466
    .line 467
    iput v0, p0, Lcom/mycompany/app/wview/WebFltView;->l0:F

    .line 468
    .line 469
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->m0:Z

    .line 470
    .line 471
    new-array v0, v2, [F

    .line 472
    .line 473
    fill-array-data v0, :array_0

    .line 474
    .line 475
    .line 476
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 481
    .line 482
    const-wide/16 v1, 0xc8

    .line 483
    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 485
    .line 486
    .line 487
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 488
    .line 489
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 493
    .line 494
    new-instance v1, Lcom/mycompany/app/wview/WebFltView$3;

    .line 495
    .line 496
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebFltView$3;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 500
    .line 501
    .line 502
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 503
    .line 504
    new-instance v1, Lcom/mycompany/app/wview/WebFltView$4;

    .line 505
    .line 506
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebFltView$4;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->s:Landroid/animation/ValueAnimator;

    .line 513
    .line 514
    if-eqz v0, :cond_1a

    .line 515
    .line 516
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 517
    .line 518
    .line 519
    :cond_1a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->r:Landroid/animation/ValueAnimator;

    .line 520
    .line 521
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 522
    .line 523
    .line 524
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 525
    .line 526
    if-eqz v0, :cond_1b

    .line 527
    .line 528
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    .line 530
    .line 531
    :cond_1b
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->h:Lcom/mycompany/app/wview/WebFltView$FltTouchListener;

    .line 532
    .line 533
    if-eqz v0, :cond_1c

    .line 534
    .line 535
    invoke-interface {v0, v4}, Lcom/mycompany/app/wview/WebFltView$FltTouchListener;->a(Z)V

    .line 536
    .line 537
    .line 538
    :cond_1c
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    return p1

    .line 543
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$EventHandler;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->H:Z

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const-wide/16 v2, 0x7d0

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->R:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne v1, v0, :cond_1

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->N:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->V:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v2, 0x3

    .line 21
    if-ne v1, v2, :cond_3

    .line 22
    .line 23
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->Z:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/4 v2, 0x4

    .line 27
    if-ne v1, v2, :cond_4

    .line 28
    .line 29
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->u:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const/4 v2, 0x5

    .line 33
    if-ne v1, v2, :cond_5

    .line 34
    .line 35
    const/high16 v1, -0x1000000

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_5
    const/4 v2, 0x6

    .line 39
    if-ne v1, v2, :cond_6

    .line 40
    .line 41
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->s:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_6
    const/4 v2, 0x7

    .line 45
    if-ne v1, v2, :cond_7

    .line 46
    .line 47
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->w:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_7
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->A:I

    .line 51
    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/mycompany/app/wview/WebFltView;->getColorPos()F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    float-to-double v2, v2

    .line 57
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmpl-double v2, v2, v4

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-lez v2, :cond_8

    .line 66
    .line 67
    move v2, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    move v2, v3

    .line 70
    :goto_1
    if-eqz v2, :cond_9

    .line 71
    .line 72
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 73
    .line 74
    if-eqz v4, :cond_9

    .line 75
    .line 76
    move v4, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_9
    move v4, v3

    .line 79
    :goto_2
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->k:I

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    if-eq v5, v1, :cond_b

    .line 83
    .line 84
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->k:I

    .line 85
    .line 86
    if-eqz v1, :cond_a

    .line 87
    .line 88
    new-instance v5, Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 99
    .line 100
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 101
    .line 102
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 106
    .line 107
    iget v7, p0, Lcom/mycompany/app/wview/WebFltView;->k:I

    .line 108
    .line 109
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v5, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iput v5, p0, Lcom/mycompany/app/wview/WebFltView;->l:I

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_a
    iput-object v6, p0, Lcom/mycompany/app/wview/WebFltView;->m:Landroid/graphics/Paint;

    .line 122
    .line 123
    :goto_3
    move v5, v0

    .line 124
    goto :goto_4

    .line 125
    :cond_b
    move v5, v3

    .line 126
    :goto_4
    iget v7, p0, Lcom/mycompany/app/wview/WebFltView;->o:I

    .line 127
    .line 128
    if-eq v7, v1, :cond_d

    .line 129
    .line 130
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->o:I

    .line 131
    .line 132
    if-eqz v1, :cond_c

    .line 133
    .line 134
    new-instance v1, Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 145
    .line 146
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 147
    .line 148
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 152
    .line 153
    iget v5, p0, Lcom/mycompany/app/wview/WebFltView;->o:I

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->p:I

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_c
    iput-object v6, p0, Lcom/mycompany/app/wview/WebFltView;->q:Landroid/graphics/Paint;

    .line 168
    .line 169
    :goto_5
    move v5, v0

    .line 170
    :cond_d
    if-eqz v2, :cond_e

    .line 171
    .line 172
    const v3, -0x3f8a8a8b

    .line 173
    .line 174
    .line 175
    :cond_e
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->u:I

    .line 176
    .line 177
    if-eq v1, v3, :cond_10

    .line 178
    .line 179
    iput v3, p0, Lcom/mycompany/app/wview/WebFltView;->u:I

    .line 180
    .line 181
    if-eqz v3, :cond_f

    .line 182
    .line 183
    new-instance v1, Landroid/graphics/Paint;

    .line 184
    .line 185
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 194
    .line 195
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 201
    .line 202
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 203
    .line 204
    int-to-float v2, v2

    .line 205
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 209
    .line 210
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->u:I

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_f
    iput-object v6, p0, Lcom/mycompany/app/wview/WebFltView;->v:Landroid/graphics/Paint;

    .line 217
    .line 218
    :goto_6
    move v5, v0

    .line 219
    :cond_10
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 220
    .line 221
    if-eqz v1, :cond_11

    .line 222
    .line 223
    invoke-virtual {p0, v4}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->B:I

    .line 228
    .line 229
    if-eq v2, v1, :cond_11

    .line 230
    .line 231
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->B:I

    .line 232
    .line 233
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyProgressDrawable;->c(I)V

    .line 236
    .line 237
    .line 238
    move v5, v0

    .line 239
    :cond_11
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 240
    .line 241
    if-eqz v1, :cond_12

    .line 242
    .line 243
    invoke-virtual {p0, v4}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->D:I

    .line 248
    .line 249
    if-eq v2, v1, :cond_12

    .line 250
    .line 251
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->D:I

    .line 252
    .line 253
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_12
    move v0, v5

    .line 260
    :goto_7
    if-eqz v0, :cond_13

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 263
    .line 264
    .line 265
    :cond_13
    return-void
.end method

.method public final r(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->z:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/mycompany/app/wview/WebFltView;->getColorPos()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    float-to-double v1, p1

    .line 23
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmpl-double p1, v1, v3

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->D:I

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 52
    .line 53
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->n:I

    .line 54
    .line 55
    sub-int/2addr p1, v0

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    add-int/2addr v0, p1

    .line 59
    iget-object v2, p0, Lcom/mycompany/app/wview/WebFltView;->E:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v2, p1, p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    .line 63
    .line 64
    return v1
.end method

.method public final s()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->U:I

    .line 2
    .line 3
    const/16 v1, -0x4d2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->V:I

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->I:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    int-to-float v0, v0

    .line 16
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->J:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v4, p0, Lcom/mycompany/app/wview/WebFltView;->V:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    invoke-static {v2, v0, v3, v4}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    cmpg-float v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->U:I

    .line 35
    .line 36
    iput v1, p0, Lcom/mycompany/app/wview/WebFltView;->V:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->h()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setFltListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 2
    .line 3
    return-void
.end method

.method public setHideBlocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->a0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebFltView;->a0:Z

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_5

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 39
    .line 40
    .line 41
    :cond_5
    :goto_1
    return-void
.end method

.method public setHideScrollBlocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebFltView;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconView(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->y:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->k2(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/wview/WebFltView;->r(I)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setLoad(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->A:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebFltView;->A:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 12
    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    new-instance p1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 18
    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-direct {p1, p0, v1, v2}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/mycompany/app/wview/WebFltView;->getColorPos()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    float-to-double v1, p1

    .line 36
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    cmpl-double p1, v1, v3

    .line 42
    .line 43
    if-lez p1, :cond_1

    .line 44
    .line 45
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->l(Z)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->B:I

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->c(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 64
    .line 65
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->n:I

    .line 66
    .line 67
    sub-int/2addr p1, v0

    .line 68
    div-int/lit8 p1, p1, 0x2

    .line 69
    .line 70
    add-int/2addr v0, p1

    .line 71
    iget-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 72
    .line 73
    invoke-virtual {v1, p1, p1, v0, v0}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->C:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 87
    .line 88
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v0, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebFltView;->i0:Z

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 41
    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->g0:F

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 51
    .line 52
    const/high16 v0, 0x41100000    # 9.0f

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->h0:F

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->f0:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->invalidate()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public setPreview(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebFltView;->c0:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->d0:I

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->e0:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->W:Lcom/mycompany/app/wview/WebFltView$EventHandler;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setTouchListener(Lcom/mycompany/app/wview/WebFltView$FltTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->h:Lcom/mycompany/app/wview/WebFltView$FltTouchListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->h()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final t(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->Q:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 17
    .line 18
    add-int v3, p2, v1

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/wview/WebFltView;->R:I

    .line 21
    .line 22
    if-le v3, v4, :cond_2

    .line 23
    .line 24
    sub-int p2, v4, v1

    .line 25
    .line 26
    :cond_2
    const/4 v3, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v3

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v3

    .line 33
    :cond_4
    iget-boolean v3, p0, Lcom/mycompany/app/wview/WebFltView;->c0:Z

    .line 34
    .line 35
    if-eqz v3, :cond_5

    .line 36
    .line 37
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->d0:I

    .line 38
    .line 39
    iput p2, p0, Lcom/mycompany/app/wview/WebFltView;->e0:I

    .line 40
    .line 41
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->O:I

    .line 42
    .line 43
    add-int/2addr p1, v0

    .line 44
    int-to-float p1, p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Lcom/mycompany/app/wview/WebFltView;->P:I

    .line 49
    .line 50
    add-int/2addr p2, p1

    .line 51
    int-to-float p1, p2

    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    add-int/2addr v0, p1

    .line 57
    sub-int/2addr v2, v0

    .line 58
    int-to-float v0, v2

    .line 59
    add-int/2addr v1, p2

    .line 60
    sub-int/2addr v4, v1

    .line 61
    int-to-float v1, v4

    .line 62
    iget v2, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 63
    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    int-to-float v2, p1

    .line 67
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->I:F

    .line 68
    .line 69
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->J:F

    .line 70
    .line 71
    int-to-float v0, p2

    .line 72
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->K:F

    .line 73
    .line 74
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->L:F

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_6
    const/4 v3, 0x1

    .line 79
    if-ne v2, v3, :cond_7

    .line 80
    .line 81
    int-to-float v2, p1

    .line 82
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->D:F

    .line 83
    .line 84
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->E:F

    .line 85
    .line 86
    int-to-float v0, p2

    .line 87
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->F:F

    .line 88
    .line 89
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->G:F

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    const/4 v3, 0x2

    .line 93
    if-ne v2, v3, :cond_8

    .line 94
    .line 95
    int-to-float v2, p1

    .line 96
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 97
    .line 98
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 99
    .line 100
    int-to-float v0, p2

    .line 101
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 102
    .line 103
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_8
    const/4 v3, 0x3

    .line 107
    if-ne v2, v3, :cond_9

    .line 108
    .line 109
    int-to-float v2, p1

    .line 110
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->V:F

    .line 111
    .line 112
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->W:F

    .line 113
    .line 114
    int-to-float v0, p2

    .line 115
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->X:F

    .line 116
    .line 117
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->Y:F

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_9
    const/4 v3, 0x4

    .line 121
    if-ne v2, v3, :cond_a

    .line 122
    .line 123
    int-to-float v2, p1

    .line 124
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->l:F

    .line 125
    .line 126
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->m:F

    .line 127
    .line 128
    int-to-float v0, p2

    .line 129
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->n:F

    .line 130
    .line 131
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->o:F

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_a
    const/4 v3, 0x5

    .line 135
    if-ne v2, v3, :cond_b

    .line 136
    .line 137
    int-to-float v2, p1

    .line 138
    sput v2, Lcom/mycompany/app/pref/PrefZtri;->q:F

    .line 139
    .line 140
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->r:F

    .line 141
    .line 142
    int-to-float v0, p2

    .line 143
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->s:F

    .line 144
    .line 145
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->t:F

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_b
    const/4 v3, 0x6

    .line 149
    if-ne v2, v3, :cond_c

    .line 150
    .line 151
    int-to-float v2, p1

    .line 152
    sput v2, Lcom/mycompany/app/pref/PrefFloat;->B:F

    .line 153
    .line 154
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->C:F

    .line 155
    .line 156
    int-to-float v0, p2

    .line 157
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->D:F

    .line 158
    .line 159
    sput v1, Lcom/mycompany/app/pref/PrefFloat;->E:F

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_c
    const/4 v3, 0x7

    .line 163
    if-ne v2, v3, :cond_d

    .line 164
    .line 165
    int-to-float v2, p1

    .line 166
    sput v2, Lcom/mycompany/app/pref/PrefFloat;->F:F

    .line 167
    .line 168
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->G:F

    .line 169
    .line 170
    int-to-float v0, p2

    .line 171
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->H:F

    .line 172
    .line 173
    sput v1, Lcom/mycompany/app/pref/PrefFloat;->I:F

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_d
    int-to-float v2, p1

    .line 177
    sput v2, Lcom/mycompany/app/pref/PrefFloat;->J:F

    .line 178
    .line 179
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->K:F

    .line 180
    .line 181
    int-to-float v0, p2

    .line 182
    sput v0, Lcom/mycompany/app/pref/PrefFloat;->L:F

    .line 183
    .line 184
    sput v1, Lcom/mycompany/app/pref/PrefFloat;->M:F

    .line 185
    .line 186
    :goto_0
    iget v0, p0, Lcom/mycompany/app/wview/WebFltView;->O:I

    .line 187
    .line 188
    add-int/2addr p1, v0

    .line 189
    int-to-float p1, p1

    .line 190
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 191
    .line 192
    .line 193
    iget p1, p0, Lcom/mycompany/app/wview/WebFltView;->P:I

    .line 194
    .line 195
    add-int/2addr p2, p1

    .line 196
    int-to-float p1, p2

    .line 197
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public final u()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebFltView;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1f

    .line 14
    .line 15
    instance-of v2, v1, Landroid/view/View;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_1
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int/2addr v4, v2

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sub-int/2addr v4, v5

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-int/2addr v5, v3

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr v5, v1

    .line 51
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->O:I

    .line 52
    .line 53
    if-ne v2, v1, :cond_2

    .line 54
    .line 55
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->P:I

    .line 56
    .line 57
    if-ne v3, v1, :cond_2

    .line 58
    .line 59
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->Q:I

    .line 60
    .line 61
    if-ne v4, v1, :cond_2

    .line 62
    .line 63
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->R:I

    .line 64
    .line 65
    if-ne v5, v1, :cond_2

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_2
    iput v2, v0, Lcom/mycompany/app/wview/WebFltView;->O:I

    .line 70
    .line 71
    iput v3, v0, Lcom/mycompany/app/wview/WebFltView;->P:I

    .line 72
    .line 73
    iput v4, v0, Lcom/mycompany/app/wview/WebFltView;->Q:I

    .line 74
    .line 75
    iput v5, v0, Lcom/mycompany/app/wview/WebFltView;->R:I

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/mycompany/app/wview/WebFltView;->c0:Z

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->d0:I

    .line 83
    .line 84
    if-gez v1, :cond_3

    .line 85
    .line 86
    if-gez v1, :cond_3

    .line 87
    .line 88
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 89
    .line 90
    sub-int/2addr v4, v1

    .line 91
    div-int/lit8 v1, v4, 0x2

    .line 92
    .line 93
    iget v3, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 94
    .line 95
    sub-int/2addr v5, v3

    .line 96
    div-int/2addr v5, v2

    .line 97
    iput v1, v0, Lcom/mycompany/app/wview/WebFltView;->d0:I

    .line 98
    .line 99
    iput v5, v0, Lcom/mycompany/app/wview/WebFltView;->e0:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget v5, v0, Lcom/mycompany/app/wview/WebFltView;->e0:I

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v0, v1, v5}, Lcom/mycompany/app/wview/WebFltView;->t(II)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget v1, v0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 109
    .line 110
    const/4 v3, 0x7

    .line 111
    const/4 v6, 0x6

    .line 112
    const/4 v7, 0x5

    .line 113
    const/4 v8, 0x4

    .line 114
    const/4 v9, 0x3

    .line 115
    const/4 v10, 0x1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->I:F

    .line 119
    .line 120
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->J:F

    .line 121
    .line 122
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->K:F

    .line 123
    .line 124
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->L:F

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    if-ne v1, v10, :cond_6

    .line 128
    .line 129
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->D:F

    .line 130
    .line 131
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->E:F

    .line 132
    .line 133
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->F:F

    .line 134
    .line 135
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->G:F

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    if-ne v1, v2, :cond_7

    .line 139
    .line 140
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 141
    .line 142
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 143
    .line 144
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    if-ne v1, v9, :cond_8

    .line 150
    .line 151
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->V:F

    .line 152
    .line 153
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->W:F

    .line 154
    .line 155
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->X:F

    .line 156
    .line 157
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->Y:F

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    if-ne v1, v8, :cond_9

    .line 161
    .line 162
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->l:F

    .line 163
    .line 164
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->m:F

    .line 165
    .line 166
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->n:F

    .line 167
    .line 168
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->o:F

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    if-ne v1, v7, :cond_a

    .line 172
    .line 173
    sget v11, Lcom/mycompany/app/pref/PrefZtri;->q:F

    .line 174
    .line 175
    sget v12, Lcom/mycompany/app/pref/PrefZtri;->r:F

    .line 176
    .line 177
    sget v13, Lcom/mycompany/app/pref/PrefZtri;->s:F

    .line 178
    .line 179
    sget v14, Lcom/mycompany/app/pref/PrefZtri;->t:F

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_a
    if-ne v1, v6, :cond_b

    .line 183
    .line 184
    sget v11, Lcom/mycompany/app/pref/PrefFloat;->B:F

    .line 185
    .line 186
    sget v12, Lcom/mycompany/app/pref/PrefFloat;->C:F

    .line 187
    .line 188
    sget v13, Lcom/mycompany/app/pref/PrefFloat;->D:F

    .line 189
    .line 190
    sget v14, Lcom/mycompany/app/pref/PrefFloat;->E:F

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_b
    if-ne v1, v3, :cond_c

    .line 194
    .line 195
    sget v11, Lcom/mycompany/app/pref/PrefFloat;->F:F

    .line 196
    .line 197
    sget v12, Lcom/mycompany/app/pref/PrefFloat;->G:F

    .line 198
    .line 199
    sget v13, Lcom/mycompany/app/pref/PrefFloat;->H:F

    .line 200
    .line 201
    sget v14, Lcom/mycompany/app/pref/PrefFloat;->I:F

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_c
    sget v11, Lcom/mycompany/app/pref/PrefFloat;->J:F

    .line 205
    .line 206
    sget v12, Lcom/mycompany/app/pref/PrefFloat;->K:F

    .line 207
    .line 208
    sget v13, Lcom/mycompany/app/pref/PrefFloat;->L:F

    .line 209
    .line 210
    sget v14, Lcom/mycompany/app/pref/PrefFloat;->M:F

    .line 211
    .line 212
    :goto_1
    const/4 v15, 0x0

    .line 213
    cmpg-float v16, v11, v15

    .line 214
    .line 215
    if-gez v16, :cond_15

    .line 216
    .line 217
    cmpg-float v16, v12, v15

    .line 218
    .line 219
    if-gez v16, :cond_15

    .line 220
    .line 221
    cmpg-float v16, v13, v15

    .line 222
    .line 223
    if-gez v16, :cond_15

    .line 224
    .line 225
    cmpg-float v15, v14, v15

    .line 226
    .line 227
    if-gez v15, :cond_15

    .line 228
    .line 229
    if-nez v1, :cond_d

    .line 230
    .line 231
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 232
    .line 233
    sub-int/2addr v4, v15

    .line 234
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 235
    .line 236
    sub-int/2addr v4, v15

    .line 237
    div-int/2addr v5, v2

    .line 238
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 239
    .line 240
    :goto_2
    add-int/2addr v5, v15

    .line 241
    goto/16 :goto_4

    .line 242
    .line 243
    :cond_d
    if-ne v1, v10, :cond_e

    .line 244
    .line 245
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 246
    .line 247
    sub-int/2addr v4, v15

    .line 248
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 249
    .line 250
    sub-int/2addr v4, v15

    .line 251
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 252
    .line 253
    sub-int/2addr v5, v15

    .line 254
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    sub-int/2addr v5, v15

    .line 259
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 260
    .line 261
    :goto_3
    sub-int/2addr v5, v15

    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_e
    if-ne v1, v2, :cond_f

    .line 265
    .line 266
    iget v5, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 267
    .line 268
    sub-int/2addr v4, v5

    .line 269
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 270
    .line 271
    sub-int/2addr v4, v5

    .line 272
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_f
    if-ne v1, v9, :cond_10

    .line 280
    .line 281
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 282
    .line 283
    sub-int/2addr v4, v15

    .line 284
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    sub-int/2addr v4, v15

    .line 287
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 288
    .line 289
    sub-int/2addr v4, v15

    .line 290
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 291
    .line 292
    sub-int/2addr v5, v15

    .line 293
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    sub-int/2addr v5, v15

    .line 298
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 299
    .line 300
    sub-int/2addr v5, v15

    .line 301
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_10
    if-ne v1, v8, :cond_11

    .line 305
    .line 306
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 307
    .line 308
    sub-int/2addr v4, v15

    .line 309
    div-int/2addr v4, v2

    .line 310
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 311
    .line 312
    sub-int/2addr v5, v15

    .line 313
    div-int/2addr v5, v2

    .line 314
    goto :goto_4

    .line 315
    :cond_11
    if-ne v1, v7, :cond_12

    .line 316
    .line 317
    iget v5, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 318
    .line 319
    sub-int/2addr v4, v5

    .line 320
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 321
    .line 322
    sub-int/2addr v4, v5

    .line 323
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_12
    if-ne v1, v6, :cond_13

    .line 331
    .line 332
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 333
    .line 334
    sub-int/2addr v4, v15

    .line 335
    div-int/2addr v4, v2

    .line 336
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 337
    .line 338
    sub-int/2addr v5, v15

    .line 339
    div-int/2addr v5, v2

    .line 340
    goto :goto_4

    .line 341
    :cond_13
    if-ne v1, v3, :cond_14

    .line 342
    .line 343
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 344
    .line 345
    sub-int/2addr v4, v15

    .line 346
    div-int/2addr v4, v2

    .line 347
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 348
    .line 349
    sub-int/2addr v5, v15

    .line 350
    div-int/2addr v5, v2

    .line 351
    goto :goto_4

    .line 352
    :cond_14
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 353
    .line 354
    sub-int/2addr v4, v15

    .line 355
    div-int/2addr v4, v2

    .line 356
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 357
    .line 358
    sub-int/2addr v5, v15

    .line 359
    div-int/2addr v5, v2

    .line 360
    goto :goto_4

    .line 361
    :cond_15
    iget v5, v0, Lcom/mycompany/app/wview/WebFltView;->M:I

    .line 362
    .line 363
    sub-int/2addr v4, v5

    .line 364
    int-to-float v4, v4

    .line 365
    invoke-static {v11, v12, v4, v11}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    iget v5, v0, Lcom/mycompany/app/wview/WebFltView;->R:I

    .line 370
    .line 371
    iget v15, v0, Lcom/mycompany/app/wview/WebFltView;->N:I

    .line 372
    .line 373
    sub-int/2addr v5, v15

    .line 374
    int-to-float v5, v5

    .line 375
    invoke-static {v13, v14, v5, v13}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    :goto_4
    invoke-virtual {v0, v4, v5}, Lcom/mycompany/app/wview/WebFltView;->t(II)V

    .line 380
    .line 381
    .line 382
    if-nez v1, :cond_16

    .line 383
    .line 384
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->I:F

    .line 385
    .line 386
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->J:F

    .line 387
    .line 388
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->K:F

    .line 389
    .line 390
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->L:F

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_16
    if-ne v1, v10, :cond_17

    .line 394
    .line 395
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->D:F

    .line 396
    .line 397
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->E:F

    .line 398
    .line 399
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->F:F

    .line 400
    .line 401
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->G:F

    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_17
    if-ne v1, v2, :cond_18

    .line 405
    .line 406
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 407
    .line 408
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 409
    .line 410
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 411
    .line 412
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_18
    if-ne v1, v9, :cond_19

    .line 416
    .line 417
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->V:F

    .line 418
    .line 419
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->W:F

    .line 420
    .line 421
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->X:F

    .line 422
    .line 423
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->Y:F

    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_19
    if-ne v1, v8, :cond_1a

    .line 427
    .line 428
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->l:F

    .line 429
    .line 430
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->m:F

    .line 431
    .line 432
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->n:F

    .line 433
    .line 434
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->o:F

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_1a
    if-ne v1, v7, :cond_1b

    .line 438
    .line 439
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->q:F

    .line 440
    .line 441
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->r:F

    .line 442
    .line 443
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->s:F

    .line 444
    .line 445
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->t:F

    .line 446
    .line 447
    goto :goto_5

    .line 448
    :cond_1b
    if-ne v1, v6, :cond_1c

    .line 449
    .line 450
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->B:F

    .line 451
    .line 452
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->C:F

    .line 453
    .line 454
    sget v3, Lcom/mycompany/app/pref/PrefFloat;->D:F

    .line 455
    .line 456
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->E:F

    .line 457
    .line 458
    goto :goto_5

    .line 459
    :cond_1c
    if-ne v1, v3, :cond_1d

    .line 460
    .line 461
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->F:F

    .line 462
    .line 463
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->G:F

    .line 464
    .line 465
    sget v3, Lcom/mycompany/app/pref/PrefFloat;->H:F

    .line 466
    .line 467
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->I:F

    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_1d
    sget v1, Lcom/mycompany/app/pref/PrefFloat;->J:F

    .line 471
    .line 472
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->K:F

    .line 473
    .line 474
    sget v3, Lcom/mycompany/app/pref/PrefFloat;->L:F

    .line 475
    .line 476
    sget v4, Lcom/mycompany/app/pref/PrefFloat;->M:F

    .line 477
    .line 478
    :goto_5
    invoke-static {v11, v1}, Ljava/lang/Float;->compare(FF)I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_1e

    .line 483
    .line 484
    invoke-static {v12, v2}, Ljava/lang/Float;->compare(FF)I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_1e

    .line 489
    .line 490
    invoke-static {v13, v3}, Ljava/lang/Float;->compare(FF)I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_1e

    .line 495
    .line 496
    invoke-static {v14, v4}, Ljava/lang/Float;->compare(FF)I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_1f

    .line 501
    .line 502
    :cond_1e
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebFltView;->v()V

    .line 503
    .line 504
    .line 505
    :cond_1f
    :goto_6
    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x7

    .line 5
    iget v3, p0, Lcom/mycompany/app/wview/WebFltView;->i:I

    .line 6
    .line 7
    if-eq v3, v0, :cond_9

    .line 8
    .line 9
    if-eq v3, v2, :cond_9

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    if-nez v3, :cond_3

    .line 30
    .line 31
    const-string v1, "mHandLtX"

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->I:F

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 36
    .line 37
    .line 38
    const-string v1, "mHandRtX"

    .line 39
    .line 40
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->J:F

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 43
    .line 44
    .line 45
    const-string v1, "mHandUpY"

    .line 46
    .line 47
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->K:F

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 50
    .line 51
    .line 52
    const-string v1, "mHandDnY"

    .line 53
    .line 54
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->L:F

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    const/4 v1, 0x1

    .line 62
    if-ne v3, v1, :cond_4

    .line 63
    .line 64
    const-string v1, "mNewsLtX"

    .line 65
    .line 66
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->D:F

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 69
    .line 70
    .line 71
    const-string v1, "mNewsRtX"

    .line 72
    .line 73
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->E:F

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 76
    .line 77
    .line 78
    const-string v1, "mNewsUpY"

    .line 79
    .line 80
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->F:F

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 83
    .line 84
    .line 85
    const-string v1, "mNewsDnY"

    .line 86
    .line 87
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->G:F

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_4
    const/4 v1, 0x2

    .line 95
    if-ne v3, v1, :cond_5

    .line 96
    .line 97
    const-string v1, "mPassLtX"

    .line 98
    .line 99
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 102
    .line 103
    .line 104
    const-string v1, "mPassRtX"

    .line 105
    .line 106
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 109
    .line 110
    .line 111
    const-string v1, "mPassUpY"

    .line 112
    .line 113
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 116
    .line 117
    .line 118
    const-string v1, "mPassDnY"

    .line 119
    .line 120
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    const/4 v1, 0x3

    .line 127
    if-ne v3, v1, :cond_6

    .line 128
    .line 129
    const-string v1, "mTrnsLtX"

    .line 130
    .line 131
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->V:F

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 134
    .line 135
    .line 136
    const-string v1, "mTrnsRtX"

    .line 137
    .line 138
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->W:F

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 141
    .line 142
    .line 143
    const-string v1, "mTrnsUpY"

    .line 144
    .line 145
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->X:F

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 148
    .line 149
    .line 150
    const-string v1, "mTrnsDnY"

    .line 151
    .line 152
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->Y:F

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_6
    const/4 v1, 0x4

    .line 159
    if-ne v3, v1, :cond_7

    .line 160
    .line 161
    const-string v1, "mZoomLtX"

    .line 162
    .line 163
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->l:F

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 166
    .line 167
    .line 168
    const-string v1, "mZoomRtX"

    .line 169
    .line 170
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->m:F

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 173
    .line 174
    .line 175
    const-string v1, "mZoomUpY"

    .line 176
    .line 177
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->n:F

    .line 178
    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 180
    .line 181
    .line 182
    const-string v1, "mZoomDnY"

    .line 183
    .line 184
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->o:F

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_7
    const/4 v1, 0x5

    .line 191
    if-ne v3, v1, :cond_8

    .line 192
    .line 193
    const-string v1, "mComicLtX"

    .line 194
    .line 195
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->q:F

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 198
    .line 199
    .line 200
    const-string v1, "mComicRtX"

    .line 201
    .line 202
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->r:F

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 205
    .line 206
    .line 207
    const-string v1, "mComicUpY"

    .line 208
    .line 209
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->s:F

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 212
    .line 213
    .line 214
    const-string v1, "mComicDnY"

    .line 215
    .line 216
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->t:F

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 219
    .line 220
    .line 221
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->f:Landroid/content/Context;

    .line 226
    .line 227
    if-nez v0, :cond_a

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_a
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefFloat;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefFloat;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-nez v0, :cond_b

    .line 235
    .line 236
    :goto_2
    return-void

    .line 237
    :cond_b
    if-ne v3, v2, :cond_c

    .line 238
    .line 239
    const-string v1, "mFlt2LtX"

    .line 240
    .line 241
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->F:F

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 244
    .line 245
    .line 246
    const-string v1, "mFlt2RtX"

    .line 247
    .line 248
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->G:F

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 251
    .line 252
    .line 253
    const-string v1, "mFlt2UpY"

    .line 254
    .line 255
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->H:F

    .line 256
    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 258
    .line 259
    .line 260
    const-string v1, "mFlt2DnY"

    .line 261
    .line 262
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->I:F

    .line 263
    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_c
    if-ne v3, v1, :cond_d

    .line 269
    .line 270
    const-string v1, "mFlt3LtX"

    .line 271
    .line 272
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->J:F

    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 275
    .line 276
    .line 277
    const-string v1, "mFlt3RtX"

    .line 278
    .line 279
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->K:F

    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 282
    .line 283
    .line 284
    const-string v1, "mFlt3UpY"

    .line 285
    .line 286
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->L:F

    .line 287
    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 289
    .line 290
    .line 291
    const-string v1, "mFlt3DnY"

    .line 292
    .line 293
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->M:F

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_d
    const-string v1, "mFlt1LtX"

    .line 300
    .line 301
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->B:F

    .line 302
    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 304
    .line 305
    .line 306
    const-string v1, "mFlt1RtX"

    .line 307
    .line 308
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->C:F

    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 311
    .line 312
    .line 313
    const-string v1, "mFlt1UpY"

    .line 314
    .line 315
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->D:F

    .line 316
    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 318
    .line 319
    .line 320
    const-string v1, "mFlt1DnY"

    .line 321
    .line 322
    sget v2, Lcom/mycompany/app/pref/PrefFloat;->E:F

    .line 323
    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 325
    .line 326
    .line 327
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final w(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebFltView;->p()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->G:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    cmpl-float v2, p1, v1

    .line 43
    .line 44
    if-ltz v2, :cond_4

    .line 45
    .line 46
    :goto_1
    return-void

    .line 47
    :cond_3
    const/4 p1, 0x0

    .line 48
    :cond_4
    iput p1, p0, Lcom/mycompany/app/wview/WebFltView;->r0:F

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebFltView;->s0:Z

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    new-array v2, v2, [F

    .line 54
    .line 55
    aput p1, v2, v0

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    aput v1, v2, v0

    .line 59
    .line 60
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    sub-float/2addr v1, p1

    .line 67
    const/high16 p1, 0x43c80000    # 400.0f

    .line 68
    .line 69
    mul-float/2addr v1, p1

    .line 70
    float-to-long v1, v1

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$11;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$11;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    new-instance v0, Lcom/mycompany/app/wview/WebFltView$12;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebFltView$12;-><init>(Lcom/mycompany/app/wview/WebFltView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/mycompany/app/wview/WebFltView;->F:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebFltView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

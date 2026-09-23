.class public Lcom/mycompany/app/dialog/DialogNewsMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

.field public c:Lcom/mycompany/app/view/MyWebBody;

.field public d:Landroid/view/View;

.field public final e:Z

.field public final f:I

.field public g:Landroid/widget/FrameLayout;

.field public h:Lcom/mycompany/app/view/MyRoundLinear;

.field public i:Lcom/mycompany/app/view/MyLineFrame;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Lcom/mycompany/app/view/MyRecyclerView;

.field public l:Lcom/mycompany/app/main/NewsMenuAdapter;

.field public m:I

.field public n:I

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public q:F

.field public r:Z

.field public final s:Ljava/lang/Runnable;

.field public t:F

.field public u:Z

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/view/MyWebBody;Landroid/view/View;ZLcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsMenu$13;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogNewsMenu$13;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->s:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsMenu$17;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogNewsMenu$17;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->v:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->b:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->d:Landroid/view/View;

    .line 25
    .line 26
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->e:Z

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->f:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogNewsMenu$1;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogNewsMenu$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static a(Lcom/mycompany/app/dialog/DialogNewsMenu;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->m:I

    .line 12
    .line 13
    int-to-float v2, v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->n:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 23
    .line 24
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->t:F

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->u:Z

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    const-wide/16 v1, 0xc8

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsMenu$15;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsMenu$15;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsMenu$16;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsMenu$16;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    return v0

    .line 90
    :cond_2
    :goto_0
    return v1

    .line 91
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c()Landroid/widget/FrameLayout$LayoutParams;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->d:Landroid/view/View;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    const/4 v2, 0x2

    .line 13
    new-array v3, v2, [I

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aget v5, v3, v4

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    add-int/2addr v6, v5

    .line 26
    const/4 v5, 0x1

    .line 27
    aget v7, v3, v5

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    add-int/2addr v8, v7

    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    div-int/2addr v9, v2

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    div-int/2addr v1, v2

    .line 55
    aget v2, v3, v4

    .line 56
    .line 57
    sub-int/2addr v2, v6

    .line 58
    add-int/2addr v2, v9

    .line 59
    aget v3, v3, v5

    .line 60
    .line 61
    sub-int/2addr v3, v8

    .line 62
    add-int/2addr v3, v1

    .line 63
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 64
    .line 65
    const/high16 v6, 0x435c0000    # 220.0f

    .line 66
    .line 67
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 76
    .line 77
    const/high16 v8, 0x440e0000    # 568.0f

    .line 78
    .line 79
    invoke-static {v6, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    iget-boolean v8, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->e:Z

    .line 88
    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    add-int v8, v2, v5

    .line 92
    .line 93
    move v9, v8

    .line 94
    move v8, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    sub-int v8, v2, v5

    .line 97
    .line 98
    move v9, v2

    .line 99
    :goto_1
    div-int/lit8 v10, v0, 0x2

    .line 100
    .line 101
    if-ge v3, v10, :cond_3

    .line 102
    .line 103
    add-int v10, v3, v1

    .line 104
    .line 105
    add-int v11, v10, v6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    neg-int v1, v1

    .line 109
    add-int v11, v3, v1

    .line 110
    .line 111
    sub-int v10, v11, v6

    .line 112
    .line 113
    :goto_2
    if-gez v8, :cond_5

    .line 114
    .line 115
    move v8, v4

    .line 116
    if-le v5, v7, :cond_4

    .line 117
    .line 118
    move v9, v7

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move v9, v5

    .line 121
    :cond_5
    :goto_3
    if-le v9, v7, :cond_7

    .line 122
    .line 123
    sub-int v8, v7, v5

    .line 124
    .line 125
    if-gez v8, :cond_6

    .line 126
    .line 127
    move v8, v4

    .line 128
    :cond_6
    move v9, v7

    .line 129
    :cond_7
    if-gez v10, :cond_9

    .line 130
    .line 131
    if-le v6, v0, :cond_8

    .line 132
    .line 133
    move v11, v0

    .line 134
    move v10, v4

    .line 135
    goto :goto_4

    .line 136
    :cond_8
    move v10, v4

    .line 137
    move v11, v6

    .line 138
    :cond_9
    :goto_4
    if-le v11, v0, :cond_b

    .line 139
    .line 140
    sub-int v5, v0, v6

    .line 141
    .line 142
    move v11, v0

    .line 143
    if-gez v5, :cond_a

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_a
    move v4, v5

    .line 147
    goto :goto_5

    .line 148
    :cond_b
    move v4, v10

    .line 149
    :goto_5
    sub-int/2addr v2, v8

    .line 150
    iput v2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->m:I

    .line 151
    .line 152
    sub-int/2addr v3, v4

    .line 153
    add-int/2addr v3, v1

    .line 154
    iput v3, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->n:I

    .line 155
    .line 156
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    .line 158
    const/4 v2, -0x1

    .line 159
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    sub-int/2addr v7, v9

    .line 163
    sub-int/2addr v0, v11

    .line 164
    invoke-virtual {v1, v8, v4, v7, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 165
    .line 166
    .line 167
    return-object v1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->g:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->g:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->b:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->a()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->b:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->i:Lcom/mycompany/app/view/MyLineFrame;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->i:Lcom/mycompany/app/view/MyLineFrame;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 64
    .line 65
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->l:Lcom/mycompany/app/main/NewsMenuAdapter;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    iput-object v1, v0, Lcom/mycompany/app/main/NewsMenuAdapter;->e:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->l:Lcom/mycompany/app/main/NewsMenuAdapter;

    .line 72
    .line 73
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu;->d:Landroid/view/View;

    .line 76
    .line 77
    return-void
.end method

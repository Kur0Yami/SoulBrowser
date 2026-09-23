.class public Lcom/mycompany/app/view/MySwitchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public final f:Z

.field public g:Z

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->f:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 12
    .line 13
    const/high16 v0, 0x42000000    # 32.0f

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x41900000    # 18.0f

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x11

    .line 39
    .line 40
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    .line 42
    new-instance v3, Landroid/view/View;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    const/high16 v2, 0x40800000    # 4.0f

    .line 53
    .line 54
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v1, v2

    .line 63
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 64
    .line 65
    sub-int/2addr v3, v0

    .line 66
    add-int/2addr v3, v2

    .line 67
    int-to-float v3, v3

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr v3, v4

    .line 71
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .line 77
    invoke-direct {v5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    const v1, 0x800013

    .line 81
    .line 82
    .line 83
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroid/view/View;

    .line 89
    .line 90
    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    sub-int/2addr v0, v2

    .line 99
    int-to-float p1, v0

    .line 100
    div-float/2addr p1, v4

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lcom/mycompany/app/view/MySwitchView;->n:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySwitchView;->c()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->l:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->m:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    return-object v0
.end method

.method private getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->j:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->k:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    return-object v0
.end method

.method private setAppearance(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x96

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :cond_0
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    new-array v7, v1, [Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    aput-object v4, v7, v0

    .line 35
    .line 36
    aput-object v6, v7, v3

    .line 37
    .line 38
    invoke-direct {v5, v7}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    if-eqz p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    instance-of v4, p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 83
    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_3
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    aput-object p1, v1, v0

    .line 101
    .line 102
    aput-object v5, v1, v3

    .line 103
    .line 104
    invoke-direct {v4, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 130
    .line 131
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->j:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->k:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->l:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->m:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    return-void
.end method

.method public final b(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySwitchView;->g:Z

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/mycompany/app/view/MySwitchView;->f:Z

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/mycompany/app/view/MySwitchView;->f:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/mycompany/app/view/MySwitchView;->g:Z

    .line 22
    .line 23
    invoke-direct {p0, p2}, Lcom/mycompany/app/view/MySwitchView;->setAppearance(Z)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/mycompany/app/view/MySwitchView;->f:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget p1, p0, Lcom/mycompany/app/view/MySwitchView;->n:I

    .line 31
    .line 32
    neg-int p1, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MySwitchView;->n:I

    .line 35
    .line 36
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    iget-object p2, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-boolean v1, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    int-to-float v0, p1

    .line 59
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-wide/16 v0, 0x96

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/mycompany/app/view/MySwitchView;->c:Z

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    int-to-float v0, p1

    .line 80
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_track_on_dark:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->j:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_track_off_dark:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->k:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_thumb_on_dark:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->l:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_thumb_off_dark:I

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->m:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_track_on_bright:I

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->j:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_track_off_bright:I

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->k:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_thumb_on_bright:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/mycompany/app/view/MySwitchView;->l:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->switc_thumb_off_bright:I

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->m:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->h:Landroid/view/View;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/view/MySwitchView;->i:Landroid/view/View;

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/mycompany/app/view/MySwitchView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

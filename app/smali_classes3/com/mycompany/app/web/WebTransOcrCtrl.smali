.class public Lcom/mycompany/app/web/WebTransOcrCtrl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:F

.field public D:Z

.field public final E:Ljava/lang/Runnable;

.field public c:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

.field public h:Lcom/mycompany/app/view/MyRoundFrame;

.field public i:Landroid/view/View;

.field public j:Lcom/mycompany/app/view/MyLineText;

.field public k:Lcom/mycompany/app/view/MyLineText;

.field public l:Lcom/mycompany/app/view/MyButtonImage;

.field public m:Lcom/mycompany/app/view/MyButtonText;

.field public n:Lcom/mycompany/app/view/MyButtonImage;

.field public o:Lcom/mycompany/app/view/MyButtonImage;

.field public p:Lcom/mycompany/app/view/MyButtonImage;

.field public q:Lcom/mycompany/app/view/MyButtonImage;

.field public r:Lcom/mycompany/app/view/MyButtonImage;

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public t:Z

.field public u:I

.field public v:Lcom/mycompany/app/view/MyProgressDrawable;

.field public w:I

.field public x:I

.field public y:Landroid/animation/ValueAnimator;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebTransOcrCtrl$14;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransOcrCtrl$14;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->E:Ljava/lang/Runnable;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->c:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/web/WebTransOcrCtrl;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->setValAnimShow(F)V

    return-void
.end method

.method public static getTransCap()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "C"

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const-string v0, "D"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    const-string v0, "J"

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_2
    const/4 v1, 0x4

    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    const-string v0, "K"

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_3
    const-string v0, "A"

    .line 28
    .line 29
    return-object v0
.end method

.method private setTransLang(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->B:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->B:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 28
    .line 29
    sget v0, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method private setTransLoad(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->t:Z

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->t:Z

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 16
    .line 17
    const v0, -0x50506

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 23
    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/high16 v1, 0x41100000    # 9.0f

    .line 31
    .line 32
    mul-float/2addr v1, p1

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->u:I

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, v0}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->e(II)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressDrawable;->e(I)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/mycompany/app/web/WebTransOcrCtrl$11;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebTransOcrCtrl$11;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0xc8

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iput-boolean p1, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransOcrCtrl;->invalidate()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransOcrCtrl;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final c()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 19
    .line 20
    int-to-float v4, v4

    .line 21
    sget v5, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 22
    .line 23
    int-to-float v5, v5

    .line 24
    invoke-virtual {v2, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 25
    .line 26
    .line 27
    const/high16 v4, -0x1000000

    .line 28
    .line 29
    const v5, -0xc0c0c1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 33
    .line 34
    .line 35
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 36
    .line 37
    invoke-virtual {v0, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    sget v7, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 49
    .line 50
    int-to-float v7, v7

    .line 51
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 52
    .line 53
    int-to-float v8, v8

    .line 54
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x8

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 68
    .line 69
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const v9, 0x800005

    .line 73
    .line 74
    .line 75
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    .line 77
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 78
    .line 79
    mul-int/lit8 v10, v10, 0x3

    .line 80
    .line 81
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    sget v10, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 92
    .line 93
    int-to-float v10, v10

    .line 94
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 95
    .line 96
    int-to-float v11, v11

    .line 97
    invoke-virtual {v8, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .line 105
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 106
    .line 107
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    .line 112
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 113
    .line 114
    const/4 v12, 0x2

    .line 115
    mul-int/2addr v11, v12

    .line 116
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 127
    .line 128
    int-to-float v11, v11

    .line 129
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 130
    .line 131
    int-to-float v13, v13

    .line 132
    invoke-virtual {v10, v11, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 141
    .line 142
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    .line 144
    .line 145
    iput v9, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    .line 147
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 148
    .line 149
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 160
    .line 161
    int-to-float v13, v13

    .line 162
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 163
    .line 164
    int-to-float v14, v14

    .line 165
    invoke-virtual {v11, v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 169
    .line 170
    .line 171
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .line 173
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 174
    .line 175
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    iput v9, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    .line 180
    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    new-instance v9, Lcom/mycompany/app/view/MyRoundFrame;

    .line 184
    .line 185
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 189
    .line 190
    const/4 v14, -0x2

    .line 191
    const/4 v15, -0x1

    .line 192
    invoke-direct {v13, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 193
    .line 194
    .line 195
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 196
    .line 197
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 198
    .line 199
    invoke-virtual {v0, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    new-instance v13, Landroid/view/View;

    .line 203
    .line 204
    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    const/high16 v14, 0x43300000    # 176.0f

    .line 208
    .line 209
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    float-to-int v14, v14

    .line 214
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    .line 216
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 217
    .line 218
    invoke-direct {v5, v14, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    const/4 v4, 0x1

    .line 222
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    .line 224
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 225
    .line 226
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    .line 228
    invoke-virtual {v9, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Landroid/widget/LinearLayout;

    .line 232
    .line 233
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    .line 242
    .line 243
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 244
    .line 245
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 246
    .line 247
    invoke-direct {v14, v15, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    const/high16 v12, 0x41c00000    # 24.0f

    .line 251
    .line 252
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    float-to-int v12, v12

    .line 257
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 258
    .line 259
    invoke-virtual {v9, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 263
    .line 264
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    const/16 v14, 0x11

    .line 268
    .line 269
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    .line 271
    .line 272
    const/high16 v15, 0x41900000    # 18.0f

    .line 273
    .line 274
    invoke-virtual {v12, v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 278
    .line 279
    .line 280
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 281
    .line 282
    int-to-float v15, v15

    .line 283
    const/high16 v17, 0x40000000    # 2.0f

    .line 284
    .line 285
    div-float v15, v15, v17

    .line 286
    .line 287
    float-to-int v15, v15

    .line 288
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 289
    .line 290
    .line 291
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 292
    .line 293
    invoke-virtual {v5, v12, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 294
    .line 295
    .line 296
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 297
    .line 298
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v15, v7}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 308
    .line 309
    invoke-virtual {v5, v15, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 313
    .line 314
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    .line 319
    .line 320
    const/4 v14, 0x2

    .line 321
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 322
    .line 323
    .line 324
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 325
    .line 326
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v18, v11

    .line 330
    .line 331
    const/high16 v11, 0x41800000    # 16.0f

    .line 332
    .line 333
    invoke-virtual {v7, v4, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 334
    .line 335
    .line 336
    sget v11, Lnet/kaki87/soul2/testing/R$string;->original:I

    .line 337
    .line 338
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    .line 339
    .line 340
    .line 341
    iput-boolean v4, v7, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 342
    .line 343
    iput-boolean v4, v7, Lcom/mycompany/app/view/MyLineText;->p:Z

    .line 344
    .line 345
    iput-boolean v4, v7, Lcom/mycompany/app/view/MyLineText;->q:Z

    .line 346
    .line 347
    const/high16 v11, 0x3f000000    # 0.5f

    .line 348
    .line 349
    iput v11, v7, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 350
    .line 351
    new-instance v11, Landroid/graphics/Paint;

    .line 352
    .line 353
    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 354
    .line 355
    .line 356
    iput-object v11, v7, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 357
    .line 358
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    .line 360
    .line 361
    iget-object v11, v7, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 362
    .line 363
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 364
    .line 365
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    .line 367
    .line 368
    iget-object v4, v7, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 369
    .line 370
    const v11, -0x8a8a8b

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    .line 375
    .line 376
    iget-object v4, v7, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 377
    .line 378
    const/high16 v11, 0x3f800000    # 1.0f

    .line 379
    .line 380
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 381
    .line 382
    .line 383
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 384
    .line 385
    move-object/from16 v16, v8

    .line 386
    .line 387
    move-object/from16 v19, v10

    .line 388
    .line 389
    const/4 v8, -0x1

    .line 390
    const/4 v10, 0x0

    .line 391
    invoke-direct {v4, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .line 393
    .line 394
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 395
    .line 396
    invoke-virtual {v5, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    .line 398
    .line 399
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 400
    .line 401
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    const/16 v11, 0x11

    .line 405
    .line 406
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 407
    .line 408
    .line 409
    const/4 v11, 0x2

    .line 410
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 414
    .line 415
    .line 416
    const/high16 v11, 0x41800000    # 16.0f

    .line 417
    .line 418
    const/4 v14, 0x1

    .line 419
    invoke-virtual {v4, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 420
    .line 421
    .line 422
    sget v11, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 423
    .line 424
    invoke-static {v4, v11, v1, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    const/high16 v10, 0x3f800000    # 1.0f

    .line 429
    .line 430
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 431
    .line 432
    invoke-virtual {v5, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    .line 434
    .line 435
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 436
    .line 437
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 441
    .line 442
    .line 443
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 444
    .line 445
    invoke-virtual {v5, v8, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 446
    .line 447
    .line 448
    iput-object v9, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 449
    .line 450
    iput-object v13, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->i:Landroid/view/View;

    .line 451
    .line 452
    iput-object v7, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 453
    .line 454
    iput-object v4, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 455
    .line 456
    iput-object v8, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 457
    .line 458
    iput-object v12, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 459
    .line 460
    iput-object v15, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 461
    .line 462
    iput-object v2, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 463
    .line 464
    iput-object v6, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 465
    .line 466
    move-object/from16 v1, v16

    .line 467
    .line 468
    iput-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 469
    .line 470
    move-object/from16 v1, v19

    .line 471
    .line 472
    iput-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 473
    .line 474
    move-object/from16 v1, v18

    .line 475
    .line 476
    iput-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    new-instance v1, Lcom/mycompany/app/web/WebTransOcrCtrl$1;

    .line 479
    .line 480
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$1;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 487
    .line 488
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$2;

    .line 489
    .line 490
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$2;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 497
    .line 498
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$3;

    .line 499
    .line 500
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$3;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 507
    .line 508
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$4;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$4;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 517
    .line 518
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$5;

    .line 519
    .line 520
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$5;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 527
    .line 528
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$6;

    .line 529
    .line 530
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$6;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 537
    .line 538
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$7;

    .line 539
    .line 540
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$7;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 547
    .line 548
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$8;

    .line 549
    .line 550
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$8;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    .line 555
    .line 556
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 557
    .line 558
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$9;

    .line 559
    .line 560
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$9;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    .line 565
    .line 566
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 567
    .line 568
    new-instance v2, Lcom/mycompany/app/web/WebTransOcrCtrl$10;

    .line 569
    .line 570
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTransOcrCtrl$10;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    .line 575
    .line 576
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 577
    .line 578
    if-nez v1, :cond_1

    .line 579
    .line 580
    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTransOcrCtrl;->f()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTransOcrCtrl;->g()V

    .line 585
    .line 586
    .line 587
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 588
    .line 589
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 590
    .line 591
    const/high16 v3, -0x1000000

    .line 592
    .line 593
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRoundFrame;->c(II)V

    .line 594
    .line 595
    .line 596
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 597
    .line 598
    const v2, -0x3f8a8a8b

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundFrame;->setBgOutColor(I)V

    .line 602
    .line 603
    .line 604
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->i:Landroid/view/View;

    .line 605
    .line 606
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_white:I

    .line 607
    .line 608
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 609
    .line 610
    .line 611
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 612
    .line 613
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 614
    .line 615
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 616
    .line 617
    .line 618
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 619
    .line 620
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 621
    .line 622
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 623
    .line 624
    .line 625
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 626
    .line 627
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_dark_24:I

    .line 628
    .line 629
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 630
    .line 631
    .line 632
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 633
    .line 634
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_20:I

    .line 635
    .line 636
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 637
    .line 638
    .line 639
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 640
    .line 641
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 642
    .line 643
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 644
    .line 645
    .line 646
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 647
    .line 648
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_dark_24:I

    .line 649
    .line 650
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 651
    .line 652
    .line 653
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 654
    .line 655
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_center_focus_strong_dark_24:I

    .line 656
    .line 657
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 658
    .line 659
    .line 660
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 661
    .line 662
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I

    .line 663
    .line 664
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 665
    .line 666
    .line 667
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 668
    .line 669
    const v2, -0xc0c0c1

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 673
    .line 674
    .line 675
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 678
    .line 679
    .line 680
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 681
    .line 682
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 683
    .line 684
    .line 685
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 686
    .line 687
    const v2, -0x50506

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    .line 692
    .line 693
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 694
    .line 695
    sget v2, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 696
    .line 697
    int-to-float v2, v2

    .line 698
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 699
    .line 700
    .line 701
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->h:Lcom/mycompany/app/view/MyRoundFrame;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    if-eqz v0, :cond_a

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    if-eqz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->r:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    if-eqz v0, :cond_c

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->i:Landroid/view/View;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->B:Ljava/lang/String;

    .line 129
    .line 130
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->t:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 12
    .line 13
    sub-int/2addr p1, v1

    .line 14
    div-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->u:I

    .line 17
    .line 18
    sub-int v3, p1, v2

    .line 19
    .line 20
    div-int/lit8 v3, v3, 0x2

    .line 21
    .line 22
    add-int/2addr v3, p1

    .line 23
    add-int p1, v3, v2

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    sub-int/2addr p2, v1

    .line 29
    sub-int v1, p2, v2

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1, p1, p2}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->j:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->A:Z

    .line 7
    .line 8
    const v2, -0x50506

    .line 9
    .line 10
    .line 11
    const v3, -0x3e3e3f

    .line 12
    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->k:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->A:I

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lcom/mycompany/app/web/WebTransOcrCtrl;->getTransCap()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->m:Lcom/mycompany/app/view/MyButtonText;

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final h(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->A:Z

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->A:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebTransOcrCtrl;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->setTransLang(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/mycompany/app/web/WebTransOcrCtrl;->setTransLoad(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->z:Z

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->w:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->x:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->C:F

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->D:Z

    .line 30
    .line 31
    new-array p1, v0, [F

    .line 32
    .line 33
    fill-array-data p1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    iput p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->C:F

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->D:Z

    .line 51
    .line 52
    new-array p1, v0, [F

    .line 53
    .line 54
    fill-array-data p1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    const-wide/16 v0, 0xc8

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/web/WebTransOcrCtrl$12;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransOcrCtrl$12;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/web/WebTransOcrCtrl$13;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebTransOcrCtrl$13;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebTransOcrCtrl;->e(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 2
    .line 3
    return-void
.end method

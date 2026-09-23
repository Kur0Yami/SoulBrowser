.class public Lcom/mycompany/app/dialog/DialogVideoMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/web/WebViewActivity;

.field public b:Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;

.field public c:Lcom/mycompany/app/view/MyWebBody;

.field public d:Landroid/view/View;

.field public final e:Z

.field public final f:Z

.field public g:Lcom/mycompany/app/view/MyRoundLinear;

.field public h:Landroid/widget/FrameLayout;

.field public i:Lcom/mycompany/app/view/MyRoundLinear;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Lcom/mycompany/app/view/MyButtonImage;

.field public l:Lcom/mycompany/app/view/MyButtonImage;

.field public m:Lcom/mycompany/app/view/MyButtonImage;

.field public n:I

.field public o:I

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public r:F

.field public s:Z

.field public final t:Ljava/lang/Runnable;

.field public u:F

.field public v:Z

.field public final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/view/MyWebBody;Landroid/view/View;ZZLcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogVideoMenu$16;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$16;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->t:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogVideoMenu$20;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$20;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->w:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->b:Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->d:Landroid/view/View;

    .line 25
    .line 26
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->e:Z

    .line 27
    .line 28
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->f:Z

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Lcom/mycompany/app/dialog/DialogVideoMenu$1;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$1;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static a(Lcom/mycompany/app/dialog/DialogVideoMenu;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->d:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 13
    .line 14
    new-instance v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->h:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$12;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$12;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->h:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoMenu;->d()Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$13;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$13;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$11;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$11;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Lcom/mycompany/app/dialog/DialogVideoMenu;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

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
.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->n:I

    .line 12
    .line 13
    int-to-float v2, v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->o:I

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
    iput v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->u:F

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->v:Z

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    const-wide/16 v1, 0xc8

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$18;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$18;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoMenu$19;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoMenu$19;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

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

.method public final d()Landroid/widget/FrameLayout$LayoutParams;
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->o:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->p:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->q:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xd0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x90

    .line 21
    .line 22
    :goto_0
    const/4 v2, 0x2

    .line 23
    new-array v3, v2, [I

    .line 24
    .line 25
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aget v5, v3, v4

    .line 32
    .line 33
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    add-int/2addr v6, v5

    .line 40
    const/4 v5, 0x1

    .line 41
    aget v7, v3, v5

    .line 42
    .line 43
    iget-object v8, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 44
    .line 45
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    add-int/2addr v8, v7

    .line 50
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v9, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 57
    .line 58
    invoke-virtual {v9}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    iget-object v10, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->d:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v10, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 65
    .line 66
    .line 67
    aget v10, v3, v4

    .line 68
    .line 69
    sub-int/2addr v10, v6

    .line 70
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 71
    .line 72
    div-int/2addr v6, v2

    .line 73
    add-int/2addr v6, v10

    .line 74
    aget v3, v3, v5

    .line 75
    .line 76
    sub-int/2addr v3, v8

    .line 77
    iget-object v8, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 78
    .line 79
    int-to-float v1, v1

    .line 80
    invoke-static {v8, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 89
    .line 90
    div-int/lit8 v10, v1, 0x2

    .line 91
    .line 92
    sub-int v10, v6, v10

    .line 93
    .line 94
    add-int v11, v10, v1

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    sget v0, Lcom/mycompany/app/pref/PrefZone;->r:I

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->n:I

    .line 102
    .line 103
    :goto_1
    if-ne v0, v5, :cond_2

    .line 104
    .line 105
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 106
    .line 107
    add-int/2addr v3, v0

    .line 108
    add-int v0, v3, v8

    .line 109
    .line 110
    move v5, v3

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 113
    .line 114
    add-int/2addr v0, v3

    .line 115
    sub-int v5, v0, v8

    .line 116
    .line 117
    move v12, v5

    .line 118
    move v5, v3

    .line 119
    move v3, v12

    .line 120
    :goto_2
    if-gez v10, :cond_3

    .line 121
    .line 122
    move v11, v1

    .line 123
    move v10, v4

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    if-le v11, v7, :cond_4

    .line 126
    .line 127
    sub-int v10, v7, v1

    .line 128
    .line 129
    move v11, v7

    .line 130
    :cond_4
    :goto_3
    if-gez v3, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    if-le v0, v9, :cond_6

    .line 134
    .line 135
    sub-int v4, v9, v8

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    move v4, v3

    .line 139
    :goto_4
    sub-int/2addr v6, v10

    .line 140
    iput v6, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->n:I

    .line 141
    .line 142
    if-nez v4, :cond_7

    .line 143
    .line 144
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    div-int/2addr v0, v2

    .line 147
    add-int/2addr v0, v5

    .line 148
    iput v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->o:I

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    sub-int/2addr v5, v4

    .line 152
    iput v5, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->o:I

    .line 153
    .line 154
    :goto_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    invoke-direct {v0, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    .line 158
    .line 159
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->f:Z

    .line 160
    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    sub-int/2addr v7, v11

    .line 164
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_8
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 168
    .line 169
    :goto_6
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 170
    .line 171
    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->h:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->h:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->b:Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;->a()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->b:Lcom/mycompany/app/dialog/DialogVideoMenu$VideoMenuListener;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->i:Lcom/mycompany/app/view/MyRoundLinear;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu;->d:Landroid/view/View;

    .line 79
    .line 80
    return-void
.end method

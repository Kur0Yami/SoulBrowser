.class public Lcom/mycompany/app/dialog/DialogMenuList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/animation/ValueAnimator;

.field public B:Landroid/animation/ValueAnimator;

.field public C:Lcom/mycompany/app/view/MyPopupMenu;

.field public D:Z

.field public final E:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

.field public F:F

.field public G:Z

.field public final H:Ljava/lang/Runnable;

.field public I:F

.field public J:Z

.field public final K:Ljava/lang/Runnable;

.field public a:Lcom/mycompany/app/web/WebViewActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

.field public final d:Lcom/mycompany/app/view/MyWebBody;

.field public e:Landroid/view/View;

.field public f:[I

.field public g:[I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public k:I

.field public final l:Z

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/widget/FrameLayout;

.field public o:Lcom/mycompany/app/view/MyRoundLinear;

.field public p:Lcom/mycompany/app/view/MyButtonImage;

.field public q:Lcom/mycompany/app/view/MyButtonImage;

.field public r:Landroidx/appcompat/widget/AppCompatTextView;

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public t:Lcom/mycompany/app/view/MyButtonImage;

.field public u:Lcom/mycompany/app/view/MyButtonImage;

.field public v:Lcom/mycompany/app/view/MyRecyclerView;

.field public w:Lcom/mycompany/app/main/MenuListAdapter;

.field public x:Lcom/mycompany/app/view/MyBarView;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/content/Context;Lcom/mycompany/app/view/MyWebBody;Landroid/view/View;[I[IZZZIZLcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogMenuList$18;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogMenuList$18;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->E:Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogMenuList$21;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogMenuList$21;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->H:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogMenuList$25;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogMenuList$25;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->K:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 28
    .line 29
    iput-object p12, p0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogMenuList;->d:Lcom/mycompany/app/view/MyWebBody;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogMenuList;->e:Landroid/view/View;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogMenuList;->f:[I

    .line 36
    .line 37
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogMenuList;->g:[I

    .line 38
    .line 39
    iput-boolean p7, p0, Lcom/mycompany/app/dialog/DialogMenuList;->h:Z

    .line 40
    .line 41
    iput-boolean p8, p0, Lcom/mycompany/app/dialog/DialogMenuList;->i:Z

    .line 42
    .line 43
    iput-boolean p9, p0, Lcom/mycompany/app/dialog/DialogMenuList;->j:Z

    .line 44
    .line 45
    iput p10, p0, Lcom/mycompany/app/dialog/DialogMenuList;->k:I

    .line 46
    .line 47
    iput-boolean p11, p0, Lcom/mycompany/app/dialog/DialogMenuList;->l:Z

    .line 48
    .line 49
    if-nez p3, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p1, Lcom/mycompany/app/dialog/DialogMenuList$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogMenuList$1;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static a(Lcom/mycompany/app/dialog/DialogMenuList;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogMenuList;->d()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->y:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 23
    .line 24
    iget v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->z:I

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 28
    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    iput v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->I:F

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->J:Z

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [F

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    const-wide/16 v1, 0xc8

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuList$23;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogMenuList$23;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuList$24;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogMenuList$24;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->A:Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->B:Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    return v0

    .line 95
    :cond_2
    :goto_0
    return v1

    .line 96
    nop

    .line 97
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c()Landroid/widget/FrameLayout$LayoutParams;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [I

    .line 11
    .line 12
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogMenuList;->d:Lcom/mycompany/app/view/MyWebBody;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    aget v5, v3, v1

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    add-int/2addr v6, v5

    .line 24
    const/4 v5, 0x1

    .line 25
    aget v7, v3, v5

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    add-int/2addr v8, v7

    .line 32
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v9, p0, Lcom/mycompany/app/dialog/DialogMenuList;->e:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v9, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    aget v9, v3, v1

    .line 46
    .line 47
    sub-int/2addr v9, v6

    .line 48
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogMenuList;->e:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    div-int/2addr v6, v2

    .line 55
    add-int/2addr v6, v9

    .line 56
    aget v3, v3, v5

    .line 57
    .line 58
    sub-int/2addr v3, v8

    .line 59
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogMenuList;->e:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    div-int/2addr v5, v2

    .line 66
    add-int/2addr v5, v3

    .line 67
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 68
    .line 69
    const/16 v3, 0x9

    .line 70
    .line 71
    if-ge v0, v3, :cond_1

    .line 72
    .line 73
    const/high16 v0, 0x43740000    # 244.0f

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/high16 v0, 0x438e0000    # 284.0f

    .line 77
    .line 78
    :goto_1
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    float-to-int v0, v0

    .line 83
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->j:Z

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    sub-int v2, v6, v0

    .line 88
    .line 89
    if-gez v2, :cond_2

    .line 90
    .line 91
    move v2, v1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move v0, v6

    .line 94
    :goto_2
    if-le v0, v7, :cond_5

    .line 95
    .line 96
    move v0, v7

    .line 97
    goto :goto_4

    .line 98
    :cond_3
    add-int v2, v6, v0

    .line 99
    .line 100
    if-le v2, v7, :cond_4

    .line 101
    .line 102
    sub-int v0, v7, v0

    .line 103
    .line 104
    move v2, v0

    .line 105
    move v0, v7

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v0, v2

    .line 108
    move v2, v6

    .line 109
    :goto_3
    if-gez v2, :cond_5

    .line 110
    .line 111
    move v2, v1

    .line 112
    :cond_5
    :goto_4
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogMenuList;->h:Z

    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    move v3, v4

    .line 117
    move v1, v5

    .line 118
    goto :goto_5

    .line 119
    :cond_6
    if-le v5, v4, :cond_7

    .line 120
    .line 121
    move v3, v4

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    move v3, v5

    .line 124
    :goto_5
    sub-int/2addr v6, v2

    .line 125
    iput v6, p0, Lcom/mycompany/app/dialog/DialogMenuList;->y:I

    .line 126
    .line 127
    sub-int/2addr v5, v1

    .line 128
    iput v5, p0, Lcom/mycompany/app/dialog/DialogMenuList;->z:I

    .line 129
    .line 130
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .line 132
    const/4 v6, -0x1

    .line 133
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    sub-int/2addr v7, v0

    .line 137
    sub-int/2addr v4, v3

    .line 138
    invoke-virtual {v5, v2, v1, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 139
    .line 140
    .line 141
    return-object v5
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->C:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->C:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->n:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuList;->d:Lcom/mycompany/app/view/MyWebBody;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->n:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->m:Landroid/view/ViewGroup;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->n:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->c:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 41
    .line 42
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 88
    .line 89
    if-eqz v0, :cond_a

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 95
    .line 96
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->w:Lcom/mycompany/app/main/MenuListAdapter;

    .line 97
    .line 98
    if-eqz v0, :cond_b

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuListAdapter;->d()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, v0, Lcom/mycompany/app/main/MenuListAdapter;->f:I

    .line 105
    .line 106
    iput-object v1, v0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 107
    .line 108
    iput-object v1, v0, Lcom/mycompany/app/main/MenuListAdapter;->e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->w:Lcom/mycompany/app/main/MenuListAdapter;

    .line 111
    .line 112
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyBarView;->d()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->x:Lcom/mycompany/app/view/MyBarView;

    .line 120
    .line 121
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->e:Landroid/view/View;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->f:[I

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->g:[I

    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    return-void
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->k:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->D:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->D:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogMenuList$10;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogMenuList$10;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

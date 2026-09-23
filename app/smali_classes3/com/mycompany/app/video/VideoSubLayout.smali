.class public Lcom/mycompany/app/video/VideoSubLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/video/VideoActivity;

.field public f:Lcom/mycompany/app/main/MainActivity;

.field public g:Landroid/view/View;

.field public h:Landroidx/appcompat/widget/AppCompatTextView;

.field public i:Lcom/mycompany/app/view/MyTextSub;

.field public j:Landroidx/appcompat/widget/AppCompatTextView;

.field public k:Landroid/animation/ValueAnimator;

.field public l:Landroid/view/ViewGroup$MarginLayoutParams;

.field public m:Z

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:F

.field public s:Z

.field public final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/video/VideoSubLayout$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoSubLayout$3;-><init>(Lcom/mycompany/app/video/VideoSubLayout;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->t:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 12
    .line 13
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/video/VideoSubLayout;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/video/VideoSubLayout;->getPrefPos()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/video/VideoSubLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/video/VideoSubLayout;->setSubLayout(I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/video/VideoSubLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/video/VideoSubLayout;->setValAnimHide(F)V

    return-void
.end method

.method private getPrefPos()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->f:Lcom/mycompany/app/main/MainActivity;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget v0, Lcom/mycompany/app/pref/PrefSub;->m:I

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefSub;->l:I

    .line 28
    .line 29
    return v0
.end method

.method private setSubLayout(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 19
    .line 20
    if-ne v1, p1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
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


# virtual methods
.method public final d(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/video/VideoSubLayout$5;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/video/VideoSubLayout$5;-><init>(Lcom/mycompany/app/video/VideoSubLayout;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/16 v0, 0x21

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    new-instance p2, Landroid/text/SpannableString;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 24
    .line 25
    const v3, 0x64ffffff

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p2, v2, v1, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance p2, Landroid/text/SpannableString;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    .line 57
    .line 58
    sget v3, Lcom/mycompany/app/pref/PrefSub;->v:I

    .line 59
    .line 60
    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2, v2, v1, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    sget p2, Lcom/mycompany/app/pref/PrefSub;->u:I

    .line 78
    .line 79
    rsub-int/lit8 p2, p2, 0x64

    .line 80
    .line 81
    int-to-float p2, p2

    .line 82
    const/high16 v0, 0x42c80000    # 100.0f

    .line 83
    .line 84
    div-float/2addr p2, v0

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/mycompany/app/video/VideoSubLayout;->getPrefPos()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoSubLayout;->setSubLayout(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/video/VideoSubLayout;->d(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mycompany/app/video/VideoSubLayout;->getPrefPos()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-direct {p0, v0}, Lcom/mycompany/app/video/VideoSubLayout;->setSubLayout(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g(I)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    .line 21
    sub-int/2addr v0, p1

    .line 22
    const/4 p1, 0x0

    .line 23
    if-gez v0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v1, p1, p1}, Landroid/view/View;->measure(II)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    sub-int/2addr v2, v1

    .line 54
    if-le v0, v2, :cond_3

    .line 55
    .line 56
    move v0, v2

    .line 57
    :cond_3
    if-gez v0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    move p1, v0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    .line 63
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    .line 65
    if-ne p1, v0, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-direct {p0, p1}, Lcom/mycompany/app/video/VideoSubLayout;->setSubLayout(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSubLayout;->getSubBottom()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_6
    :goto_1
    const/4 p1, -0x1

    .line 77
    return p1
.end method

.method public getSubBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->l:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/mycompany/app/video/VideoSubLayout;->getPrefPos()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_1
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 23
    .line 24
    return v0
.end method

.method public final h(FII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    if-lez p2, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/view/MyTextSub;->q(II)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 65
    .line 66
    if-lez p2, :cond_3

    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/16 p2, 0x8

    .line 71
    .line 72
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSubLayout;->f()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/video/VideoSubLayout;->e(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/video/VideoSubLayout;->e(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSub;->t:Z

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const/16 v1, 0x8

    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->M(Ljava/lang/String;)Landroid/text/Spanned;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v2, :cond_6

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v3, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    :goto_1
    return-void

    .line 67
    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    .line 69
    iput p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->r:F

    .line 70
    .line 71
    iput-boolean v4, p0, Lcom/mycompany/app/video/VideoSubLayout;->s:Z

    .line 72
    .line 73
    const/4 p1, 0x2

    .line 74
    new-array p1, p1, [F

    .line 75
    .line 76
    fill-array-data p1, :array_0

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    const-wide/16 v0, 0x190

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    new-instance v0, Lcom/mycompany/app/video/VideoSubLayout$1;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoSubLayout$1;-><init>(Lcom/mycompany/app/video/VideoSubLayout;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    new-instance v0, Lcom/mycompany/app/video/VideoSubLayout$2;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoSubLayout$2;-><init>(Lcom/mycompany/app/video/VideoSubLayout;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSub;->k:Z

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Lcom/mycompany/app/video/VideoSubLayout;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :cond_7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSub;->t:Z

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0, v1, v4}, Lcom/mycompany/app/video/VideoSubLayout;->e(Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :goto_2
    sget v0, Lcom/mycompany/app/pref/PrefSub;->o:I

    .line 142
    .line 143
    if-lez v0, :cond_9

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSubLayout;->f()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTextLine(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-lez p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyTextSub;->setOutlineWidth(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 48
    .line 49
    if-lez p1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/16 p1, 0x8

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/video/VideoSubLayout;->f()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/video/VideoSubLayout;->k:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v0, 0x8

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->i:Lcom/mycompany/app/view/MyTextSub;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public setWindow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/video/VideoSubLayout;->q:Z

    .line 2
    .line 3
    return-void
.end method

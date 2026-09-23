.class public Lcom/mycompany/app/dialog/DialogInfo;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;
    }
.end annotation


# static fields
.field public static final synthetic V0:I


# instance fields
.field public A0:Landroid/widget/LinearLayout;

.field public B0:Landroidx/appcompat/widget/AppCompatTextView;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Landroid/widget/LinearLayout;

.field public E0:Landroidx/appcompat/widget/AppCompatTextView;

.field public F0:Landroidx/appcompat/widget/AppCompatTextView;

.field public G0:Landroid/widget/LinearLayout;

.field public H0:Landroidx/appcompat/widget/AppCompatTextView;

.field public I0:Landroidx/appcompat/widget/AppCompatTextView;

.field public J0:Landroid/widget/LinearLayout;

.field public K0:Landroidx/appcompat/widget/AppCompatTextView;

.field public L0:Landroidx/appcompat/widget/AppCompatTextView;

.field public M0:Lcom/mycompany/app/main/MainListLoader;

.field public N0:Lcom/bumptech/glide/load/model/GlideUrl;

.field public O0:Lcom/mycompany/app/view/GlideRequests;

.field public P0:Z

.field public Q0:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public final S0:Lcom/bumptech/glide/request/RequestListener;

.field public final T0:Lcom/bumptech/glide/request/RequestListener;

.field public final U0:Lcom/bumptech/glide/request/RequestListener;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public final c0:I

.field public d0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final e0:Z

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Lcom/mycompany/app/view/MyLineFrame;

.field public h0:Lcom/mycompany/app/view/MyRoundImage;

.field public i0:Lcom/mycompany/app/view/MyRoundImage;

.field public j0:Lcom/mycompany/app/view/MyRoundImage;

.field public k0:Lcom/mycompany/app/view/MyCoverView;

.field public l0:Landroid/widget/LinearLayout;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroid/widget/LinearLayout;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Landroid/widget/LinearLayout;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Landroid/widget/LinearLayout;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroid/widget/LinearLayout;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$8;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogInfo$8;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->S0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$11;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogInfo$11;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->T0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$13;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogInfo$13;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->U0:Lcom/bumptech/glide/request/RequestListener;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 32
    .line 33
    iput p2, p0, Lcom/mycompany/app/dialog/DialogInfo;->c0:I

    .line 34
    .line 35
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 36
    .line 37
    const/16 p1, 0x11

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    if-eq p2, p1, :cond_1

    .line 41
    .line 42
    const/16 p1, 0x12

    .line 43
    .line 44
    if-eq p2, p1, :cond_1

    .line 45
    .line 46
    const/16 p1, 0x13

    .line 47
    .line 48
    if-eq p2, p1, :cond_1

    .line 49
    .line 50
    const/16 p1, 0x14

    .line 51
    .line 52
    if-eq p2, p1, :cond_1

    .line 53
    .line 54
    const/16 p1, 0x15

    .line 55
    .line 56
    if-eq p2, p1, :cond_1

    .line 57
    .line 58
    const/16 p1, 0x16

    .line 59
    .line 60
    if-eq p2, p1, :cond_1

    .line 61
    .line 62
    const/16 p1, 0x17

    .line 63
    .line 64
    if-eq p2, p1, :cond_1

    .line 65
    .line 66
    const/16 p1, 0x1c

    .line 67
    .line 68
    if-eq p2, p1, :cond_1

    .line 69
    .line 70
    const/16 p1, 0x1d

    .line 71
    .line 72
    if-eq p2, p1, :cond_1

    .line 73
    .line 74
    const/16 p1, 0x1e

    .line 75
    .line 76
    if-eq p2, p1, :cond_1

    .line 77
    .line 78
    const/16 p1, 0x23

    .line 79
    .line 80
    if-eq p2, p1, :cond_1

    .line 81
    .line 82
    const/16 p1, 0x24

    .line 83
    .line 84
    if-ne p2, p1, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/16 p1, 0x19

    .line 88
    .line 89
    if-ne p2, p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 103
    .line 104
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 105
    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogInfo$1;

    .line 110
    .line 111
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogInfo$1;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 20
    .line 21
    iget v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 22
    .line 23
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 24
    .line 25
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    iget v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 42
    .line 43
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 44
    .line 45
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogInfo;->F()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->P0:Z

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move-object v2, v0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->N0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 103
    .line 104
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$9;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogInfo$9;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez v0, :cond_5

    .line 24
    .line 25
    if-gtz p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 35
    .line 36
    mul-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    if-gtz v1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    int-to-float v0, v0

    .line 43
    int-to-float p1, p1

    .line 44
    div-float/2addr v0, p1

    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 46
    .line 47
    const/high16 v2, 0x430c0000    # 140.0f

    .line 48
    .line 49
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    int-to-float v2, p1

    .line 55
    mul-float/2addr v2, v0

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-le v0, v1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move v1, v0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v2, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 81
    .line 82
    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->i0:Lcom/mycompany/app/view/MyRoundImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public static D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v5, -0x2

    .line 27
    invoke-virtual {p1, v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    const/high16 p1, 0x41600000    # 14.0f

    .line 31
    .line 32
    invoke-static {p0, v0, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-direct {v3, p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    .line 43
    .line 44
    sget p0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 45
    .line 46
    invoke-virtual {v3, v4, p0, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    const/high16 p0, 0x41800000    # 16.0f

    .line 50
    .line 51
    invoke-virtual {v3, v2, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    return-object p0
.end method


# virtual methods
.method public final E(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 21
    .line 22
    iget v2, p0, Lcom/mycompany/app/dialog/DialogInfo;->c0:I

    .line 23
    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    const/16 v1, 0x20

    .line 27
    .line 28
    if-ne v2, v1, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 31
    .line 32
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    if-ne v1, v3, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 40
    .line 41
    const/high16 v2, 0x430c0000    # 140.0f

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-float v2, v2

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    div-float/2addr v2, p1

    .line 65
    mul-float/2addr v2, v1

    .line 66
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    :goto_1
    const/16 p1, 0x23

    .line 74
    .line 75
    if-ne v2, p1, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 78
    .line 79
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 89
    .line 90
    .line 91
    :goto_2
    sget p1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 92
    .line 93
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    .line 97
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->P0:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->N0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 27
    .line 28
    new-instance v0, Lcom/mycompany/app/dialog/DialogInfo$12;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogInfo$12;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->O0:Lcom/mycompany/app/view/GlideRequests;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogInfo;->O0:Lcom/mycompany/app/view/GlideRequests;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->O0:Lcom/mycompany/app/view/GlideRequests;

    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 58
    .line 59
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 67
    .line 68
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 76
    .line 77
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo;->M0:Lcom/mycompany/app/main/MainListLoader;

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->M0:Lcom/mycompany/app/main/MainListLoader;

    .line 85
    .line 86
    :cond_9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->l0:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->o0:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->r0:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->x0:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->A0:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->D0:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->G0:Landroid/widget/LinearLayout;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->J0:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->N0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->Q0:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo;->R0:Ljava/lang/String;

    .line 153
    .line 154
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

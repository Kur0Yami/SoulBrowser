.class public Lcom/mycompany/app/dialog/DialogBlockImage;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic E0:I


# instance fields
.field public A0:Z

.field public B0:Lcom/mycompany/app/web/WebClean;

.field public final C0:Lcom/bumptech/glide/request/RequestListener;

.field public final D0:Lcom/bumptech/glide/request/RequestListener;

.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Lcom/mycompany/app/view/MyDialogRelative;

.field public h0:Lcom/mycompany/app/view/MyLineFrame;

.field public i0:Lcom/mycompany/app/view/MyRoundImage;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyRoundImage;

.field public l0:Lcom/mycompany/app/view/MyRoundImage;

.field public m0:Lcom/mycompany/app/view/MyRecyclerView;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public p0:Lcom/bumptech/glide/load/model/GlideUrl;

.field public q0:Lcom/mycompany/app/view/GlideRequests;

.field public r0:Z

.field public s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

.field public t0:Lcom/mycompany/app/dialog/DialogListBook;

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogBlockImage$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogBlockImage$9;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->C0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogBlockImage$11;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogBlockImage$11;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->D0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->e0:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogBlockImage$1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogBlockImage$1;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogBlockImage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x70708

    .line 7
    .line 8
    .line 9
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBlockImage;->E()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->r0:Z

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, v0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->p0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->p0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 62
    .line 63
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogBlockImage$8;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogBlockImage$8;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogBlockImage;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->l0:Lcom/mycompany/app/view/MyRoundImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final D(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->e0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebClean;->U(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebClean;->T(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    move v6, v0

    .line 29
    move v12, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    move v6, v0

    .line 33
    move v12, v6

    .line 34
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 35
    .line 36
    if-eq v0, v6, :cond_2

    .line 37
    .line 38
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->item_block_site:I

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 57
    .line 58
    if-eq v0, v12, :cond_3

    .line 59
    .line 60
    iput-boolean v12, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 63
    .line 64
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 65
    .line 66
    sget v9, Lnet/kaki87/soul2/testing/R$string;->item_block_page:I

    .line 67
    .line 68
    const/4 v13, 0x1

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v8, 0x2

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v7}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->r0:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->p0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->p0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 32
    .line 33
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogBlockImage$10;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogBlockImage$10;-><init>(Lcom/mycompany/app/dialog/DialogBlockImage;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final dismiss()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->s0:Lcom/mycompany/app/dialog/DialogBlockImage$DialogTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->t0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 27
    .line 28
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 29
    .line 30
    if-eqz v4, :cond_8

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->u0:Z

    .line 33
    .line 34
    if-nez v3, :cond_4

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->v0:Z

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move v3, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    :goto_0
    move v3, v2

    .line 44
    :goto_1
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->z0:Z

    .line 45
    .line 46
    if-eq v5, v3, :cond_5

    .line 47
    .line 48
    move v5, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_5
    move v5, v0

    .line 51
    :goto_2
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->w0:Z

    .line 52
    .line 53
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 54
    .line 55
    if-eq v6, v7, :cond_6

    .line 56
    .line 57
    move v6, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_6
    move v6, v0

    .line 60
    :goto_3
    if-eqz v3, :cond_7

    .line 61
    .line 62
    if-eqz v5, :cond_7

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->A0:Z

    .line 65
    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 69
    .line 70
    move-object v10, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_7
    move-object v10, v1

    .line 73
    :goto_4
    iget-boolean v7, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->x0:Z

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->y0:Z

    .line 76
    .line 77
    xor-int/lit8 v8, v0, 0x1

    .line 78
    .line 79
    iget-boolean v9, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->A0:Z

    .line 80
    .line 81
    invoke-interface/range {v4 .. v10}, Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;->a(ZZZZZLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->c0:Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;

    .line 85
    .line 86
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->q0:Lcom/mycompany/app/view/GlideRequests;

    .line 87
    .line 88
    if-eqz v0, :cond_b

    .line 89
    .line 90
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->q0:Lcom/mycompany/app/view/GlideRequests;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->q0:Lcom/mycompany/app/view/GlideRequests;

    .line 107
    .line 108
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 109
    .line 110
    if-eqz v0, :cond_c

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 116
    .line 117
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 118
    .line 119
    if-eqz v0, :cond_d

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->h0:Lcom/mycompany/app/view/MyLineFrame;

    .line 125
    .line 126
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 127
    .line 128
    if-eqz v0, :cond_e

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 134
    .line 135
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    if-eqz v0, :cond_f

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 140
    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 145
    .line 146
    if-eqz v0, :cond_10

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 149
    .line 150
    .line 151
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->k0:Lcom/mycompany/app/view/MyRoundImage;

    .line 152
    .line 153
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 154
    .line 155
    if-eqz v0, :cond_11

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 158
    .line 159
    .line 160
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 161
    .line 162
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 163
    .line 164
    if-eqz v0, :cond_12

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 167
    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 170
    .line 171
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    if-eqz v0, :cond_13

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 176
    .line 177
    .line 178
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 179
    .line 180
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 181
    .line 182
    if-eqz v0, :cond_14

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 185
    .line 186
    .line 187
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->o0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 188
    .line 189
    :cond_14
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 190
    .line 191
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->b0:Landroid/content/Context;

    .line 192
    .line 193
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->d0:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->e0:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->f0:Ljava/lang/String;

    .line 198
    .line 199
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->p0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 200
    .line 201
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBlockImage;->B0:Lcom/mycompany/app/web/WebClean;

    .line 202
    .line 203
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 204
    .line 205
    .line 206
    return-void
.end method

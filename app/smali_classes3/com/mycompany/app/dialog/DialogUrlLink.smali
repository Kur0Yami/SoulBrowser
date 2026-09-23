.class public Lcom/mycompany/app/dialog/DialogUrlLink;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;,
        Lcom/mycompany/app/dialog/DialogUrlLink$ViewPagerAdapter;,
        Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;,
        Lcom/mycompany/app/dialog/DialogUrlLink$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic c1:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyLineLinear;

.field public B0:Lcom/mycompany/app/view/MyLineText;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Lcom/google/android/material/tabs/TabLayout;

.field public E0:Landroidx/viewpager2/widget/ViewPager2;

.field public F0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public G0:Lcom/mycompany/app/view/MyLinkView;

.field public H0:Lcom/mycompany/app/view/MyLinkView;

.field public I0:Lcom/mycompany/app/view/MyLineText;

.field public J0:Lcom/mycompany/app/main/MainListLoader;

.field public K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public L0:Lcom/mycompany/app/view/GlideRequests;

.field public M0:Z

.field public N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

.field public O0:Lcom/mycompany/app/dialog/DialogSetPopup;

.field public P0:I

.field public Q0:Z

.field public R0:Ljava/lang/String;

.field public S0:Lcom/mycompany/app/view/MyPopupMenu;

.field public T0:Z

.field public U0:I

.field public V0:I

.field public final W0:Lcom/bumptech/glide/request/RequestListener;

.field public final X0:Lcom/bumptech/glide/request/RequestListener;

.field public final Y0:Lcom/mycompany/app/view/MyGlideTarget;

.field public Z0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public a1:Ljava/lang/String;

.field public b0:Landroid/content/Context;

.field public b1:I

.field public c0:Ljava/lang/String;

.field public d1:Ljava/lang/String;

.field public e1:Z

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Z

.field public l0:Z

.field public m0:I

.field public final n0:Z

.field public o0:Z

.field public p0:Z

.field public final q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

.field public v0:Lcom/mycompany/app/view/MyDialogLink;

.field public w0:Lcom/mycompany/app/view/MyRoundImage;

.field public x0:Lcom/mycompany/app/view/MyRoundImage;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Lcom/mycompany/app/view/MyButtonImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/mycompany/app/dialog/DialogUrlLink$22;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$22;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->W0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance p2, Lcom/mycompany/app/dialog/DialogUrlLink$24;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$24;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->X0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/dialog/DialogUrlLink$35;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$35;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->Y0:Lcom/mycompany/app/view/MyGlideTarget;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 41
    .line 42
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->j0:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p9, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 47
    .line 48
    sget p3, Lcom/mycompany/app/pref/PrefWeb;->c0:I

    if-eqz p3, :cond_link_tab_image

    const/4 v0, 0x1

    if-eq p3, v0, :cond_link_tab_fixed_image

    sget-boolean p3, Lcom/mycompany/app/pref/PrefZone;->J:Z

    goto :cond_link_tab_set

    :cond_link_tab_image
    const/4 p3, 0x0

    goto :cond_link_tab_set

    :cond_link_tab_fixed_image
    const/4 p3, 0x1

    :cond_link_tab_set
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 51
    .line 52
    iput p8, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->q0:I

    .line 53
    .line 54
    const/4 p3, 0x4

    .line 55
    if-eq p8, p3, :cond_1

    .line 56
    .line 57
    const/16 p3, 0x9

    .line 58
    .line 59
    if-ne p8, p3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 63
    .line 64
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 65
    .line 66
    new-instance p1, Lcom/mycompany/app/dialog/DialogUrlLink$1;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$1;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    new-instance p1, Lcom/mycompany/app/view/MyDialogLink;

    .line 79
    .line 80
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 81
    .line 82
    invoke-direct {p1, p3}, Lcom/mycompany/app/view/MyDialogLink;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 91
    .line 92
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 98
    .line 99
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 105
    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    :goto_1
    return-void

    .line 109
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogUrlLink$15;

    .line 110
    .line 111
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$15;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogUrlLink;Landroid/view/View;IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 6
    .line 7
    if-eqz v1, :cond_7

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v1, v1, Lcom/mycompany/app/view/MyDialogLink;->g:Z

    .line 16
    .line 17
    :goto_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    if-nez p3, :cond_2

    .line 21
    .line 22
    # Ignore Block link/area while Preview is open.
    const/16 p1, 0xb

    if-ne p2, p1, :cond_block_check_area

    goto :cond_block_preview

    :cond_block_check_area
    const/16 p1, 0xc

    if-ne p2, p1, :cond_link_ok

    :cond_block_preview
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    if-eqz p1, :cond_link_ok

    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->c7:Lcom/mycompany/app/dialog/DialogWebView;

    if-eqz p1, :cond_link_ok

    return-void

    :cond_link_ok
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, p2, p1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const/4 p3, 0x4

    .line 31
    if-eq p2, p3, :cond_5

    .line 32
    .line 33
    const/4 p3, 0x6

    .line 34
    if-eq p2, p3, :cond_3

    .line 35
    .line 36
    const/16 p3, 0x9

    .line 37
    .line 38
    if-eq p2, p3, :cond_4

    .line 39
    .line 40
    const/16 p3, 0xa

    .line 41
    .line 42
    if-eq p2, p3, :cond_3

    .line 43
    .line 44
    # Ignore Block image/area while Preview is open.
    const/16 v1, 0xb

    if-ne p2, v1, :cond_img_check_area

    goto :cond_img_preview

    :cond_img_check_area
    const/16 v1, 0xc

    if-ne p2, v1, :cond_img_ok

    :cond_img_preview
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v1, :cond_img_ok

    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->c7:Lcom/mycompany/app/dialog/DialogWebView;

    if-eqz v1, :cond_img_ok

    return-void

    :cond_img_ok
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 47
    .line 48
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    move v2, p2

    .line 53
    invoke-interface/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    move v2, p2

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUrlLink;->Q()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->R(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    move v2, p2

    .line 68
    iget-boolean p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 69
    .line 70
    if-nez p2, :cond_6

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->d()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->R(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_6
    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogUrlLink;->G(Z)V

    .line 88
    .line 89
    .line 90
    :cond_7
    :goto_2
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->q0:I

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->G(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/16 v1, 0x9

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUrlLink;->Q()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->G(Z)V

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_0
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 15
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
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$23;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$23;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$21;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$21;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static E(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 8
    .line 9
    const/4 v2, -0x2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 14
    .line 15
    if-eqz v4, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    if-nez v0, :cond_6

    .line 20
    .line 21
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 32
    .line 33
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v4, 0x1f

    .line 37
    .line 38
    if-ge v0, v4, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-virtual {v0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v4, 0x1

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$29;

    .line 71
    .line 72
    invoke-direct {v5, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$29;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 73
    .line 74
    .line 75
    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->F0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 76
    .line 77
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$ViewPagerAdapter;

    .line 78
    .line 79
    invoke-direct {v5, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$ViewPagerAdapter;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->F0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 93
    .line 94
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    .line 96
    invoke-virtual {v0, v5, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 104
    .line 105
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$27;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v2, v3, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->a()V

    .line 114
    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 117
    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 121
    .line 122
    invoke-virtual {v0, v4, v1}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    :goto_2
    return-void

    .line 144
    :cond_7
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$15;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$15;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public static F(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->r0:I

    .line 28
    .line 29
    iget v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->s0:I

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    if-ne v1, v2, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 36
    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    move v1, v2

    .line 40
    :cond_4
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 41
    .line 42
    mul-int/2addr v1, v2

    .line 43
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUrlLink;->H()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_5

    .line 48
    .line 49
    move v3, v1

    .line 50
    :cond_5
    :goto_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    if-ne v1, v3, :cond_6

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_6
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez v0, :cond_7

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_7
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$28;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$28;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :goto_2
    return-void
.end method


# virtual methods
.method public final G(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->Q0:Z

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 14
    .line 15
    if-eqz v6, :cond_1

    .line 16
    .line 17
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->P0:I

    .line 18
    .line 19
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->P0:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    if-ne v1, v0, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->Q0:Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->R0:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-interface/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    return-void

    .line 62
    :cond_5
    iput v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->P0:I

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 67
    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 71
    .line 72
    .line 73
    :cond_6
    new-instance p1, Lcom/mycompany/app/dialog/DialogUrlLink$31;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$31;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final H()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->t0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return v0

    .line 11
    :cond_1
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->U0:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    iget v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->V0:I

    .line 22
    .line 23
    sub-int/2addr v0, v2

    .line 24
    sub-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->t0:I

    .line 26
    .line 27
    return v0
.end method

.method public final I(Z)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->g3(IZ)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/16 v3, 0xc

    .line 12
    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    :goto_0
    if-ge v0, v3, :cond_4

    .line 16
    .line 17
    aget p1, v1, v0

    .line 18
    .line 19
    sget v4, Lcom/mycompany/app/pref/PrefZone;->f0:I

    .line 20
    .line 21
    sget-object v5, Lcom/mycompany/app/dialog/DialogSetPopup;->p0:[I

    .line 22
    .line 23
    aget v5, v5, p1

    .line 24
    .line 25
    and-int/2addr v4, v5

    .line 26
    if-ne v4, v5, :cond_3

    .line 27
    .line 28
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    sget-object v4, Lcom/mycompany/app/main/MainConst;->n:[I

    .line 33
    .line 34
    aget v4, v4, p1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sget-object v4, Lcom/mycompany/app/main/MainConst;->m:[I

    .line 38
    .line 39
    aget v4, v4, p1

    .line 40
    .line 41
    :goto_1
    const/4 v5, 0x4

    .line 42
    if-ne p1, v5, :cond_2

    .line 43
    .line 44
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 49
    .line 50
    invoke-interface {v5}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_2

    .line 59
    .line 60
    :cond_1
    new-instance v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogUrlLink;->J(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput p1, v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    .line 70
    .line 71
    iput v4, v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->b:I

    .line 72
    .line 73
    iput-object v6, v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->d:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    new-instance v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 80
    .line 81
    sget-object v6, Lcom/mycompany/app/main/MainConst;->l:[I

    .line 82
    .line 83
    aget v6, v6, p1

    .line 84
    .line 85
    invoke-direct {v5, p1, v4, v6}, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;-><init>(III)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->s0:I

    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_5
    const/16 v3, 0xd

    :goto_3
    if-ge v0, v3, :cond_a

    .line 102
    .line 103
    aget p1, v1, v0

    .line 104
    .line 105
    sget v4, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 106
    .line 107
    sget-object v5, Lcom/mycompany/app/dialog/DialogSetPopup;->o0:[I

    .line 108
    .line 109
    aget v5, v5, p1

    .line 110
    .line 111
    and-int/2addr v4, v5

    .line 112
    if-ne v4, v5, :cond_9

    .line 113
    .line 114
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 115
    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    const/4 v4, 0x6

    .line 119
    if-ne p1, v4, :cond_7

    .line 120
    .line 121
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_dark_24:I

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_black_24:I

    .line 129
    .line 130
    :goto_4
    new-instance v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 131
    .line 132
    sget v6, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 133
    .line 134
    invoke-direct {v5, p1, v4, v6}, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;-><init>(III)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_7
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 142
    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    sget-object v4, Lcom/mycompany/app/main/MainConst;->j:[I

    .line 146
    .line 147
    aget v4, v4, p1

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_8
    sget-object v4, Lcom/mycompany/app/main/MainConst;->i:[I

    .line 151
    .line 152
    aget v4, v4, p1

    .line 153
    .line 154
    :goto_5
    new-instance v5, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 155
    .line 156
    sget-object v6, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 157
    .line 158
    aget v6, v6, p1

    .line 159
    .line 160
    invoke-direct {v5, p1, v4, v6}, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;-><init>(III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->r0:I

    .line 174
    .line 175
    return-object v2
.end method

.method public final J(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->o0:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v2, Lcom/mycompany/app/main/MainConst;->l:[I

    .line 18
    .line 19
    aget p1, v2, p1

    .line 20
    .line 21
    const-string v2, " ("

    .line 22
    .line 23
    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ")"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final K()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 7
    .line 8
    const v2, -0xe19938

    .line 9
    .line 10
    .line 11
    const v3, -0x9e9e9f

    .line 12
    .line 13
    .line 14
    const v4, -0x50506

    .line 15
    .line 16
    .line 17
    const v5, -0x3e3e3f

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    const-string v3, "skip_scroll"

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->A(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->A(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_1
    return-void
.end method

.method public final L(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->d1:Ljava/lang/String;

    # title, else alt (stored in d1); fall back to image URL when empty/missing.
    if-eqz v0, :cond_image_url

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_image_url

    :cond_image_caption
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_image_url
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->g0:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->d0:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogUrlLink;->S()V

    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$19;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$19;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    return-void
.end method

.method public final S()V
    .locals 5

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->d1:Ljava/lang/String;

    if-nez v0, :cond_s_done

    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->e1:Z

    if-nez v0, :cond_s_done

    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    if-eqz v0, :cond_s_done

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_s_done

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v0, :cond_s_done

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c7:Lcom/mycompany/app/dialog/DialogWebView;

    if-eqz v1, :cond_s_main

    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    :cond_s_main
    if-nez v2, :cond_s_have

    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    if-eqz v2, :cond_s_done

    :cond_s_have
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->e1:Z

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function(){var src="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";function cap(el){if(!el)return '';try{var t=(el.getAttribute('title')||'').trim();if(t)return t;return (el.getAttribute('alt')||'').trim();}catch(e){return '';}}function same(el){if(!el||!src)return false;try{if(el.currentSrc===src||el.src===src)return true;if((el.getAttribute('src')||'')===src)return true;}catch(e){}return false;}var n=document.querySelectorAll('img,input[type=image]'),i,el,h=null;for(i=0;i<n.length;i++){el=n[i];try{if(el.matches&&el.matches(':hover'))h=el;}catch(e){}if(same(el))return cap(el);}if(h)return cap(h);return '';})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$40;

    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$40;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    :try_start_s
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_s
    .catch Ljava/lang/Exception; {:try_start_s .. :try_end_s} :catch_s

    :catch_s
    :cond_s_done
    return-void
.end method

.method public final M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyLinkView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyLinkView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 17
    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 24
    .line 25
    const v2, -0xdededf

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogUrlLink;->I(Z)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setItems(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->greyPreviewBlockItems(Lcom/mycompany/app/view/MyLinkView;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 48
    .line 49
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$12;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$12;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 58
    .line 59
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$13;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$13;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 68
    .line 69
    sub-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 73
    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    :goto_1
    return-void

    .line 77
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$14;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$14;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyLinkView;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyLinkView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 17
    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 24
    .line 25
    const v2, -0xdededf

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, v2}, Lcom/mycompany/app/dialog/DialogUrlLink;->I(Z)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setItems(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->greyPreviewBlockItems(Lcom/mycompany/app/view/MyLinkView;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 49
    .line 50
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$9;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$9;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLinkView;->setListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$10;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$10;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 69
    .line 70
    sub-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->m0:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 74
    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$11;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$11;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final O(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_dark_24:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_black_24:I

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    const v1, -0x70708

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final P(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->e0:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const v3, -0x70708

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$34;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$34;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogUrlLink$33;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$33;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final R(Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-ne p2, v0, :cond_3

    .line 33
    .line 34
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 35
    .line 36
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 37
    .line 38
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x6

    .line 56
    if-ne p2, v0, :cond_4

    .line 57
    .line 58
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 59
    .line 60
    sget v3, Lnet/kaki87/soul2/testing/R$string;->google:I

    .line 61
    .line 62
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bing:I

    .line 71
    .line 72
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$string;->yandex:I

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/16 v0, 0xa

    .line 91
    .line 92
    if-ne p2, v0, :cond_5

    .line 93
    .line 94
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 95
    .line 96
    sget v3, Lnet/kaki87/soul2/testing/R$string;->soul_home:I

    .line 97
    .line 98
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 105
    .line 106
    sget v2, Lnet/kaki87/soul2/testing/R$string;->phone_home:I

    .line 107
    .line 108
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :goto_0
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 119
    .line 120
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 121
    .line 122
    new-instance v7, Lcom/mycompany/app/dialog/DialogUrlLink$39;

    .line 123
    .line 124
    invoke-direct {v7, p0, p2}, Lcom/mycompany/app/dialog/DialogUrlLink$39;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;I)V

    .line 125
    .line 126
    .line 127
    move-object v4, p1

    .line 128
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 132
    .line 133
    const/4 p1, 0x3

    .line 134
    iput p1, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 137
    .line 138
    :cond_5
    :goto_1
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->o0:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$32;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$32;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method


.method public final greyPreviewBlockItems(Lcom/mycompany/app/view/MyLinkView;)V
    .locals 6

    if-eqz p1, :cond_ret

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    if-eqz v0, :cond_ret

    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->c7:Lcom/mycompany/app/dialog/DialogWebView;

    if-eqz v0, :cond_ret

    # Preview open: grey Block link/image (11) and Block area (12) when present.
    iget-object v0, p1, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    iget-object v1, p1, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_ret

    if-eqz v1, :cond_ret

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_loop
    if-ge v3, v2, :cond_ret

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    if-eqz v4, :cond_next

    iget v4, v4, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->a:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_check_area

    goto :cond_do_grey

    :cond_check_area
    const/16 v5, 0xc

    if-ne v4, v5, :cond_next

    :cond_do_grey
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_next

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_next

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :cond_loop

    :cond_ret
    return-void
.end method


.method public final dismiss()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->J:Z

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZone;->J:Z

    .line 16
    .line 17
    const/16 v2, 0xf

    .line 18
    .line 19
    const-string v4, "mLinkImage"

    .line 20
    .line 21
    invoke-static {v2, v1, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->O0:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetPopup;->dismiss()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->O0:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 44
    .line 45
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iput-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 51
    .line 52
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->F0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->E0:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->F0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 61
    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    if-eqz v4, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->J0:Lcom/mycompany/app/main/MainListLoader;

    .line 74
    .line 75
    if-eqz v1, :cond_7

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->J0:Lcom/mycompany/app/main/MainListLoader;

    .line 81
    .line 82
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 83
    .line 84
    if-eqz v1, :cond_9

    .line 85
    .line 86
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 87
    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_8
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 94
    .line 95
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 96
    .line 97
    if-eqz v1, :cond_d

    .line 98
    .line 99
    iget-boolean v4, v1, Lcom/mycompany/app/view/MyDialogLink;->g:Z

    .line 100
    .line 101
    if-eqz v4, :cond_a

    .line 102
    .line 103
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogLink;->g:Z

    .line 104
    .line 105
    iput-boolean v3, v1, Lcom/mycompany/app/view/MyDialogLink;->m:Z

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_a
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogLink;->c:Z

    .line 109
    .line 110
    :goto_1
    iget-object v3, v1, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 111
    .line 112
    if-eqz v3, :cond_b

    .line 113
    .line 114
    iput-boolean v0, v3, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 115
    .line 116
    :cond_b
    if-eqz v3, :cond_c

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 119
    .line 120
    .line 121
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 122
    .line 123
    :cond_c
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 124
    .line 125
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 126
    .line 127
    if-eqz v0, :cond_e

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 130
    .line 131
    .line 132
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 133
    .line 134
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 135
    .line 136
    if-eqz v0, :cond_f

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 139
    .line 140
    .line 141
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 142
    .line 143
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    if-eqz v0, :cond_10

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 148
    .line 149
    .line 150
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->A0:Lcom/mycompany/app/view/MyLineLinear;

    .line 153
    .line 154
    if-eqz v0, :cond_11

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 157
    .line 158
    .line 159
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->A0:Lcom/mycompany/app/view/MyLineLinear;

    .line 160
    .line 161
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 162
    .line 163
    if-eqz v0, :cond_12

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 166
    .line 167
    .line 168
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 169
    .line 170
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 171
    .line 172
    if-eqz v0, :cond_13

    .line 173
    .line 174
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 175
    .line 176
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->K:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 177
    .line 178
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 179
    .line 180
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 181
    .line 182
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 183
    .line 184
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 185
    .line 186
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 187
    .line 188
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->G0:Lcom/mycompany/app/view/MyLinkView;

    .line 191
    .line 192
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 193
    .line 194
    if-eqz v0, :cond_14

    .line 195
    .line 196
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 197
    .line 198
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->K:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 199
    .line 200
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 201
    .line 202
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 205
    .line 206
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 207
    .line 208
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 209
    .line 210
    iput-object v2, v0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 211
    .line 212
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->H0:Lcom/mycompany/app/view/MyLinkView;

    .line 213
    .line 214
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 215
    .line 216
    if-eqz v0, :cond_15

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 219
    .line 220
    .line 221
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->I0:Lcom/mycompany/app/view/MyLineText;

    .line 222
    .line 223
    :cond_15
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 224
    .line 225
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 226
    .line 227
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 228
    .line 229
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->d0:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->e0:Ljava/lang/String;

    .line 232
    .line 233
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->g0:Ljava/lang/String;

    .line 236
    .line 237
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 238
    .line 239
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 240
    .line 241
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->j0:Ljava/lang/String;

    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->d1:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->e1:Z

    .line 242
    .line 243
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 248
    .line 249
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 250
    .line 251
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 252
    .line 253
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.class public Lcom/mycompany/app/dialog/DialogWebViewUrlBar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebView;->C0:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    if-nez v4, :cond_2

    goto :goto_done

    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    invoke-static {p0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->b(Lcom/mycompany/app/dialog/DialogWebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/view/MyEditPure;)V

    return-void

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    invoke-static {p0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->c(Lcom/mycompany/app/dialog/DialogWebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/view/MyEditPure;)V

    :cond_4
    :goto_done
    return-void
.end method

.method private static b(Lcom/mycompany/app/dialog/DialogWebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/view/MyEditPure;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/mycompany/app/main/MainApp;->b1:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->E0:Lcom/mycompany/app/view/MyRoundView;

    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->K0:Lcom/mycompany/app/view/MyProgressBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    const/16 p3, 0x50

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p3, 0x0

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget p3, Lcom/mycompany/app/main/MainApp;->b1:I

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->D0:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->N0:Lcom/mycompany/app/view/MyScrollNavi;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->f(Lcom/mycompany/app/view/MyScrollNavi;Z)V

    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebView;->O0:Lcom/mycompany/app/view/MyScrollNavi;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->f(Lcom/mycompany/app/view/MyScrollNavi;Z)V

    return-void
.end method

.method private static c(Lcom/mycompany/app/dialog/DialogWebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/view/MyEditPure;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    sget v0, Lcom/mycompany/app/main/MainApp;->b1:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/16 v0, 0x8

    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView;->D0:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView;->K0:Lcom/mycompany/app/view/MyProgressBar;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView;->N0:Lcom/mycompany/app/view/MyScrollNavi;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView;->O0:Lcom/mycompany/app/view/MyScrollNavi;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v7, v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_7

    sget v4, Lcom/mycompany/app/main/MainApp;->b1:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v3, :cond_bot_light

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_bot_done

    :cond_bot_light
    const v3, -0x70708

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    :goto_bot_done
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogWebView;->E0:Lcom/mycompany/app/view/MyRoundView;

    if-eqz v3, :cond_make_bg

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bg_ready

    :cond_make_bg
    new-instance v3, Lcom/mycompany/app/view/MyRoundView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v4, :cond_bg_light

    const v4, -0xdededf

    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    goto :goto_bg_store

    :cond_bg_light
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    :goto_bg_store
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogWebView;->E0:Lcom/mycompany/app/view/MyRoundView;

    :goto_bg_ready
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    const v3, 0x800005

    if-eqz p3, :cond_9

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, p3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    if-eqz p3, :cond_a

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {p1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_row_lp

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_row_lp
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz p1, :cond_d

    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    goto :goto_close

    :cond_d
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    :goto_close
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->d(Lcom/mycompany/app/view/MyLineText;I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v5, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p3, 0x1

    invoke-virtual {p2, v2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    if-eqz p1, :cond_f

    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v0, :cond_e

    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_dark_24:I

    goto :goto_new

    :cond_e
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_black_24:I

    :goto_new
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->d(Lcom/mycompany/app/view/MyLineText;I)V

    :cond_f
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    if-eqz p0, :cond_10

    if-eqz v7, :cond_10

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {p1, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method private static d(Lcom/mycompany/app/view/MyLineText;I)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_pad

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_pad

    :cond_pad
    move v1, v0

    :goto_pad
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static e(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_set

    :cond_3
    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_set
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static f(Lcom/mycompany/app/view/MyScrollNavi;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x800053

    goto :goto_g

    :cond_2
    const p1, 0x800055

    :goto_g
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

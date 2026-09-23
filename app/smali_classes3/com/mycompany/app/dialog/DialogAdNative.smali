.class public Lcom/mycompany/app/dialog/DialogAdNative;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;
    }
.end annotation


# static fields
.field public static final synthetic p0:I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public final c0:Z

.field public d0:Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;

.field public e0:Landroid/widget/FrameLayout;

.field public f0:Lcom/mycompany/app/view/MyDialogRelative;

.field public g0:Lcom/mycompany/app/view/MyAdFrame;

.field public h0:Lcom/mycompany/app/view/MyAdNative;

.field public i0:Z

.field public j0:Landroid/widget/RelativeLayout;

.field public k0:Landroid/widget/ImageView;

.field public l0:Lcom/mycompany/app/view/MyCoverView;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:I

.field public o0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;ZLcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogNoaniTheme:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogAdNative;->c0:Z

    .line 19
    .line 20
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogAdNative;->d0:Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogAdNative$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogAdNative$1;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->d0:Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->e0:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->j0:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->c0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->ads_empty:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ads_retry:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->j0:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final D(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->c0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    sget v0, Lnet/kaki87/soul2/testing/R$string;->waiting:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->j0:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    const/16 p1, 0xa

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogAdNative;->F(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->C()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v1, v0, Lcom/mycompany/app/view/MyAdNative;->t:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/mycompany/app/dialog/DialogAdNative;->D(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    const/4 v3, 0x0

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyAdNative;->g:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    if-nez v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->C()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/mycompany/app/dialog/DialogAdNative;->D(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyAdNative;->setDarkMode(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->j0:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final F(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

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
    iput p1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->n0:I

    .line 14
    .line 15
    if-gtz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->C()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->n0:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const v1, -0x50506

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/high16 v1, -0x1000000

    .line 48
    .line 49
    :goto_1
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, p1}, Lcom/mycompany/app/view/MyCoverView;->k(IILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v0, Lcom/mycompany/app/dialog/DialogAdNative$9;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogAdNative$9;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v1, 0x578

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->d0:Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogAdNative$DialogAdListener;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->i0:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogAdNative;->i0:Z

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/dialog/DialogAdNative$6;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogAdNative$6;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->o0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->o0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogAdNative;->B()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogAdNative$8;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogAdNative$8;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

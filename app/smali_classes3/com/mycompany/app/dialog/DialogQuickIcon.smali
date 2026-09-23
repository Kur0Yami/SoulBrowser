.class public Lcom/mycompany/app/dialog/DialogQuickIcon;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;

.field public c0:Ljava/lang/String;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRoundImage;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyCoverView;

.field public h0:Lcom/mycompany/app/view/MyLineText;

.field public i0:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->b0:Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->c0:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickIcon$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogQuickIcon$1;-><init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogQuickIcon;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->i0:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->i0:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 31
    .line 32
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const v1, -0x50506

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/high16 v1, -0x1000000

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_icon:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    sget v0, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->b0:Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->c0:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon;->i0:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

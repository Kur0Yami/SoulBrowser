.class public Lcom/mycompany/app/dialog/DialogGuideArea;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;
    }
.end annotation


# instance fields
.field public A0:Landroidx/appcompat/widget/AppCompatTextView;

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;

.field public final c0:I

.field public d0:Z

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Landroid/widget/ImageView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyButtonImage;

.field public m0:Landroid/widget/ImageView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroid/widget/ImageView;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Landroidx/core/widget/NestedScrollView;

.field public s0:Lcom/mycompany/app/view/MyRoundLinear;

.field public t0:Lcom/mycompany/app/view/MyRoundLinear;

.field public u0:Lcom/mycompany/app/view/MyRoundLinear;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->b0:Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->c0:I

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogGuideArea$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogGuideArea$1;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const v1, -0xe6892e

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const v1, -0x4c1a04

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p1, v1, v0, p2, p3}, Lcom/mycompany/app/main/MainUtil;->s6(Ljava/lang/String;IILjava/lang/String;I)Landroid/text/SpannableString;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-nez p2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_1
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->b0:Lcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->m0:Landroid/widget/ImageView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->o0:Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGuideArea;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

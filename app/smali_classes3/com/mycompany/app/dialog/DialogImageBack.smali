.class public Lcom/mycompany/app/dialog/DialogImageBack;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

.field public c0:Landroid/widget/LinearLayout;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyButtonRelative;

.field public f0:Landroid/widget/ImageView;

.field public g0:[Lcom/mycompany/app/view/MyButtonCheck;

.field public h0:Lcom/mycompany/app/view/MyPaletteView;

.field public i0:Lcom/mycompany/app/view/MyLineText;

.field public j0:Landroid/graphics/Bitmap;

.field public k0:I

.field public l0:F

.field public m0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->j0:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 17
    .line 18
    sget p1, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 19
    .line 20
    iput p1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogImageBack$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogImageBack$1;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogImageBack;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    iget v3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 14
    .line 15
    sget-object v4, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 16
    .line 17
    aget v4, v4, v2

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    invoke-virtual {v3, v5, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 31
    .line 32
    aget-object v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {v3, v1, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->m0:I

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 45
    .line 46
    const v2, 0x3e4ccccd    # 0.2f

    .line 47
    .line 48
    .line 49
    cmpl-float v1, v1, v2

    .line 50
    .line 51
    if-lez v1, :cond_3

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_48:I

    .line 57
    .line 58
    :goto_2
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    iput v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->m0:I

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 68
    .line 69
    iget p0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Lcom/mycompany/app/view/MyButtonRelative;->setBgNorColor(I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    array-length v1, v1

    .line 33
    :goto_0
    if-ge v0, v1, :cond_4

    .line 34
    .line 35
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 36
    .line 37
    aget-object v3, v3, v0

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 45
    .line 46
    aput-object v2, v3, v0

    .line 47
    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPaletteView;->a()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 61
    .line 62
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    :cond_7
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->b0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->c0:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

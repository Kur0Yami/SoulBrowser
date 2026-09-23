.class public Lcom/mycompany/app/dialog/DialogSetHistory;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;,
        Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;
    }
.end annotation


# static fields
.field public static final p0:[I

.field public static final q0:[I

.field public static final r0:[I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroid/widget/RelativeLayout;

.field public f0:Landroid/view/View;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

.field public l0:Z

.field public m0:I

.field public n0:I

.field public o0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetHistory;->p0:[I

    .line 8
    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history_1day:I

    .line 12
    .line 13
    sget v3, Lnet/kaki87/soul2/testing/R$string;->history_1week:I

    .line 14
    .line 15
    sget v4, Lnet/kaki87/soul2/testing/R$string;->history_1mon:I

    .line 16
    .line 17
    sget v5, Lnet/kaki87/soul2/testing/R$string;->history_6mon:I

    .line 18
    .line 19
    sget v6, Lnet/kaki87/soul2/testing/R$string;->history_1year:I

    .line 20
    .line 21
    sget v7, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 22
    .line 23
    filled-new-array/range {v1 .. v7}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetHistory;->q0:[I

    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history_info_zero:I

    .line 30
    .line 31
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history_info_limit:I

    .line 32
    .line 33
    sget v7, Lnet/kaki87/soul2/testing/R$string;->history_info_none:I

    .line 34
    .line 35
    move v3, v2

    .line 36
    move v4, v2

    .line 37
    move v5, v2

    .line 38
    move v6, v2

    .line 39
    filled-new-array/range {v1 .. v7}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetHistory;->r0:[I

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 4
        0x0
        0x1
        0x7
        0x1e
        0xb7
        0x16d
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->c0:Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetHistory$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetHistory$1;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

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
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, -0x7f7f80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetHistory;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetHistory;->B()V

    .line 2
    .line 3
    .line 4
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->k0:Lcom/mycompany/app/dialog/DialogSetHistory$DialogTask;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->b0:Landroid/content/Context;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->c0:Lcom/mycompany/app/dialog/DialogSetHistory$SetHistoryListener;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->e0:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->f0:Landroid/view/View;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetHistory;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

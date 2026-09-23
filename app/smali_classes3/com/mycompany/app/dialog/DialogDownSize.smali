.class public Lcom/mycompany/app/dialog/DialogDownSize;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyCoverView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:J

.field public l0:Lcom/mycompany/app/main/MainDownSize;

.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogDownSize;->b0:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownSize;->c0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownSize;->d0:Ljava/lang/String;

    .line 15
    .line 16
    iput-wide p4, p0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownSize$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownSize$1;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->m0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->m0:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/main/MainDownSize;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->l0:Lcom/mycompany/app/main/MainDownSize;

    .line 38
    .line 39
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownSize$5;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownSize$5;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->l0:Lcom/mycompany/app/main/MainDownSize;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainDownSize;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->l0:Lcom/mycompany/app/main/MainDownSize;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->g0:Lcom/mycompany/app/view/MyCoverView;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->b0:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->c0:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->d0:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownSize;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

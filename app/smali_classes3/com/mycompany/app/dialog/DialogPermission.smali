.class public Lcom/mycompany/app/dialog/DialogPermission;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPermission;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogPermission;->b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPermission;->c0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPermission;->d0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPermission;->e0:Ljava/lang/String;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogPermission$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPermission$1;-><init>(Lcom/mycompany/app/dialog/DialogPermission;)V

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
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPermission;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPermission;->f0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->a0:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->b0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->c0:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->d0:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->e0:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPermission;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

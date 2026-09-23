.class public Lcom/mycompany/app/dialog/DialogQuickColor;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:[Lcom/mycompany/app/view/MyButtonCheck;

.field public final e0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->b0:Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->e0:I

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickColor$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogQuickColor$1;-><init>(Lcom/mycompany/app/dialog/DialogQuickColor;)V

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
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->c0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->a0:Landroid/content/Context;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->b0:Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickColor;->d0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

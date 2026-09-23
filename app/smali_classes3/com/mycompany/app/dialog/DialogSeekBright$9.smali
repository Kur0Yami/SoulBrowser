.class Lcom/mycompany/app/dialog/DialogSeekBright$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$9;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$9;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekBright;->C()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset_setting:I

    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 23
    .line 24
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekBright$13;

    .line 25
    .line 26
    invoke-direct {v4, p1}, Lcom/mycompany/app/dialog/DialogSeekBright$13;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekBright;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekBright$14;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSeekBright$14;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

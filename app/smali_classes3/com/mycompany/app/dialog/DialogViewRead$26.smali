.class Lcom/mycompany/app/dialog/DialogViewRead$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$26;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$26;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->a0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->J0:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekText;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->J0:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 24
    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekText;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$73;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogViewRead$73;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSeekText;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->J0:Lcom/mycompany/app/dialog/DialogSeekText;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$74;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead$74;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->C:Lcom/mycompany/app/view/MyFadeFrame;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

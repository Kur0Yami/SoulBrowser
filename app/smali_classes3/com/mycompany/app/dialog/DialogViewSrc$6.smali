.class Lcom/mycompany/app/dialog/DialogViewSrc$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$6;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$6;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 25
    .line 26
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 39
    .line 40
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$28;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewSrc$28;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

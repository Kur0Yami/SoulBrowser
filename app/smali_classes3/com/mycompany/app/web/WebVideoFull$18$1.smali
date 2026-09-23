.class Lcom/mycompany/app/web/WebVideoFull$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$18;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$18;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$18$1;->c:Lcom/mycompany/app/web/WebVideoFull$18;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$18$1;->c:Lcom/mycompany/app/web/WebVideoFull$18;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$18;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->y0:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->T()V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 29
    .line 30
    .line 31
    :cond_3
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->J0:Z

    .line 33
    .line 34
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 37
    .line 38
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v5, Lcom/mycompany/app/web/WebVideoFull$63;

    .line 45
    .line 46
    invoke-direct {v5, v0}, Lcom/mycompany/app/web/WebVideoFull$63;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 53
    .line 54
    new-instance v3, Lcom/mycompany/app/web/WebVideoFull$64;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebVideoFull$64;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->x0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 63
    .line 64
    iput-boolean v1, v2, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 65
    .line 66
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

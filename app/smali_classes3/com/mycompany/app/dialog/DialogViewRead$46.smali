.class Lcom/mycompany/app/dialog/DialogViewRead$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$46;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$46;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->m:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->n:Lcom/mycompany/app/view/MyAdNative;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewRead$47;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewRead$47;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainApp;->d(Landroid/app/Activity;ILcom/mycompany/app/main/MainApp$AdLocalListener;)Lcom/mycompany/app/view/MyAdNative;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->n:Lcom/mycompany/app/view/MyAdNative;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->l0()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->m:Lcom/mycompany/app/view/MyAdFrame;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->n:Lcom/mycompany/app/view/MyAdNative;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {v1, v3, v2, v4}, Lcom/mycompany/app/view/MyAdFrame;->a(Lcom/mycompany/app/view/MyAdNative;ZLandroid/os/Handler;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->q:Z

    .line 51
    .line 52
    return-void
.end method

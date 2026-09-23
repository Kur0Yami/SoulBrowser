.class Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$LocalWebViewClient;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->j:Z

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$50;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$50;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 33
    .line 34
    return-void
.end method

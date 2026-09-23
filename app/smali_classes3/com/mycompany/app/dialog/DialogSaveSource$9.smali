.class Lcom/mycompany/app/dialog/DialogSaveSource$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSaveSource;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$9;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$9;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/mycompany/app/pref/PrefSet;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUri;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->A0:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogSaveSource$9$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSaveSource$9$1;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource$9;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

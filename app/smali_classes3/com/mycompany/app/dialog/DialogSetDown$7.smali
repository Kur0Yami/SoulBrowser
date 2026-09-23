.class Lcom/mycompany/app/dialog/DialogSetDown$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDown$7;->c:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$7;->c:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->j0:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDown;->k0:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    iput-boolean v4, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 21
    .line 22
    :cond_1
    const/4 v3, 0x0

    .line 23
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 24
    .line 25
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetDown;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetDown;->i0:Lcom/mycompany/app/dialog/DialogSetDown$DialogTask;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDown;->b0:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

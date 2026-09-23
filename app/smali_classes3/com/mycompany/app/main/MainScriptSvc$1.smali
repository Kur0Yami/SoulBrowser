.class Lcom/mycompany/app/main/MainScriptSvc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainScriptSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainScriptSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainScriptSvc$1;->c:Lcom/mycompany/app/main/MainScriptSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainScriptSvc$1;->c:Lcom/mycompany/app/main/MainScriptSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->j:Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;-><init>(Lcom/mycompany/app/main/MainScriptSvc;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->j:Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;

    .line 19
    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "net.kaki87.soul2.testing.ACTION_SCRIPT_CANCEL"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/mycompany/app/main/MainScriptSvc;->j:Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v2, v3, v1, v5, v4}, Landroidx/core/content/ContextCompat;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/main/MainScriptSvc$1$1;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainScriptSvc$1$1;-><init>(Lcom/mycompany/app/main/MainScriptSvc$1;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.class Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainScriptSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainScriptSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainScriptSvc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainScriptSvc;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string p2, "net.kaki87.soul2.testing.ACTION_SCRIPT_CANCEL"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainScriptSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainScriptSvc;

    .line 21
    .line 22
    iget-boolean p2, p1, Lcom/mycompany/app/main/MainScriptSvc;->e:Z

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_2
    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainScriptSvc;->e:Z

    .line 29
    .line 30
    iget-object v0, p1, Lcom/mycompany/app/main/MainScriptSvc;->d:Lcom/mycompany/app/main/MainScriptSvc$DialogTask;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iput-boolean p2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 35
    .line 36
    :cond_3
    const/4 p2, 0x0

    .line 37
    iput-object p2, p1, Lcom/mycompany/app/main/MainScriptSvc;->d:Lcom/mycompany/app/main/MainScriptSvc$DialogTask;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 40
    .line 41
    sget v0, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 42
    .line 43
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainScriptSvc;->c()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

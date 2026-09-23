.class Lcom/mycompany/app/main/MainUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$5;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainUtil$5;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->S5(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const v2, 0x7ffffff9

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->s:Z

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lcom/mycompany/app/pref/PrefTts;->s:Z

    .line 31
    .line 32
    const/16 v2, 0xc

    .line 33
    .line 34
    const-string v3, "mCheckBack"

    .line 35
    .line 36
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->g(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 40
    .line 41
    const-string v2, "net.kaki87.soul2.testing.ACTION_BACK_STOP"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    :goto_1
    return-void
.end method

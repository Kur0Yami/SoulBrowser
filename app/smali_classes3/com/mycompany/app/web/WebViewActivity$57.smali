.class Lcom/mycompany/app/web/WebViewActivity$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$57;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v0, "myutil"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->R1:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->N1:Z

    .line 14
    .line 15
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$57;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    sput-boolean v3, Lcom/mycompany/app/main/MainApp;->N1:Z

    .line 21
    .line 22
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookDown;->a(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/mycompany/app/pref/PrefMain;->I:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->l8(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 41
    .line 42
    const-string v3, "net.kaki87.soul2.testing.ACTION_SRCHGET_UPDATE"

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 48
    .line 49
    const-class v5, Lcom/mycompany/app/widget/WidgetSearchProviderLight;

    .line 50
    .line 51
    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Landroid/content/Intent;

    .line 61
    .line 62
    const-class v5, Lcom/mycompany/app/widget/WidgetSearchProviderDark;

    .line 63
    .line 64
    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    :catch_1
    :cond_3
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->Z:Z

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    :cond_4
    invoke-static {v2}, Lcom/mycompany/app/web/WebViewActivity;->W0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-void
.end method

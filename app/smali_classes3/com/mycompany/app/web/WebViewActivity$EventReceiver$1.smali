.class Lcom/mycompany/app/web/WebViewActivity$EventReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$1;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$1;->c:Lcom/mycompany/app/web/WebViewActivity$EventReceiver;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->un:Landroid/content/Intent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->un:Landroid/content/Intent;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v3, "EXTRA_STATUS"

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 26
    .line 27
    if-nez v5, :cond_2

    .line 28
    .line 29
    if-ne v3, v4, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    const-string v5, "EXTRA_ID"

    .line 33
    .line 34
    const-wide/16 v6, -0x1

    .line 35
    .line 36
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-string v7, "EXTRA_TYPE"

    .line 41
    .line 42
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v8, "secretMode"

    .line 47
    .line 48
    sget-boolean v9, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 49
    .line 50
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    if-eq v3, v0, :cond_3

    .line 55
    .line 56
    if-ne v3, v4, :cond_4

    .line 57
    .line 58
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0, v5, v6}, Lcom/mycompany/app/db/book/DbBookDown;->d(Landroid/content/Context;J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    :goto_1
    move-wide v4, v5

    .line 65
    move-object v6, v7

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v0, v5, v6}, Lcom/mycompany/app/db/book/DbBookDown;->e(Landroid/content/Context;J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v0, 0x4

    .line 74
    if-ne v3, v0, :cond_3

    .line 75
    .line 76
    invoke-static {v2}, Lcom/mycompany/app/main/MainDownSvc;->z(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const-string v2, "live"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    const/4 v7, 0x0

    .line 86
    move-wide v10, v4

    .line 87
    move-object v5, v2

    .line 88
    move v4, v3

    .line 89
    move-wide v2, v10

    .line 90
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->H9(JILjava/lang/String;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

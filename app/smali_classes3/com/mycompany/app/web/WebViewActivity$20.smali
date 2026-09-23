.class Lcom/mycompany/app/web/WebViewActivity$20;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$20;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$20;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_4

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 13
    .line 14
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 17
    .line 18
    .line 19
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    iget-wide v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Vb:J

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    cmp-long v1, v4, v6

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v3

    .line 36
    :goto_0
    iput-wide v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Vb:J

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Xb:Lcom/mycompany/app/script/ScriptCache;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    iget-object v6, v4, Lcom/mycompany/app/script/ScriptCache;->b:[Lcom/mycompany/app/script/ScriptCriteria;

    .line 44
    .line 45
    iput-object v5, v4, Lcom/mycompany/app/script/ScriptCache;->b:[Lcom/mycompany/app/script/ScriptCriteria;

    .line 46
    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_0
    iget-object v4, v4, Lcom/mycompany/app/script/ScriptCache;->a:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :goto_1
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Xb:Lcom/mycompany/app/script/ScriptCache;

    .line 56
    .line 57
    :cond_3
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Wb:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F6()V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$213;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$213;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M7:Z

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G8:Z

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    move v2, v3

    .line 85
    :goto_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->M7:Z

    .line 86
    .line 87
    if-nez v2, :cond_7

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 91
    .line 92
    if-nez v0, :cond_8

    .line 93
    .line 94
    :goto_4
    return-void

    .line 95
    :cond_8
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$20$1;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$20$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$20;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v2, 0x190

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

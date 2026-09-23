.class Lcom/mycompany/app/web/WebViewActivity$213;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$213;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$213;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->G0(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ub:Lcom/mycompany/app/main/MainScriptSvc;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vb:J

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    sget-wide v1, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 31
    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 46
    .line 47
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 48
    .line 49
    int-to-long v5, v5

    .line 50
    const-wide/32 v7, 0x5265c00

    .line 51
    .line 52
    .line 53
    mul-long/2addr v5, v7

    .line 54
    add-long/2addr v5, v3

    .line 55
    cmp-long v3, v1, v5

    .line 56
    .line 57
    if-gez v3, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    sput-wide v1, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "mScriptTime"

    .line 70
    .line 71
    sget-wide v3, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 72
    .line 73
    invoke-virtual {v1, v3, v4, v2}, Lcom/mycompany/app/pref/PrefCore;->o(JLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$212;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$212;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_0
    return-void
.end method

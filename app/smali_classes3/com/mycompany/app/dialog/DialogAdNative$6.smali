.class Lcom/mycompany/app/dialog/DialogAdNative$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAdNative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAdNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative$6;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAdNative$6;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->c0:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_7

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/main/MainApp;->N0:Lcom/mycompany/app/view/MyAdNative;

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    :cond_2
    :goto_0
    move v1, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v4, v1, Lcom/mycompany/app/view/MyAdNative;->t:I

    .line 35
    .line 36
    if-eq v4, v3, :cond_4

    .line 37
    .line 38
    move v4, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    iget-object v4, v1, Lcom/mycompany/app/view/MyAdNative;->g:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :goto_1
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-wide v4, v1, Lcom/mycompany/app/view/MyAdNative;->u:J

    .line 49
    .line 50
    const-wide/16 v6, 0x0

    .line 51
    .line 52
    cmp-long v4, v4, v6

    .line 53
    .line 54
    if-nez v4, :cond_6

    .line 55
    .line 56
    :cond_5
    move v1, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    iget-wide v6, v1, Lcom/mycompany/app/view/MyAdNative;->u:J

    .line 63
    .line 64
    const-wide/32 v8, 0x2dc6c0

    .line 65
    .line 66
    .line 67
    add-long/2addr v6, v8

    .line 68
    cmp-long v1, v4, v6

    .line 69
    .line 70
    if-lez v1, :cond_5

    .line 71
    .line 72
    move v1, v3

    .line 73
    :goto_2
    if-nez v1, :cond_2

    .line 74
    .line 75
    move v1, v3

    .line 76
    :goto_3
    if-nez v1, :cond_8

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogAdNative;->dismiss()V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->A(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_8

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogAdNative;->C()V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 95
    .line 96
    if-nez v1, :cond_9

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_9
    new-instance v4, Lcom/mycompany/app/dialog/DialogAdNative$7;

    .line 100
    .line 101
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogAdNative$7;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v2, v4}, Lcom/mycompany/app/main/MainApp;->d(Landroid/app/Activity;ILcom/mycompany/app/main/MainApp$AdLocalListener;)Lcom/mycompany/app/view/MyAdNative;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogAdNative;->E()V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 114
    .line 115
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogAdNative;->h0:Lcom/mycompany/app/view/MyAdNative;

    .line 116
    .line 117
    iget-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 118
    .line 119
    invoke-virtual {v1, v4, v3, v5}, Lcom/mycompany/app/view/MyAdFrame;->a(Lcom/mycompany/app/view/MyAdNative;ZLandroid/os/Handler;)V

    .line 120
    .line 121
    .line 122
    :cond_a
    :goto_4
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogAdNative;->i0:Z

    .line 123
    .line 124
    return-void
.end method

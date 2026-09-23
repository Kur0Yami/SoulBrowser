.class Lcom/mycompany/app/web/WebViewActivity$644;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$644;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$644;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->mo:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->no:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->no:Ljava/lang/String;

    .line 22
    .line 23
    move v5, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 26
    .line 27
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->wo:Z

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->xo:Ljava/lang/String;

    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_9

    .line 38
    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_9

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->oo:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const-wide/16 v3, 0x190

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->uo:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->yo:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$645;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$645;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 77
    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->uo:Z

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 87
    .line 88
    if-nez v1, :cond_8

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$646;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$646;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_9
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->oo:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->mo:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->no:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->oo:Ljava/lang/String;

    .line 107
    .line 108
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->po:Z

    .line 109
    .line 110
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->qo:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 113
    .line 114
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->so:Z

    .line 115
    .line 116
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->wo:Z

    .line 117
    .line 118
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vo:Z

    .line 119
    .line 120
    if-eqz v3, :cond_a

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_a
    const/4 v3, 0x1

    .line 124
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vo:Z

    .line 125
    .line 126
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Bj:Z

    .line 127
    .line 128
    if-eqz v4, :cond_b

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_b
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Bj:Z

    .line 132
    .line 133
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Cj:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Dj:Ljava/lang/String;

    .line 136
    .line 137
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ej:Z

    .line 138
    .line 139
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Fj:Ljava/lang/String;

    .line 140
    .line 141
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Gj:Z

    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 144
    .line 145
    if-nez v1, :cond_c

    .line 146
    .line 147
    :goto_1
    return-void

    .line 148
    :cond_c
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$342;

    .line 149
    .line 150
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$342;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    return-void
.end method

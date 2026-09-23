.class Lcom/mycompany/app/web/WebViewActivity$507;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$507;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$507;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v3, "mSecretIndex"

    .line 11
    .line 12
    const-string v4, "mNormalIndex"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    sget v5, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 17
    .line 18
    sget v6, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 19
    .line 20
    if-eq v5, v6, :cond_0

    .line 21
    .line 22
    sput v6, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 23
    .line 24
    invoke-virtual {v1, v6, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget v5, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 28
    .line 29
    sget v6, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 30
    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    .line 33
    sput v6, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 34
    .line 35
    invoke-virtual {v1, v6, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string v5, "mSecretMode"

    .line 39
    .line 40
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 41
    .line 42
    invoke-virtual {v1, v5, v6}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    if-nez v5, :cond_4

    .line 49
    .line 50
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 51
    .line 52
    if-nez v5, :cond_4

    .line 53
    .line 54
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v5, v6}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 57
    .line 58
    .line 59
    sget v5, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    sput v2, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    sget v5, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 68
    .line 69
    sget v7, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 70
    .line 71
    if-eq v5, v7, :cond_3

    .line 72
    .line 73
    sput v7, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 74
    .line 75
    invoke-virtual {v1, v7, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 79
    .line 80
    sget v5, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 81
    .line 82
    if-eq v4, v5, :cond_4

    .line 83
    .line 84
    sput v5, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 85
    .line 86
    invoke-virtual {v1, v5, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 101
    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    sput-boolean v6, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 107
    .line 108
    const/16 v3, 0x9

    .line 109
    .line 110
    const-string v4, "mLockSkip"

    .line 111
    .line 112
    invoke-static {v3, v1, v4, v6}, Lcom/mycompany/app/pref/PrefSet;->g(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    :cond_6
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->x:Z

    .line 120
    .line 121
    if-nez v1, :cond_7

    .line 122
    .line 123
    sput-boolean v6, Lcom/mycompany/app/pref/PrefTts;->x:Z

    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 126
    .line 127
    const/16 v3, 0xc

    .line 128
    .line 129
    const-string v4, "mSkipKeypad"

    .line 130
    .line 131
    invoke-static {v3, v1, v4, v6}, Lcom/mycompany/app/pref/PrefSet;->g(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    iget-boolean v3, v1, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 145
    .line 146
    if-eqz v3, :cond_9

    .line 147
    .line 148
    iget-object v1, v1, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 149
    .line 150
    if-nez v1, :cond_8

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_8
    invoke-virtual {v1, v2, v2}, Lcom/mycompany/app/main/MainDownSvc;->Q(ZZ)V

    .line 154
    .line 155
    .line 156
    :cond_9
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 157
    .line 158
    if-nez v0, :cond_a

    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$507$1;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$507$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$507;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    return-void
.end method

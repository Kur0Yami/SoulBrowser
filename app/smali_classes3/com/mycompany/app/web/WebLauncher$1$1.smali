.class Lcom/mycompany/app/web/WebLauncher$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebLauncher$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLauncher$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebLauncher$1$1;->c:Lcom/mycompany/app/web/WebLauncher$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLauncher$1$1;->c:Lcom/mycompany/app/web/WebLauncher$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebLauncher$1;->c:Lcom/mycompany/app/web/WebLauncher;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v2, :cond_c

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebLauncher$1;->c:Lcom/mycompany/app/web/WebLauncher;

    .line 18
    .line 19
    sget v1, Lcom/mycompany/app/web/WebLauncher;->f1:I

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "EXTRA_SOUL"

    .line 39
    .line 40
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-string v5, "android.intent.action.WEB_SEARCH"

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v5, "query"

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->q3(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v3, v2, v4}, Lcom/mycompany/app/web/WebLauncher;->u0(Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    const-string v5, "android.intent.action.SEND"

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_a

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v5, "text/plain"

    .line 87
    .line 88
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v5, 0x0

    .line 93
    if-eqz v3, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v6, "android.intent.extra.TEXT"

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const/16 v7, 0x8

    .line 113
    .line 114
    if-ge v6, v7, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    const-string v8, "https://"

    .line 118
    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    const/4 v9, -0x1

    .line 124
    if-ne v8, v9, :cond_5

    .line 125
    .line 126
    const-string v7, "http://"

    .line 127
    .line 128
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    if-ne v8, v9, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const/4 v7, 0x7

    .line 135
    :cond_5
    add-int/2addr v7, v8

    .line 136
    if-lt v7, v6, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    const/16 v9, 0x20

    .line 140
    .line 141
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->indexOf(II)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-le v7, v8, :cond_8

    .line 146
    .line 147
    if-lt v7, v6, :cond_7

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_1

    .line 155
    :cond_8
    :goto_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    goto :goto_1

    .line 160
    :cond_9
    move-object v3, v5

    .line 161
    :goto_1
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v0, v3, v2, v4}, Lcom/mycompany/app/web/WebLauncher;->u0(Ljava/lang/String;ZZ)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_b

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    goto :goto_2

    .line 184
    :cond_b
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->c3()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    :goto_2
    invoke-virtual {v0, v3, v1, v4}, Lcom/mycompany/app/web/WebLauncher;->u0(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :catch_0
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->c3()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/web/WebLauncher;->u0(Ljava/lang/String;ZZ)V

    .line 197
    .line 198
    .line 199
    :cond_c
    :goto_3
    return-void
.end method

.class Lcom/mycompany/app/web/WebViewActivity$350;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$350;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$350;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Oj:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Pj:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Qj:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Oj:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Pj:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v8, 0x1a

    .line 27
    .line 28
    if-ge v7, v8, :cond_1

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->pip_info:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v7}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v4, v7, Lcom/mycompany/app/main/MainApp;->i:Ljava/lang/String;

    .line 47
    .line 48
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_7

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_7

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    sget-object v4, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_7

    .line 69
    .line 70
    sget-object v4, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_7

    .line 77
    .line 78
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->K:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v3, Lcom/mycompany/app/pref/PrefAlbum;->L:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0, v2, v3, v1, v5}, Lcom/mycompany/app/main/MainUtil;->P4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v4, 0x2

    .line 90
    invoke-static {v0, v2, v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->P4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v4, 0x3

    .line 98
    invoke-static {v0, v2, v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->P4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    invoke-static {v0, v2, v3, v1, v6}, Lcom/mycompany/app/main/MainUtil;->P4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    :goto_1
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->E9:Z

    .line 113
    .line 114
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 115
    .line 116
    invoke-virtual {v4, v2}, Lcom/mycompany/app/web/WebNestView;->n(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->t5(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_8

    .line 125
    .line 126
    move-object v7, v2

    .line 127
    goto :goto_2

    .line 128
    :cond_8
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 129
    .line 130
    if-nez v7, :cond_9

    .line 131
    .line 132
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    invoke-virtual {v7, v4}, Lcom/mycompany/app/web/WebNestView;->p(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_a

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_a
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 147
    .line 148
    :goto_2
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 149
    .line 150
    invoke-virtual {v8, v4}, Lcom/mycompany/app/web/WebNestView;->o(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    new-instance v8, Landroid/content/Intent;

    .line 155
    .line 156
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 157
    .line 158
    const-class v10, Lcom/mycompany/app/video/VideoActivity;

    .line 159
    .line 160
    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string v1, "EXTRA_ORG"

    .line 171
    .line 172
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    const-string v1, "EXTRA_PIP"

    .line 176
    .line 177
    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    const-string v1, "EXTRA_POPUP"

    .line 181
    .line 182
    invoke-virtual {v8, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    const-string v1, "EXTRA_URL"

    .line 186
    .line 187
    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    const-string v1, "EXTRA_HOST"

    .line 191
    .line 192
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    const-string v1, "EXTRA_THUMB"

    .line 198
    .line 199
    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    const-string v1, "EXTRA_INDEX"

    .line 203
    .line 204
    const-wide/16 v2, 0x0

    .line 205
    .line 206
    long-to-int v2, v2

    .line 207
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Nj:Z

    .line 214
    .line 215
    return-void
.end method

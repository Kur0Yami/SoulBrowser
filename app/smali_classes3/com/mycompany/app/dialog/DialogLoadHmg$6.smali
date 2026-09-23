.class Lcom/mycompany/app/dialog/DialogLoadHmg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogLoadHmg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadHmg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 3
    .line 4
    iput v0, v1, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0, v0, v0}, Lcom/mycompany/app/dialog/DialogLoadHmg;->B(ZZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadHmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->m0:Lcom/mycompany/app/web/WebHmgTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 18
    .line 19
    const/16 v3, 0x64

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->u0:Z

    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->m0:Lcom/mycompany/app/web/WebHmgTask;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebHmgTask;->d()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v4, v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogLoadHmg;->C(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->t0:Z

    .line 44
    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->t0:Z

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogLoadHmg;->C(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->m0:Lcom/mycompany/app/web/WebHmgTask;

    .line 54
    .line 55
    if-nez v4, :cond_5

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_5
    iput v2, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->k0:I

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    if-eqz p1, :cond_b

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_6

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_6
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->l0:Z

    .line 73
    .line 74
    if-nez v5, :cond_a

    .line 75
    .line 76
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 77
    .line 78
    if-nez v5, :cond_7

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_7
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->l0:Z

    .line 83
    .line 84
    new-instance v5, Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 85
    .line 86
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    iput v6, v5, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->d:I

    .line 94
    .line 95
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->b0:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v6}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iput-object p1, v6, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 102
    .line 103
    iput-object p2, v6, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 104
    .line 105
    iput-object v5, v6, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 106
    .line 107
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->b0:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->R1(Landroid/content/Context;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "EXTRA_TYPE"

    .line 114
    .line 115
    const/16 v5, 0xc

    .line 116
    .line 117
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->o0:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->n0:Lcom/mycompany/app/web/WebNestView;

    .line 123
    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_8

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    invoke-static {p2, v4}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->r1(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    :goto_0
    const-string p2, "EXTRA_NAME"

    .line 150
    .line 151
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    const-string p2, "EXTRA_INDEX"

    .line 155
    .line 156
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    const-string p2, "EXTRA_PAGE"

    .line 160
    .line 161
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const-string p2, "EXTRA_REFERER"

    .line 165
    .line 166
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->o0:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    const-string p2, "EXTRA_PRELOAD"

    .line 172
    .line 173
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    const-string p2, "EXTRA_LOAD_TYPE"

    .line 177
    .line 178
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    sget p2, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 182
    .line 183
    if-ge p2, v3, :cond_9

    .line 184
    .line 185
    add-int/2addr p2, v4

    .line 186
    sput p2, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 187
    .line 188
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->b0:Landroid/content/Context;

    .line 189
    .line 190
    const/4 v2, 0x5

    .line 191
    const-string v3, "mShowAdsImage"

    .line 192
    .line 193
    invoke-static {p3, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_9
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 203
    .line 204
    const/16 p3, 0x12

    .line 205
    .line 206
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 207
    .line 208
    .line 209
    move v1, v4

    .line 210
    :goto_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 211
    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    invoke-interface {p1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;->c(Z)V

    .line 215
    .line 216
    .line 217
    :cond_a
    :goto_2
    return-void

    .line 218
    :cond_b
    :goto_3
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->u0:Z

    .line 219
    .line 220
    if-nez p1, :cond_c

    .line 221
    .line 222
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->u0:Z

    .line 223
    .line 224
    :cond_c
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->m0:Lcom/mycompany/app/web/WebHmgTask;

    .line 225
    .line 226
    iget-boolean p1, p1, Lcom/mycompany/app/web/WebHmgTask;->f:Z

    .line 227
    .line 228
    if-eqz p1, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0, v1, v4, v1}, Lcom/mycompany/app/dialog/DialogLoadHmg;->B(ZZZ)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_d
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadHmg;->u0:Z

    .line 235
    .line 236
    if-eqz p1, :cond_e

    .line 237
    .line 238
    invoke-virtual {v0, v1, v1, v4}, Lcom/mycompany/app/dialog/DialogLoadHmg;->B(ZZZ)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_e
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/dialog/DialogLoadHmg;->B(ZZZ)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

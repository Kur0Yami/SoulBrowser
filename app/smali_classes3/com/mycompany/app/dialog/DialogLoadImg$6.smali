.class Lcom/mycompany/app/dialog/DialogLoadImg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogLoadImg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->k0:I

    .line 5
    .line 6
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->B(ZZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

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
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/16 v4, 0x64

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_5

    .line 29
    .line 30
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->z0:Z

    .line 31
    .line 32
    iget v5, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    if-eq v5, v6, :cond_5

    .line 36
    .line 37
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->C(I)V

    .line 51
    .line 52
    .line 53
    iget p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 54
    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    if-ne v1, v4, :cond_c

    .line 58
    .line 59
    iput v3, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    const/4 p2, 0x3

    .line 63
    if-ne p1, p2, :cond_c

    .line 64
    .line 65
    iput v6, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->y0:I

    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->p0:Ljava/util/List;

    .line 69
    .line 70
    iput v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 71
    .line 72
    if-eqz p2, :cond_d

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_6
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->n0:Z

    .line 83
    .line 84
    if-nez v2, :cond_c

    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 87
    .line 88
    if-nez v2, :cond_7

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_7
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->n0:Z

    .line 93
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 101
    .line 102
    if-nez p1, :cond_8

    .line 103
    .line 104
    const-string p1, "No title"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_8
    sget v2, Lnet/kaki87/soul2/testing/R$string;->no_title:I

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :cond_9
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 114
    .line 115
    if-eqz v2, :cond_a

    .line 116
    .line 117
    invoke-interface {v2, p1, p2}, Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;->d(Ljava/lang/String;Ljava/util/List;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_a

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iput-object p2, v2, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 131
    .line 132
    iput-object p3, v2, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 133
    .line 134
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->R1(Landroid/content/Context;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const-string p3, "EXTRA_TYPE"

    .line 141
    .line 142
    const/16 v2, 0xc

    .line 143
    .line 144
    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const-string p3, "EXTRA_NAME"

    .line 148
    .line 149
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    const-string p1, "EXTRA_INDEX"

    .line 153
    .line 154
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    const-string p1, "EXTRA_REFERER"

    .line 158
    .line 159
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->o0:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const-string p1, "EXTRA_PRELOAD"

    .line 165
    .line 166
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    sget p1, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 170
    .line 171
    if-ge p1, v4, :cond_b

    .line 172
    .line 173
    add-int/2addr p1, v3

    .line 174
    sput p1, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 175
    .line 176
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->b0:Landroid/content/Context;

    .line 177
    .line 178
    const/4 v2, 0x5

    .line 179
    const-string v3, "mShowAdsImage"

    .line 180
    .line 181
    invoke-static {p3, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_b
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 191
    .line 192
    const/16 p3, 0x12

    .line 193
    .line 194
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 195
    .line 196
    .line 197
    move v1, v3

    .line 198
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 199
    .line 200
    if-eqz p1, :cond_c

    .line 201
    .line 202
    invoke-interface {p1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;->c(Z)V

    .line 203
    .line 204
    .line 205
    :cond_c
    :goto_3
    return-void

    .line 206
    :cond_d
    :goto_4
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->z0:Z

    .line 207
    .line 208
    if-nez p1, :cond_e

    .line 209
    .line 210
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->z0:Z

    .line 211
    .line 212
    :cond_e
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-boolean p1, p1, Lcom/mycompany/app/web/WebLoadTask;->f:Z

    .line 217
    .line 218
    if-eqz p1, :cond_f

    .line 219
    .line 220
    invoke-virtual {v0, v1, v3, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->B(ZZZ)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_f
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->z0:Z

    .line 225
    .line 226
    if-eqz p1, :cond_10

    .line 227
    .line 228
    invoke-virtual {v0, v1, v1, v3}, Lcom/mycompany/app/dialog/DialogLoadImg;->B(ZZZ)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_10
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->B(ZZZ)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->u0:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->k0:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->D(IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadImg$6;->a:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->f0:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->k0:I

    .line 10
    .line 11
    iget v2, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->C(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

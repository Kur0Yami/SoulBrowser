.class Lcom/mycompany/app/web/WebViewActivity$186;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$186;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$186;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ig:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    const/4 v4, 0x0

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Q5:I

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    if-ne v5, v6, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebViewActivity;->k9(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getDownVideo()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_down_video:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_3
    const-string v5, "face_dummy"

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x1

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const-string v2, "(function(){var nam=null;var eles=document.querySelectorAll(\"button[id=\'sb_btn_dn1\']\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var tp=eles[i].getBoundingClientRect().top;if((tp>6)&&(tp<14)){nam=eles[i].name;break;}}}android.onFaceDet(nam,"

    .line 67
    .line 68
    const-string v4, ");})();"

    .line 69
    .line 70
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v2, v1, v6}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_4
    const-string v5, "insta_dummy"

    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->k9(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_5
    invoke-virtual {v0, v2, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->M7(Ljava/lang/String;IZ)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_6
    const-string v5, "twit_dummy"

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->k9(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_7
    invoke-virtual {v0, v2, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->M7(Ljava/lang/String;IZ)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_8
    const-string v5, "vid_dummy"

    .line 126
    .line 127
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_9

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C9(I)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 137
    .line 138
    if-eqz v1, :cond_11

    .line 139
    .line 140
    invoke-virtual {v1, v6}, Lcom/mycompany/app/dialog/DialogVideoList;->N(I)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_9
    const-string v5, "pub_dummy"

    .line 146
    .line 147
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_a

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C9(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 157
    .line 158
    if-eqz v1, :cond_11

    .line 159
    .line 160
    const/4 v2, 0x2

    .line 161
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogVideoList;->N(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_a
    const-string v5, "pgf_dummy"

    .line 166
    .line 167
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_b

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C9(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 177
    .line 178
    if-eqz v1, :cond_11

    .line 179
    .line 180
    const/4 v2, 0x3

    .line 181
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogVideoList;->N(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_b
    const-string v5, "vkv_dummy"

    .line 186
    .line 187
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_e

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C9(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 197
    .line 198
    if-nez v1, :cond_c

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Pi:Ljava/util/List;

    .line 202
    .line 203
    if-eqz v1, :cond_d

    .line 204
    .line 205
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_d

    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 212
    .line 213
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Pi:Ljava/util/List;

    .line 214
    .line 215
    const/4 v4, 0x5

    .line 216
    iput v4, v1, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 217
    .line 218
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 219
    .line 220
    iput v3, v1, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 226
    .line 227
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$187;

    .line 228
    .line 229
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$187;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/dialog/DialogVideoList;->P(Landroid/view/ViewGroup;Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_e
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 237
    .line 238
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebNestView;->getDownList()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    if-eqz v5, :cond_f

    .line 243
    .line 244
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-le v5, v6, :cond_f

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->C9(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_f
    if-nez v1, :cond_10

    .line 255
    .line 256
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/web/WebViewActivity;->k9(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_10
    invoke-virtual {v0, v2, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->M7(Ljava/lang/String;IZ)V

    .line 261
    .line 262
    .line 263
    :cond_11
    :goto_0
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Hg:Z

    .line 264
    .line 265
    return-void
.end method

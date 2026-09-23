.class Lcom/mycompany/app/web/WebViewActivity$501$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/wview/WebFltView$FltViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$501;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$501;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$501$1;->a:Lcom/mycompany/app/web/WebViewActivity$501;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$501$1;->a:Lcom/mycompany/app/web/WebViewActivity$501;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/mycompany/app/web/WebViewActivity$501;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Oa:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->O4()V

    .line 12
    .line 13
    .line 14
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Ga:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz p2, :cond_1c

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    if-ge v2, v0, :cond_1a

    .line 38
    .line 39
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 44
    .line 45
    if-eqz v5, :cond_19

    .line 46
    .line 47
    iget-object v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_2
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 54
    .line 55
    add-int/lit8 v7, v3, 0x1

    .line 56
    .line 57
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_account_circle_dark_24:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_account_circle_black_24:I

    .line 65
    .line 66
    :goto_1
    iget-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v6, v3, v8, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x2

    .line 77
    .line 78
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 79
    .line 80
    if-eqz v8, :cond_4

    .line 81
    .line 82
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    .line 86
    .line 87
    :goto_2
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v5, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const/4 v9, 0x2

    .line 97
    if-ge v5, v9, :cond_6

    .line 98
    .line 99
    :goto_3
    const-string v5, "*"

    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_6
    if-ne v5, v9, :cond_7

    .line 104
    .line 105
    const-string v5, "**"

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_7
    const/4 v9, 0x3

    .line 110
    if-ne v5, v9, :cond_8

    .line 111
    .line 112
    const-string v5, "***"

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_8
    const/4 v9, 0x4

    .line 117
    if-ne v5, v9, :cond_9

    .line 118
    .line 119
    const-string v5, "****"

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_9
    const/4 v9, 0x5

    .line 124
    if-ne v5, v9, :cond_a

    .line 125
    .line 126
    const-string v5, "*****"

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_a
    const/4 v9, 0x6

    .line 131
    if-ne v5, v9, :cond_b

    .line 132
    .line 133
    const-string v5, "******"

    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_b
    const/4 v9, 0x7

    .line 138
    if-ne v5, v9, :cond_c

    .line 139
    .line 140
    const-string v5, "*******"

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_c
    const/16 v9, 0x8

    .line 144
    .line 145
    if-ne v5, v9, :cond_d

    .line 146
    .line 147
    const-string v5, "********"

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_d
    const/16 v9, 0x9

    .line 151
    .line 152
    if-ne v5, v9, :cond_e

    .line 153
    .line 154
    const-string v5, "*********"

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_e
    const/16 v9, 0xa

    .line 158
    .line 159
    if-ne v5, v9, :cond_f

    .line 160
    .line 161
    const-string v5, "**********"

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_f
    const/16 v9, 0xb

    .line 165
    .line 166
    if-ne v5, v9, :cond_10

    .line 167
    .line 168
    const-string v5, "***********"

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_10
    const/16 v9, 0xc

    .line 172
    .line 173
    if-ne v5, v9, :cond_11

    .line 174
    .line 175
    const-string v5, "************"

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_11
    const/16 v9, 0xd

    .line 179
    .line 180
    if-ne v5, v9, :cond_12

    .line 181
    .line 182
    const-string v5, "*************"

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_12
    const/16 v9, 0xe

    .line 186
    .line 187
    if-ne v5, v9, :cond_13

    .line 188
    .line 189
    const-string v5, "**************"

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_13
    const/16 v9, 0xf

    .line 193
    .line 194
    if-ne v5, v9, :cond_14

    .line 195
    .line 196
    const-string v5, "***************"

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_14
    const/16 v9, 0x10

    .line 200
    .line 201
    if-ne v5, v9, :cond_15

    .line 202
    .line 203
    const-string v5, "****************"

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_15
    const/16 v9, 0x11

    .line 207
    .line 208
    if-ne v5, v9, :cond_16

    .line 209
    .line 210
    const-string v5, "*****************"

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_16
    const/16 v9, 0x12

    .line 214
    .line 215
    if-ne v5, v9, :cond_17

    .line 216
    .line 217
    const-string v5, "******************"

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_17
    const/16 v9, 0x13

    .line 221
    .line 222
    if-ne v5, v9, :cond_18

    .line 223
    .line 224
    const-string v5, "*******************"

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_18
    const-string v5, "********************"

    .line 228
    .line 229
    :goto_4
    invoke-direct {v6, v7, v8, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_19
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_1a
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 240
    .line 241
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 242
    .line 243
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 244
    .line 245
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$503;

    .line 246
    .line 247
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$503;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 248
    .line 249
    .line 250
    move-object v3, p1

    .line 251
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 252
    .line 253
    .line 254
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Oa:Lcom/mycompany/app/view/MyPopupMenu;

    .line 255
    .line 256
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 257
    .line 258
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 259
    .line 260
    if-nez p1, :cond_1b

    .line 261
    .line 262
    :goto_6
    return-void

    .line 263
    :cond_1b
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$504;

    .line 264
    .line 265
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$504;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_1c
    :goto_7
    sget p1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 273
    .line 274
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$501$1;->a:Lcom/mycompany/app/web/WebViewActivity$501;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$501;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->N4()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$501$1;->a:Lcom/mycompany/app/web/WebViewActivity$501;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$501;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->A1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

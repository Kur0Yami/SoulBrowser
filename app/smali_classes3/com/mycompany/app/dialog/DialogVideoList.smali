.class public Lcom/mycompany/app/dialog/DialogVideoList;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;,
        Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;,
        Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;,
        Lcom/mycompany/app/dialog/DialogVideoList$SortSub;
    }
.end annotation


# static fields
.field public static final synthetic O0:I


# instance fields
.field public A0:Lcom/mycompany/app/main/MainDownAdapter;

.field public B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

.field public C0:Ljava/util/List;

.field public D0:I

.field public E0:Lcom/mycompany/app/dialog/DialogDownLink;

.field public F0:I

.field public G0:Z

.field public H0:Z

.field public I0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public J0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public K0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public L0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public M0:Ljava/lang/String;

.field public N0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

.field public d0:Lcom/mycompany/app/web/WebNestView;

.field public e0:Ljava/lang/String;

.field public final f0:I

.field public g0:I

.field public h0:Z

.field public i0:Landroid/view/ViewGroup;

.field public j0:Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;

.field public k0:Lcom/mycompany/app/web/WebVkvLoad;

.field public l0:Ljava/util/List;

.field public m0:Lcom/mycompany/app/view/MyDialogLinear;

.field public final n0:Z

.field public o0:Lcom/mycompany/app/view/MyAdFrame;

.field public p0:Lcom/mycompany/app/view/MyAdNative;

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:Lcom/mycompany/app/view/MyRoundLinear;

.field public u0:Lcom/mycompany/app/view/MyLineFrame;

.field public v0:Landroid/widget/ImageView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Lcom/mycompany/app/view/MyRecyclerView;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;IZLcom/mycompany/app/dialog/DialogVideoList$VideoListListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogVideoList;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogVideoList;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput p4, p0, Lcom/mycompany/app/dialog/DialogVideoList;->f0:I

    .line 19
    .line 20
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogVideoList;->n0:Z

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean p1, p2, Lcom/mycompany/app/web/WebNestView;->m0:Z

    .line 27
    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 32
    .line 33
    iget-boolean p3, p0, Lcom/mycompany/app/dialog/DialogVideoList;->h0:Z

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->h0:Z

    .line 39
    .line 40
    const-string p3, "function mySrc(src){return src&&(src.indexOf(\'http\')==0)&&!src.includes(\'youtube.com\');}(function(){var src=null;var pst=null;var ele=document.querySelector(\"video\");if(ele){if(mySrc(ele.src)){src=ele.src;}else{var el2=ele.querySelector(\"source[type*=\'video\']\");if(el2){if(mySrc(el2.src)){src=el2.src;}}}pst=ele.poster;}android.onVidDe2(src,pst);})();"

    .line 41
    .line 42
    invoke-static {p2, p3, p1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogVideoList$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogVideoList$1;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->q0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->r0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->s0:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->s0:Z

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$6;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoList$6;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_22

    .line 14
    .line 15
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getDownUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x1

    .line 25
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getDownList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v8, v2

    .line 41
    :goto_0
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getDownPoster()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    if-eqz v9, :cond_2

    .line 46
    .line 47
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    move v10, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v10, v2

    .line 56
    :goto_1
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getDownloaded()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    if-eqz v11, :cond_3

    .line 61
    .line 62
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-nez v12, :cond_3

    .line 67
    .line 68
    move v12, v6

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v12, v2

    .line 71
    :goto_2
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getDownFail()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    if-eqz v13, :cond_4

    .line 76
    .line 77
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-nez v14, :cond_4

    .line 82
    .line 83
    move v14, v6

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    move v14, v2

    .line 86
    :goto_3
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getPubList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    const-string v1, "izle:"

    .line 95
    .line 96
    if-nez v15, :cond_18

    .line 97
    .line 98
    const-string v15, "soundcloud.com"

    .line 99
    .line 100
    invoke-virtual {v5, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    if-eqz v15, :cond_c

    .line 105
    .line 106
    move v3, v6

    .line 107
    const/4 v1, 0x0

    .line 108
    :goto_4
    if-ge v1, v8, :cond_b

    .line 109
    .line 110
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 111
    .line 112
    if-nez v5, :cond_5

    .line 113
    .line 114
    goto/16 :goto_22

    .line 115
    .line 116
    :cond_5
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v5}, Lcom/mycompany/app/dialog/DialogVideoList;->F(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-eqz v15, :cond_6

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_6
    if-le v3, v6, :cond_7

    .line 130
    .line 131
    const-string v15, "Sound ("

    .line 132
    .line 133
    const-string v6, ")"

    .line 134
    .line 135
    invoke-static {v3, v15, v6}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    goto :goto_5

    .line 140
    :cond_7
    const-string v6, "Sound"

    .line 141
    .line 142
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    new-instance v15, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 145
    .line 146
    const-string v2, "MP3"

    .line 147
    .line 148
    invoke-direct {v15, v1, v6, v2}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    if-eqz v14, :cond_8

    .line 152
    .line 153
    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    const/4 v2, 0x2

    .line 160
    iput v2, v15, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    if-eqz v12, :cond_9

    .line 164
    .line 165
    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_9

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    iput v2, v15, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 173
    .line 174
    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    .line 175
    .line 176
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-ge v1, v2, :cond_a

    .line 181
    .line 182
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/String;

    .line 187
    .line 188
    iput-object v2, v15, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 189
    .line 190
    :cond_a
    iput-object v5, v15, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    goto :goto_4

    .line 199
    :cond_b
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    iput v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 203
    .line 204
    return-void

    .line 205
    :cond_c
    const-string v2, "onlyfans.com"

    .line 206
    .line 207
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_d

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    const/4 v5, 0x0

    .line 215
    const/4 v6, 0x1

    .line 216
    goto/16 :goto_e

    .line 217
    .line 218
    :cond_d
    const-string v2, "pornhub.com"

    .line 219
    .line 220
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_e

    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    const/4 v5, 0x1

    .line 228
    :goto_8
    const/4 v6, 0x0

    .line 229
    goto/16 :goto_e

    .line 230
    .line 231
    :cond_e
    const-string v2, "giphy.com"

    .line 232
    .line 233
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_f

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v5, 0x2

    .line 241
    goto :goto_8

    .line 242
    :cond_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_10

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_10
    const-string v2, "dcinside.com"

    .line 250
    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_17

    .line 256
    .line 257
    const-string v2, "dcinside.co.kr"

    .line 258
    .line 259
    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_11

    .line 264
    .line 265
    goto :goto_d

    .line 266
    :cond_11
    :goto_9
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->L5(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_18

    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    const/4 v5, 0x0

    .line 274
    :goto_a
    if-ge v2, v8, :cond_16

    .line 275
    .line 276
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 277
    .line 278
    if-nez v6, :cond_12

    .line 279
    .line 280
    goto/16 :goto_22

    .line 281
    .line 282
    :cond_12
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    check-cast v6, Ljava/lang/String;

    .line 287
    .line 288
    if-nez v6, :cond_13

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_13
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    if-nez v15, :cond_14

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_14
    if-nez v5, :cond_15

    .line 299
    .line 300
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    goto :goto_b

    .line 305
    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_16
    add-int/lit8 v2, v5, -0x8

    .line 317
    .line 318
    :goto_c
    const/4 v5, 0x0

    .line 319
    goto :goto_8

    .line 320
    :cond_17
    :goto_d
    const/4 v2, 0x0

    .line 321
    const/4 v5, 0x3

    .line 322
    goto :goto_8

    .line 323
    :cond_18
    const/4 v2, 0x0

    .line 324
    goto :goto_c

    .line 325
    :goto_e
    move-object/from16 v21, v3

    .line 326
    .line 327
    const/4 v3, 0x0

    .line 328
    const/4 v15, 0x0

    .line 329
    const/16 v20, 0x0

    .line 330
    .line 331
    :goto_f
    if-ge v15, v8, :cond_3b

    .line 332
    .line 333
    move/from16 v22, v6

    .line 334
    .line 335
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 336
    .line 337
    if-nez v6, :cond_19

    .line 338
    .line 339
    goto/16 :goto_22

    .line 340
    .line 341
    :cond_19
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v6}, Lcom/mycompany/app/dialog/DialogVideoList;->F(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v23

    .line 351
    if-eqz v23, :cond_1a

    .line 352
    .line 353
    move-object/from16 v23, v1

    .line 354
    .line 355
    move/from16 v24, v2

    .line 356
    .line 357
    move-object/from16 v16, v7

    .line 358
    .line 359
    goto/16 :goto_20

    .line 360
    .line 361
    :cond_1a
    if-lez v2, :cond_1b

    .line 362
    .line 363
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v23

    .line 367
    if-eqz v23, :cond_1b

    .line 368
    .line 369
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v23

    .line 373
    move/from16 v24, v2

    .line 374
    .line 375
    move-object/from16 v16, v7

    .line 376
    .line 377
    move-object/from16 v2, v23

    .line 378
    .line 379
    const/4 v7, 0x0

    .line 380
    move-object/from16 v23, v1

    .line 381
    .line 382
    const/4 v1, 0x1

    .line 383
    goto :goto_10

    .line 384
    :cond_1b
    move-object/from16 v23, v1

    .line 385
    .line 386
    const-string v1, "video/*"

    .line 387
    .line 388
    move/from16 v24, v2

    .line 389
    .line 390
    move-object/from16 v16, v7

    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    const/4 v7, 0x0

    .line 394
    invoke-static {v6, v7, v1, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    move-object v2, v1

    .line 399
    const/4 v1, 0x0

    .line 400
    :goto_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 401
    .line 402
    .line 403
    move-result v25

    .line 404
    if-eqz v25, :cond_1c

    .line 405
    .line 406
    goto/16 :goto_20

    .line 407
    .line 408
    :cond_1c
    const-string v7, ".mp4"

    .line 409
    .line 410
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    const-string v26, "MP4"

    .line 415
    .line 416
    if-nez v7, :cond_1e

    .line 417
    .line 418
    const-string v7, ".m3u8"

    .line 419
    .line 420
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-nez v7, :cond_1e

    .line 425
    .line 426
    if-nez v1, :cond_1e

    .line 427
    .line 428
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->r5(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_1d

    .line 433
    .line 434
    goto :goto_11

    .line 435
    :cond_1d
    const/4 v1, 0x0

    .line 436
    const/4 v7, 0x0

    .line 437
    goto :goto_12

    .line 438
    :cond_1e
    :goto_11
    move-object/from16 v7, v26

    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    :goto_12
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v27

    .line 449
    if-eqz v27, :cond_1f

    .line 450
    .line 451
    goto/16 :goto_20

    .line 452
    .line 453
    :cond_1f
    move/from16 v27, v1

    .line 454
    .line 455
    const/4 v1, 0x1

    .line 456
    if-ne v5, v1, :cond_27

    .line 457
    .line 458
    if-eqz v21, :cond_22

    .line 459
    .line 460
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v28

    .line 468
    if-eqz v28, :cond_22

    .line 469
    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v28

    .line 474
    move-object/from16 v29, v1

    .line 475
    .line 476
    move-object/from16 v1, v28

    .line 477
    .line 478
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 479
    .line 480
    move-object/from16 v28, v2

    .line 481
    .line 482
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 483
    .line 484
    if-nez v2, :cond_20

    .line 485
    .line 486
    goto/16 :goto_22

    .line 487
    .line 488
    :cond_20
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_21

    .line 495
    .line 496
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->c:Ljava/lang/String;

    .line 497
    .line 498
    move-object/from16 v7, v26

    .line 499
    .line 500
    const/4 v1, 0x1

    .line 501
    const/16 v27, 0x1

    .line 502
    .line 503
    goto :goto_14

    .line 504
    :cond_21
    move-object/from16 v2, v28

    .line 505
    .line 506
    move-object/from16 v1, v29

    .line 507
    .line 508
    goto :goto_13

    .line 509
    :cond_22
    move-object/from16 v28, v2

    .line 510
    .line 511
    move-object/from16 v2, v28

    .line 512
    .line 513
    const/4 v1, 0x0

    .line 514
    :goto_14
    if-nez v1, :cond_25

    .line 515
    .line 516
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_23

    .line 521
    .line 522
    move-object/from16 v28, v7

    .line 523
    .line 524
    const/4 v1, 0x0

    .line 525
    goto :goto_15

    .line 526
    :cond_23
    move-object/from16 v28, v7

    .line 527
    .line 528
    const/4 v1, 0x0

    .line 529
    invoke-static {v6, v1}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    const-string v1, "gif"

    .line 534
    .line 535
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    :goto_15
    if-eqz v1, :cond_26

    .line 540
    .line 541
    const/16 v1, 0x29

    .line 542
    .line 543
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-ltz v1, :cond_24

    .line 548
    .line 549
    add-int/lit8 v1, v1, 0x1

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-ge v1, v7, :cond_24

    .line 556
    .line 557
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    move-object v2, v1

    .line 562
    :cond_24
    const-string v7, "GIF"

    .line 563
    .line 564
    const/4 v1, 0x1

    .line 565
    const/16 v27, 0x1

    .line 566
    .line 567
    goto :goto_17

    .line 568
    :cond_25
    move-object/from16 v28, v7

    .line 569
    .line 570
    :cond_26
    move-object/from16 v7, v28

    .line 571
    .line 572
    :goto_16
    const/4 v1, 0x0

    .line 573
    goto :goto_17

    .line 574
    :cond_27
    move-object/from16 v28, v2

    .line 575
    .line 576
    goto :goto_16

    .line 577
    :goto_17
    if-eqz v22, :cond_2b

    .line 578
    .line 579
    if-nez v2, :cond_28

    .line 580
    .line 581
    move/from16 v28, v1

    .line 582
    .line 583
    :goto_18
    move-object/from16 v29, v7

    .line 584
    .line 585
    const/4 v2, 0x0

    .line 586
    goto :goto_19

    .line 587
    :cond_28
    move/from16 v28, v1

    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-nez v1, :cond_29

    .line 594
    .line 595
    goto :goto_18

    .line 596
    :cond_29
    move-object/from16 v29, v7

    .line 597
    .line 598
    const/16 v7, 0x5f

    .line 599
    .line 600
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    if-lez v7, :cond_2c

    .line 605
    .line 606
    add-int/lit8 v7, v7, 0x1

    .line 607
    .line 608
    if-lt v7, v1, :cond_2a

    .line 609
    .line 610
    goto :goto_19

    .line 611
    :cond_2a
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    goto :goto_19

    .line 616
    :cond_2b
    move/from16 v28, v1

    .line 617
    .line 618
    move-object/from16 v29, v7

    .line 619
    .line 620
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->S2(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    :cond_2c
    :goto_19
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_2d

    .line 629
    .line 630
    const/4 v1, 0x1

    .line 631
    invoke-static {v6, v1}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    goto :goto_1a

    .line 636
    :cond_2d
    move-object/from16 v7, v29

    .line 637
    .line 638
    :goto_1a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    if-eqz v1, :cond_2e

    .line 643
    .line 644
    :goto_1b
    move-object/from16 v1, v26

    .line 645
    .line 646
    move-object/from16 v26, v3

    .line 647
    .line 648
    move-object v3, v1

    .line 649
    const/4 v1, 0x0

    .line 650
    const/16 v27, 0x1

    .line 651
    .line 652
    goto :goto_1c

    .line 653
    :cond_2e
    const-string v1, "PHP"

    .line 654
    .line 655
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-eqz v1, :cond_2f

    .line 660
    .line 661
    goto :goto_1b

    .line 662
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    move-object/from16 v26, v3

    .line 667
    .line 668
    const/4 v3, 0x4

    .line 669
    if-le v1, v3, :cond_30

    .line 670
    .line 671
    const/4 v1, 0x0

    .line 672
    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    goto :goto_1c

    .line 677
    :cond_30
    const/4 v1, 0x0

    .line 678
    move-object v3, v7

    .line 679
    :goto_1c
    new-instance v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 680
    .line 681
    invoke-direct {v7, v15, v2, v3}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    if-eqz v14, :cond_31

    .line 685
    .line 686
    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v17

    .line 690
    if-eqz v17, :cond_31

    .line 691
    .line 692
    const/4 v1, 0x2

    .line 693
    iput v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 694
    .line 695
    goto :goto_1d

    .line 696
    :cond_31
    if-eqz v12, :cond_32

    .line 697
    .line 698
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    if-eqz v1, :cond_32

    .line 703
    .line 704
    const/4 v1, 0x1

    .line 705
    iput v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 706
    .line 707
    :cond_32
    :goto_1d
    if-eqz v28, :cond_34

    .line 708
    .line 709
    if-eqz v10, :cond_33

    .line 710
    .line 711
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-ge v15, v1, :cond_33

    .line 716
    .line 717
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    check-cast v1, Ljava/lang/String;

    .line 722
    .line 723
    iput-object v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 724
    .line 725
    :cond_33
    iget-object v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 726
    .line 727
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_37

    .line 732
    .line 733
    iput-object v6, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 734
    .line 735
    goto :goto_1e

    .line 736
    :cond_34
    const/4 v1, 0x2

    .line 737
    if-ne v5, v1, :cond_35

    .line 738
    .line 739
    iput-object v6, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 740
    .line 741
    goto :goto_1e

    .line 742
    :cond_35
    const/4 v1, 0x3

    .line 743
    if-ne v5, v1, :cond_36

    .line 744
    .line 745
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->l5(Ljava/lang/String;)Z

    .line 746
    .line 747
    .line 748
    move-result v18

    .line 749
    if-eqz v18, :cond_36

    .line 750
    .line 751
    iput-object v6, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 752
    .line 753
    goto :goto_1e

    .line 754
    :cond_36
    if-eqz v10, :cond_37

    .line 755
    .line 756
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-ge v15, v1, :cond_37

    .line 761
    .line 762
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    check-cast v1, Ljava/lang/String;

    .line 767
    .line 768
    iput-object v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 769
    .line 770
    :cond_37
    :goto_1e
    if-nez v27, :cond_38

    .line 771
    .line 772
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-nez v1, :cond_38

    .line 777
    .line 778
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 779
    .line 780
    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->H(Ljava/lang/String;)Z

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    iput-boolean v1, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->g:Z

    .line 789
    .line 790
    if-eqz v1, :cond_38

    .line 791
    .line 792
    const/16 v20, 0x1

    .line 793
    .line 794
    :cond_38
    iput-object v6, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 795
    .line 796
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    if-nez v22, :cond_3a

    .line 800
    .line 801
    if-nez v26, :cond_39

    .line 802
    .line 803
    new-instance v3, Ljava/util/ArrayList;

    .line 804
    .line 805
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .line 807
    .line 808
    goto :goto_1f

    .line 809
    :cond_39
    move-object/from16 v3, v26

    .line 810
    .line 811
    :goto_1f
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    goto :goto_20

    .line 815
    :cond_3a
    move-object/from16 v3, v26

    .line 816
    .line 817
    :goto_20
    add-int/lit8 v15, v15, 0x1

    .line 818
    .line 819
    move-object/from16 v7, v16

    .line 820
    .line 821
    move/from16 v6, v22

    .line 822
    .line 823
    move-object/from16 v1, v23

    .line 824
    .line 825
    move/from16 v2, v24

    .line 826
    .line 827
    goto/16 :goto_f

    .line 828
    .line 829
    :cond_3b
    if-eqz v20, :cond_3d

    .line 830
    .line 831
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$SortSub;

    .line 832
    .line 833
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 834
    .line 835
    .line 836
    :try_start_0
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .line 838
    .line 839
    :catch_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    const/4 v2, 0x0

    .line 844
    const/4 v3, 0x0

    .line 845
    :goto_21
    if-ge v3, v1, :cond_3d

    .line 846
    .line 847
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v6

    .line 851
    add-int/lit8 v3, v3, 0x1

    .line 852
    .line 853
    check-cast v6, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 854
    .line 855
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 856
    .line 857
    if-nez v7, :cond_3c

    .line 858
    .line 859
    goto :goto_22

    .line 860
    :cond_3c
    iput v2, v6, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 861
    .line 862
    const/16 v19, 0x1

    .line 863
    .line 864
    add-int/lit8 v2, v2, 0x1

    .line 865
    .line 866
    goto :goto_21

    .line 867
    :cond_3d
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 868
    .line 869
    iput v5, v0, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 870
    .line 871
    :goto_22
    return-void
.end method

.method public static F(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "vid_dummy"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const-string v0, "pub_dummy"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "pgf_dummy"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string v0, "vkv_dummy"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 40
    return p0
.end method


# virtual methods
.method public final D()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoList;->E()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoList;->I()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 42
    .line 43
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 51
    .line 52
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 60
    .line 61
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->A0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainDownAdapter;->x()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->A0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 69
    .line 70
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->e0:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->l0:Ljava/util/List;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->v0:Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->E0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownLink;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->E0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->L0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 12
    .line 13
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    iput v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final H(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :cond_3
    if-eqz p1, :cond_5

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final I()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->k0:Lcom/mycompany/app/web/WebVkvLoad;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebVkvLoad;->f:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebVkvLoad;->f:Z

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 26
    .line 27
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->b:Landroid/content/Context;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->c:Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->d:Landroid/view/ViewGroup;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->g:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->k0:Lcom/mycompany/app/web/WebVkvLoad;

    .line 38
    .line 39
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->i0:Landroid/view/ViewGroup;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->j0:Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;

    .line 42
    .line 43
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogVideoList;->H(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const v1, -0xdededf

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, -0x1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->p0:Lcom/mycompany/app/view/MyAdNative;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAdNative;->setDarkMode(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogVideoList;->H(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final K()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 7
    .line 8
    iget v4, p0, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogVideoList;->L(Z)V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x1

    .line 31
    if-ne v2, v7, :cond_6

    .line 32
    .line 33
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->G0:Z

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iput-boolean v7, p0, Lcom/mycompany/app/dialog/DialogVideoList;->G0:Z

    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->I0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$13;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoList$13;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoList;->M()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->l0:Ljava/util/List;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogVideoList;->l0:Ljava/util/List;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogVideoList;->e0:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v6, Lcom/mycompany/app/dialog/DialogVideoList$10;

    .line 94
    .line 95
    invoke-direct {v6, p0}, Lcom/mycompany/app/dialog/DialogVideoList$10;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/main/MainDownAdapter;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->A0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 104
    .line 105
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 109
    .line 110
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$11;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoList$11;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->A0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 126
    .line 127
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$12;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoList$12;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_7
    :goto_1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 137
    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;->d()V

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoList;->M()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final L(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->F0:I

    .line 7
    .line 8
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const v1, -0x50506

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v1, -0x1000000

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->f0:I

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_down_video:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    sget v1, Lnet/kaki87/soul2/testing/R$string;->video_link_1:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->u0:Lcom/mycompany/app/view/MyLineFrame;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->x0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogVideoList;->H(Z)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public final N(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->h0:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->h0:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    const-string v1, "function mySrc(src){return src&&(src.indexOf(\'http\')==0)&&!src.includes(\'youtube.com\');}(function(){var src=null;var pst=null;var ele=document.querySelector(\"video\");if(ele){if(mySrc(ele.src)){src=ele.src;}else{var el2=ele.querySelector(\"source[type*=\'video\']\");if(el2){if(mySrc(el2.src)){src=el2.src;}}}pst=ele.poster;}android.onVidDe2(src,pst);})();"

    .line 16
    .line 17
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v1, 0x2

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    const-string v1, "(function(){var htm=null;var eles=document.querySelectorAll(\"div[id=\'mobileContainer\']>script[type=\'text/javascript\']\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.includes(\'mediaDefinitions\')){htm=val;break;}}}android.onVidDe3(htm,1);})();"

    .line 27
    .line 28
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 v1, 0x3

    .line 33
    if-ne p1, v1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    const-string v1, "(function(){var htm=null;var eles=document.querySelectorAll(\"div[id=\'js-gifWebMWrapper\'][data-gif^=\'http\']\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var val=ele.dataset.gif;if(!val)continue;if(ele.dataset.jpg)val+=\'!@!\'+ele.dataset.jpg;if(ele.dataset.mp4)val+=\'!@!\'+ele.dataset.mp4;if(ele.dataset.webm)val+=\'!@!\'+ele.dataset.webm;htm=val;break;}}android.onVidDe3(htm,2);})();"

    .line 38
    .line 39
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    const/4 v1, 0x4

    .line 44
    if-ne p1, v1, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 47
    .line 48
    const-string v1, "(function(){var htm=null;var ele=document.querySelector(\"script[id=\'initials-script\']\");if(ele){htm=ele.innerHTML;}android.onVidDe3(htm,3);})();"

    .line 49
    .line 50
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->d0:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getDownloaded()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    move v5, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v5, v3

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getDownFail()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    move v6, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v6, v3

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_8

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 65
    .line 66
    iget-object v8, p0, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 67
    .line 68
    if-nez v8, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iget-object v8, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v8, :cond_5

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    if-eqz v6, :cond_6

    .line 77
    .line 78
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_6

    .line 83
    .line 84
    const/4 v8, 0x2

    .line 85
    iput v8, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    if-eqz v5, :cond_7

    .line 89
    .line 90
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_7

    .line 95
    .line 96
    iput v4, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    iput v3, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    :goto_3
    return-void
.end method

.method public final P(Landroid/view/ViewGroup;Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->i0:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->j0:Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->k0:Lcom/mycompany/app/web/WebVkvLoad;

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebVkvLoad;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogVideoList;->e0:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Lcom/mycompany/app/dialog/DialogVideoList$9;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogVideoList$9;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0, p1, v1, v2}, Lcom/mycompany/app/web/WebVkvLoad;-><init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogVideoList;->k0:Lcom/mycompany/app/web/WebVkvLoad;

    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->H0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->H0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList;->o0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogVideoList;->D()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$8;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogVideoList$8;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

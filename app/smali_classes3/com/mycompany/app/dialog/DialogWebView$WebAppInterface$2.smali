.class Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->onDcList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$2;->c:Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface$2;->c:Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->U1:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->V1:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->W1:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->U1:Ljava/util/List;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->V1:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->W1:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const-string v6, "/"

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-nez v5, :cond_5

    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    array-length v5, v2

    .line 34
    if-lez v5, :cond_5

    .line 35
    .line 36
    array-length v5, v2

    .line 37
    move-object v9, v4

    .line 38
    move-object v10, v9

    .line 39
    move v8, v7

    .line 40
    :goto_0
    if-ge v8, v5, :cond_6

    .line 41
    .line 42
    aget-object v11, v2, v8

    .line 43
    .line 44
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    if-eqz v12, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogWebView;->e0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebDcListener;

    .line 52
    .line 53
    if-nez v12, :cond_1

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    invoke-interface {v12, v11, v1}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebDcListener;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-eqz v13, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-nez v9, :cond_3

    .line 69
    .line 70
    new-instance v9, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_3
    if-nez v10, :cond_4

    .line 76
    .line 77
    new-instance v10, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move-object v9, v4

    .line 92
    move-object v10, v9

    .line 93
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_d

    .line 98
    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_d

    .line 104
    .line 105
    array-length v2, v1

    .line 106
    if-lez v2, :cond_d

    .line 107
    .line 108
    array-length v2, v1

    .line 109
    move-object v5, v4

    .line 110
    move-object v6, v5

    .line 111
    move v3, v7

    .line 112
    :goto_2
    if-ge v3, v2, :cond_c

    .line 113
    .line 114
    aget-object v8, v1, v3

    .line 115
    .line 116
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_7

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogWebView;->e0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebDcListener;

    .line 124
    .line 125
    if-nez v11, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_8
    invoke-interface {v11, v8, v4}, Lcom/mycompany/app/dialog/DialogWebView$DialogWebDcListener;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_9

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_9
    if-nez v5, :cond_a

    .line 140
    .line 141
    new-instance v5, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_a
    if-nez v6, :cond_b

    .line 147
    .line 148
    new-instance v6, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    :cond_b
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_c
    move-object v4, v5

    .line 163
    goto :goto_4

    .line 164
    :cond_d
    move-object v6, v4

    .line 165
    :goto_4
    if-nez v9, :cond_e

    .line 166
    .line 167
    if-nez v4, :cond_e

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 171
    .line 172
    if-nez v1, :cond_f

    .line 173
    .line 174
    :goto_5
    return-void

    .line 175
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    if-eqz v9, :cond_10

    .line 181
    .line 182
    const-string v2, "function myDcMem(btn,path,text){if(!btn)return null;if(btn.alt==path){btn.innerHTML=text;btn.style.fontSize=\'13px\';}}"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_10
    if-eqz v4, :cond_11

    .line 188
    .line 189
    const-string v2, "function myDcMe2(cld,path,text){if(!cld)return null;for(var i=0;i<cld.childNodes.length;i++){var btn=cld.childNodes[i];var dat=btn.innerHTML;if(dat==path){btn.innerHTML+=\' \'+text;break;}}}"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    :cond_11
    const-string v2, "(function(){"

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v2, "}}"

    .line 200
    .line 201
    const-string v3, "\');"

    .line 202
    .line 203
    const-string v5, "\',\'"

    .line 204
    .line 205
    if-eqz v9, :cond_13

    .line 206
    .line 207
    const-string v8, "var els=document.querySelectorAll(\"[id=\'sb_btn_dc\']\");if(els&&(els.length>0)){for(var i=0;i<els.length;i++){"

    .line 208
    .line 209
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    move v11, v7

    .line 217
    :goto_6
    if-ge v11, v8, :cond_12

    .line 218
    .line 219
    const-string v12, "myDcMem(els[i],\'"

    .line 220
    .line 221
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    check-cast v12, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    add-int/lit8 v11, v11, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_13
    if-eqz v4, :cond_15

    .line 255
    .line 256
    const-string v8, "var el2=document.querySelectorAll(\"ul[class=\'ginfo\'],ul[class=\'ginfo \']\");if(el2&&(el2.length>0)){for(var i=0;i<el2.length;i++){"

    .line 257
    .line 258
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    :goto_7
    if-ge v7, v8, :cond_14

    .line 266
    .line 267
    const-string v9, "myDcMe2(el2[i],\'"

    .line 268
    .line 269
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    check-cast v9, Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    check-cast v9, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    add-int/lit8 v7, v7, 0x1

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    :cond_15
    const-string v2, "})();"

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const/4 v2, 0x1

    .line 314
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    return-void
.end method

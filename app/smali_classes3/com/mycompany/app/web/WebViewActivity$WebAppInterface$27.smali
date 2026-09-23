.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onDcList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$27;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$27;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->On:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Pn:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Qn:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->On:Ljava/util/List;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Pn:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Qn:Ljava/lang/String;

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
    if-nez v5, :cond_4

    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    array-length v5, v2

    .line 34
    if-lez v5, :cond_4

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
    if-ge v8, v5, :cond_5

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
    invoke-static {v11, v1}, Lcom/mycompany/app/web/WebViewActivity;->X2(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-virtual {v0, v11, v12}, Lcom/mycompany/app/web/WebViewActivity;->Y2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    if-nez v9, :cond_2

    .line 67
    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-nez v10, :cond_3

    .line 74
    .line 75
    new-instance v10, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move-object v9, v4

    .line 90
    move-object v10, v9

    .line 91
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_b

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_b

    .line 102
    .line 103
    array-length v2, v1

    .line 104
    if-lez v2, :cond_b

    .line 105
    .line 106
    array-length v2, v1

    .line 107
    move-object v5, v4

    .line 108
    move-object v6, v5

    .line 109
    move v3, v7

    .line 110
    :goto_2
    if-ge v3, v2, :cond_a

    .line 111
    .line 112
    aget-object v8, v1, v3

    .line 113
    .line 114
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    invoke-virtual {v0, v8, v4}, Lcom/mycompany/app/web/WebViewActivity;->Y2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    if-nez v5, :cond_8

    .line 133
    .line 134
    new-instance v5, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    :cond_8
    if-nez v6, :cond_9

    .line 140
    .line 141
    new-instance v6, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    move-object v4, v5

    .line 156
    goto :goto_4

    .line 157
    :cond_b
    move-object v6, v4

    .line 158
    :goto_4
    if-nez v9, :cond_c

    .line 159
    .line 160
    if-nez v4, :cond_c

    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 165
    .line 166
    if-nez v1, :cond_d

    .line 167
    .line 168
    goto/16 :goto_7

    .line 169
    .line 170
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    if-eqz v9, :cond_e

    .line 176
    .line 177
    const-string v2, "function myDcMem(btn,path,text){if(!btn)return null;if(btn.alt==path){btn.innerHTML=text;btn.style.fontSize=myIsMemo(text)?\'13px\':\'15px\';}}"

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    :cond_e
    if-eqz v4, :cond_f

    .line 183
    .line 184
    const-string v2, "function myDcMe2(cld,path,text){if(!cld)return null;for(var i=0;i<cld.childNodes.length;i++){var btn=cld.childNodes[i];var dat=btn.innerHTML;if(dat==path){btn.innerHTML+=\' \'+text;break;}}}"

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :cond_f
    const-string v2, "(function(){"

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, "}}"

    .line 195
    .line 196
    const-string v3, "\');"

    .line 197
    .line 198
    const-string v5, "\',\'"

    .line 199
    .line 200
    if-eqz v9, :cond_11

    .line 201
    .line 202
    const-string v8, "var els=document.querySelectorAll(\"[id=\'sb_btn_dc\']\");if(els&&(els.length>0)){for(var i=0;i<els.length;i++){"

    .line 203
    .line 204
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    move v11, v7

    .line 212
    :goto_5
    if-ge v11, v8, :cond_10

    .line 213
    .line 214
    const-string v12, "myDcMem(els[i],\'"

    .line 215
    .line 216
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    check-cast v12, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    check-cast v12, Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    add-int/lit8 v11, v11, 0x1

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_11
    if-eqz v4, :cond_13

    .line 250
    .line 251
    const-string v8, "var el2=document.querySelectorAll(\"ul[class=\'ginfo\'],ul[class=\'ginfo \']\");if(el2&&(el2.length>0)){for(var i=0;i<el2.length;i++){"

    .line 252
    .line 253
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    :goto_6
    if-ge v7, v8, :cond_12

    .line 261
    .line 262
    const-string v9, "myDcMe2(el2[i],\'"

    .line 263
    .line 264
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    check-cast v9, Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    check-cast v9, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    add-int/lit8 v7, v7, 0x1

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    :cond_13
    const-string v2, "})();"

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    const/4 v3, 0x1

    .line 309
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 310
    .line 311
    .line 312
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->s0:Z

    .line 313
    .line 314
    if-eqz v1, :cond_15

    .line 315
    .line 316
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 317
    .line 318
    if-nez v1, :cond_14

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_14
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$634;

    .line 322
    .line 323
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$634;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    .line 328
    .line 329
    :cond_15
    :goto_7
    return-void
.end method

.class Lcom/mycompany/app/main/MainListView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$12;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$12;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->D()V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 22
    .line 23
    const/16 v2, 0x1a

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->sort:I

    .line 31
    .line 32
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 39
    .line 40
    const/16 v2, 0xc

    .line 41
    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    const/4 v4, 0x3

    .line 54
    const/4 v5, 0x2

    .line 55
    if-eq v1, v3, :cond_4

    .line 56
    .line 57
    if-eq v1, v5, :cond_4

    .line 58
    .line 59
    if-ne v1, v4, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v7, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    move v7, v3

    .line 65
    :goto_1
    const/16 v8, 0xd

    .line 66
    .line 67
    if-ne v1, v8, :cond_5

    .line 68
    .line 69
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 70
    .line 71
    sget v9, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 72
    .line 73
    invoke-direct {v1, v2, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 80
    .line 81
    sget v9, Lnet/kaki87/soul2/testing/R$string;->sort:I

    .line 82
    .line 83
    invoke-direct {v1, v3, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 92
    .line 93
    sget v9, Lnet/kaki87/soul2/testing/R$string;->show_recent:I

    .line 94
    .line 95
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 96
    .line 97
    invoke-static {v10}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-direct {v1, v5, v9, v2, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 108
    .line 109
    sget v9, Lnet/kaki87/soul2/testing/R$string;->show_detail:I

    .line 110
    .line 111
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 112
    .line 113
    invoke-static {v10}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    invoke-direct {v1, v4, v9, v2, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 124
    .line 125
    sget v9, Lnet/kaki87/soul2/testing/R$string;->show_single:I

    .line 126
    .line 127
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 128
    .line 129
    invoke-static {v10}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const/4 v11, 0x4

    .line 134
    invoke-direct {v1, v11, v9, v2, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    if-eqz v7, :cond_a

    .line 141
    .line 142
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 143
    .line 144
    sget v9, Lnet/kaki87/soul2/testing/R$string;->open_continue:I

    .line 145
    .line 146
    iget v10, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 147
    .line 148
    if-ne v10, v3, :cond_7

    .line 149
    .line 150
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    if-ne v10, v5, :cond_8

    .line 154
    .line 155
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    if-ne v10, v4, :cond_9

    .line 159
    .line 160
    sget-boolean v3, Lcom/mycompany/app/pref/PrefList;->q:Z

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_9
    move v3, v2

    .line 164
    :goto_2
    const/4 v4, 0x5

    .line 165
    invoke-direct {v1, v4, v9, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    :cond_a
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->g:Z

    .line 172
    .line 173
    if-nez v1, :cond_c

    .line 174
    .line 175
    const/4 v1, 0x6

    .line 176
    if-eqz v7, :cond_b

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 179
    .line 180
    sget v3, Lnet/kaki87/soul2/testing/R$string;->scan_dir:I

    .line 181
    .line 182
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 190
    .line 191
    if-ne v2, v8, :cond_c

    .line 192
    .line 193
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 194
    .line 195
    sget v3, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 196
    .line 197
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_c
    :goto_3
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 204
    .line 205
    const/16 v2, 0x12

    .line 206
    .line 207
    if-ne v1, v2, :cond_d

    .line 208
    .line 209
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 210
    .line 211
    const/4 v2, 0x7

    .line 212
    sget v3, Lnet/kaki87/soul2/testing/R$string;->history_time:I

    .line 213
    .line 214
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_d
    const/16 v2, 0x19

    .line 222
    .line 223
    if-eq v1, v2, :cond_e

    .line 224
    .line 225
    const/16 v2, 0x1b

    .line 226
    .line 227
    if-ne v1, v2, :cond_f

    .line 228
    .line 229
    :cond_e
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 230
    .line 231
    const/16 v2, 0xb

    .line 232
    .line 233
    sget v3, Lnet/kaki87/soul2/testing/R$string;->auto_update:I

    .line 234
    .line 235
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_f
    :goto_4
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 242
    .line 243
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 244
    .line 245
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 246
    .line 247
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 248
    .line 249
    new-instance v8, Lcom/mycompany/app/main/MainListView$78;

    .line 250
    .line 251
    invoke-direct {v8, v0}, Lcom/mycompany/app/main/MainListView$78;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 252
    .line 253
    .line 254
    move-object v5, p1

    .line 255
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 256
    .line 257
    .line 258
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 259
    .line 260
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 261
    .line 262
    if-eqz p1, :cond_10

    .line 263
    .line 264
    iput-object v2, p1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 265
    .line 266
    return-void

    .line 267
    :cond_10
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 268
    .line 269
    if-eqz p1, :cond_11

    .line 270
    .line 271
    iput-object v2, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 272
    .line 273
    return-void

    .line 274
    :cond_11
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 275
    .line 276
    if-eqz p1, :cond_12

    .line 277
    .line 278
    iput-object v2, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 279
    .line 280
    :cond_12
    :goto_5
    return-void
.end method

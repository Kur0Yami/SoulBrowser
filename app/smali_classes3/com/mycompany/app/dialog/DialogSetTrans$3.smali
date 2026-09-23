.class Lcom/mycompany/app/dialog/DialogSetTrans$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$3;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    sget p4, Lcom/mycompany/app/dialog/DialogSetTrans;->u0:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans$3;->a:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p2, :cond_e

    .line 9
    .line 10
    if-eq p2, v2, :cond_a

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq p2, p1, :cond_9

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq p2, p1, :cond_7

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-eq p2, p1, :cond_5

    .line 20
    .line 21
    const/4 p1, 0x6

    .line 22
    if-eq p2, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->m0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_3
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 47
    .line 48
    .line 49
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 50
    .line 51
    :cond_4
    new-instance p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    const/16 p2, 0x1e

    .line 57
    .line 58
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 59
    .line 60
    iput-boolean v2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 61
    .line 62
    sget p2, Lnet/kaki87/soul2/testing/R$string;->trans_except:I

    .line 63
    .line 64
    iput p2, p1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 65
    .line 66
    new-instance p2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 67
    .line 68
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p2, p3, p1, v1, p4}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 76
    .line 77
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTrans$10;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$10;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->t0:Z

    .line 87
    .line 88
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 91
    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    iput-boolean v2, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 95
    .line 96
    :cond_6
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 97
    .line 98
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 99
    .line 100
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 104
    .line 105
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_7
    iput-boolean p3, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->s0:Z

    .line 112
    .line 113
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->e0:Ljava/lang/String;

    .line 114
    .line 115
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 116
    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    iput-boolean v2, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 120
    .line 121
    :cond_8
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 122
    .line 123
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 124
    .line 125
    invoke-direct {p2, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->n0:Lcom/mycompany/app/dialog/DialogSetTrans$DialogTask;

    .line 129
    .line 130
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 137
    .line 138
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 139
    .line 140
    const-string p2, "mTransIcon"

    .line 141
    .line 142
    invoke-static {v1, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_a
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 147
    .line 148
    if-nez p1, :cond_b

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_b
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->m0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 153
    .line 154
    if-eqz p1, :cond_c

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_c
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->o0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 159
    .line 160
    if-eqz p1, :cond_d

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_d
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTrans;->B()V

    .line 165
    .line 166
    .line 167
    new-instance p1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 168
    .line 169
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 170
    .line 171
    new-instance p3, Lcom/mycompany/app/dialog/DialogSetTrans$8;

    .line 172
    .line 173
    invoke-direct {p3, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$8;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, p2, v1, p3}, Lcom/mycompany/app/dialog/DialogTransLang;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->m0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 180
    .line 181
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTrans$9;

    .line 182
    .line 183
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$9;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_e
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 191
    .line 192
    if-nez p2, :cond_f

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_f
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 196
    .line 197
    if-eqz p2, :cond_10

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_10
    if-eqz p2, :cond_11

    .line 201
    .line 202
    iput-object p4, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 205
    .line 206
    .line 207
    iput-object p4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 208
    .line 209
    :cond_11
    if-eqz p1, :cond_15

    .line 210
    .line 211
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 212
    .line 213
    if-nez p2, :cond_12

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    sget-object p2, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 222
    .line 223
    move p2, v1

    .line 224
    :goto_0
    const/4 p3, 0x3

    .line 225
    if-ge p2, p3, :cond_14

    .line 226
    .line 227
    sget-object p3, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 228
    .line 229
    aget p3, p3, p2

    .line 230
    .line 231
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 232
    .line 233
    sget-object v3, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 234
    .line 235
    aget v3, v3, p3

    .line 236
    .line 237
    sget v4, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 238
    .line 239
    if-ne v4, p3, :cond_13

    .line 240
    .line 241
    move p3, v2

    .line 242
    goto :goto_1

    .line 243
    :cond_13
    move p3, v1

    .line 244
    :goto_1
    invoke-direct {p4, p2, v3, p3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    add-int/lit8 p2, p2, 0x1

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_14
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 254
    .line 255
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 256
    .line 257
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 258
    .line 259
    iget-object v6, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 260
    .line 261
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 262
    .line 263
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetTrans$7;

    .line 264
    .line 265
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$7;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 266
    .line 267
    .line 268
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 269
    .line 270
    .line 271
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 272
    .line 273
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 274
    .line 275
    :cond_15
    :goto_2
    return-void
.end method

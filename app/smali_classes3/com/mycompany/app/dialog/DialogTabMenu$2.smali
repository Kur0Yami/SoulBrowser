.class Lcom/mycompany/app/dialog/DialogTabMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMenu$2;->c:Lcom/mycompany/app/dialog/DialogTabMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMenu$2;->c:Lcom/mycompany/app/dialog/DialogTabMenu;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->g0:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->a0:Landroid/content/Context;

    .line 21
    .line 22
    sget v4, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 23
    .line 24
    const-string v5, " ("

    .line 25
    .line 26
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->a0:Landroid/content/Context;

    .line 30
    .line 31
    sget v4, Lnet/kaki87/soul2/testing/R$string;->current_page:I

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ")"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 55
    .line 56
    const/4 v5, 0x7

    .line 57
    const/4 v6, 0x6

    .line 58
    const/4 v7, 0x5

    .line 59
    const/4 v8, 0x4

    .line 60
    const/4 v9, 0x3

    .line 61
    const/4 v10, 0x2

    .line 62
    const/4 v11, 0x1

    .line 63
    const/4 v12, 0x0

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 69
    .line 70
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_close_dark_24:I

    .line 71
    .line 72
    sget v13, Lnet/kaki87/soul2/testing/R$string;->delete_all_tab:I

    .line 73
    .line 74
    invoke-direct {v1, v12, v3, v13}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 81
    .line 82
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_close_right_dark_24:I

    .line 83
    .line 84
    sget v12, Lnet/kaki87/soul2/testing/R$string;->delete_other_tab:I

    .line 85
    .line 86
    invoke-direct {v1, v11, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 93
    .line 94
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_disabled_by_default_dark_24:I

    .line 95
    .line 96
    sget v12, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    .line 97
    .line 98
    invoke-direct {v1, v10, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 105
    .line 106
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_dark_24:I

    .line 107
    .line 108
    sget v10, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 109
    .line 110
    invoke-direct {v1, v9, v3, v10}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 117
    .line 118
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_dark_24:I

    .line 119
    .line 120
    invoke-direct {v1, v8, v3, v2}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(IILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 127
    .line 128
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_dark_24:I

    .line 129
    .line 130
    sget v3, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    .line 131
    .line 132
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 139
    .line 140
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_flip_to_back_dark_24:I

    .line 141
    .line 142
    sget v3, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    .line 143
    .line 144
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 151
    .line 152
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_dark_24:I

    .line 153
    .line 154
    sget v3, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 155
    .line 156
    invoke-direct {v1, v5, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    if-eqz v1, :cond_3

    .line 164
    .line 165
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 166
    .line 167
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_close_black_24:I

    .line 168
    .line 169
    sget v13, Lnet/kaki87/soul2/testing/R$string;->delete_all_tab:I

    .line 170
    .line 171
    invoke-direct {v1, v12, v3, v13}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 178
    .line 179
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_close_right_black_24:I

    .line 180
    .line 181
    sget v12, Lnet/kaki87/soul2/testing/R$string;->delete_other_tab:I

    .line 182
    .line 183
    invoke-direct {v1, v11, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 190
    .line 191
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_disabled_by_default_black_24:I

    .line 192
    .line 193
    sget v12, Lnet/kaki87/soul2/testing/R$string;->delete_tab:I

    .line 194
    .line 195
    invoke-direct {v1, v10, v3, v12}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 202
    .line 203
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_black_24:I

    .line 204
    .line 205
    sget v10, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 206
    .line 207
    invoke-direct {v1, v9, v3, v10}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 214
    .line 215
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_tab_new_right_black_24:I

    .line 216
    .line 217
    invoke-direct {v1, v8, v3, v2}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 224
    .line 225
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_library_add_black_24:I

    .line 226
    .line 227
    sget v3, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    .line 228
    .line 229
    invoke-direct {v1, v7, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 236
    .line 237
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_flip_to_back_black_24:I

    .line 238
    .line 239
    sget v3, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    .line 240
    .line 241
    invoke-direct {v1, v6, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 248
    .line 249
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_energy_savings_leaf_black_24:I

    .line 250
    .line 251
    sget v3, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 252
    .line 253
    invoke-direct {v1, v5, v2, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :goto_0
    new-instance v3, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 260
    .line 261
    new-instance v8, Lcom/mycompany/app/dialog/DialogTabMenu$3;

    .line 262
    .line 263
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogTabMenu$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMenu;)V

    .line 264
    .line 265
    .line 266
    const/4 v5, -0x1

    .line 267
    const/4 v6, 0x5

    .line 268
    const/4 v7, 0x0

    .line 269
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 270
    .line 271
    .line 272
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->f0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 273
    .line 274
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 275
    .line 276
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 280
    .line 281
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->f0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMenu;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 287
    .line 288
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMenu$4;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMenu$4;-><init>(Lcom/mycompany/app/dialog/DialogTabMenu;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 294
    .line 295
    .line 296
    :cond_4
    :goto_1
    return-void
.end method

.class public Lcom/mycompany/app/setting/SettingCast;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public X1:Lcom/mycompany/app/dialog/DialogCastGuide;

.field public Y1:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->web_stream:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    sget v5, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-boolean v3, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    xor-int/lit8 v10, v3, 0x1

    .line 63
    .line 64
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_20:I

    .line 69
    .line 70
    :goto_0
    move v15, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_20:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 81
    .line 82
    const/4 v13, 0x0

    .line 83
    invoke-direct {v5, v13, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 90
    .line 91
    sget v18, Lnet/kaki87/soul2/testing/R$string;->cast_on:I

    .line 92
    .line 93
    sget-boolean v21, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 94
    .line 95
    const/16 v22, 0x1

    .line 96
    .line 97
    const/16 v20, 0x1

    .line 98
    .line 99
    const/16 v17, 0x1

    .line 100
    .line 101
    const/16 v19, 0x0

    .line 102
    .line 103
    invoke-direct/range {v16 .. v22}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v5, v16

    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 112
    .line 113
    sget v7, Lnet/kaki87/soul2/testing/R$string;->repeat_play:I

    .line 114
    .line 115
    sget-boolean v9, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 116
    .line 117
    const/4 v12, 0x2

    .line 118
    const/4 v6, 0x2

    .line 119
    const/4 v8, 0x0

    .line 120
    move v11, v10

    .line 121
    invoke-direct/range {v5 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 128
    .line 129
    const/4 v6, 0x3

    .line 130
    invoke-direct {v5, v6, v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 137
    .line 138
    const/4 v14, 0x0

    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/4 v12, 0x4

    .line 142
    move v5, v13

    .line 143
    invoke-direct/range {v11 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 150
    .line 151
    const/4 v7, 0x2

    .line 152
    const/16 v8, 0x8

    .line 153
    .line 154
    const/4 v9, 0x7

    .line 155
    const/4 v10, 0x6

    .line 156
    const/4 v11, 0x5

    .line 157
    if-eqz v6, :cond_1

    .line 158
    .line 159
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 160
    .line 161
    sget v12, Lnet/kaki87/soul2/testing/R$string;->local_file:I

    .line 162
    .line 163
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_live_tv_dark_24:I

    .line 164
    .line 165
    invoke-direct {v6, v11, v12, v13, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 172
    .line 173
    sget v6, Lnet/kaki87/soul2/testing/R$string;->subtitle:I

    .line 174
    .line 175
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_subtitles_dark_24:I

    .line 176
    .line 177
    invoke-direct {v4, v10, v6, v11, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 184
    .line 185
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 186
    .line 187
    invoke-direct {v4, v9, v2, v6, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 194
    .line 195
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_24:I

    .line 196
    .line 197
    invoke-direct {v2, v8, v1, v4, v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_1
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 205
    .line 206
    sget v12, Lnet/kaki87/soul2/testing/R$string;->local_file:I

    .line 207
    .line 208
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_live_tv_black_24:I

    .line 209
    .line 210
    invoke-direct {v6, v11, v12, v13, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 217
    .line 218
    sget v6, Lnet/kaki87/soul2/testing/R$string;->subtitle:I

    .line 219
    .line 220
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_subtitles_black_24:I

    .line 221
    .line 222
    invoke-direct {v4, v10, v6, v11, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIII)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 229
    .line 230
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 231
    .line 232
    invoke-direct {v4, v9, v2, v6, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 239
    .line 240
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 241
    .line 242
    invoke-direct {v2, v8, v1, v4, v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    :goto_2
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 249
    .line 250
    const/16 v2, 0x9

    .line 251
    .line 252
    invoke-direct {v1, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    return-object v3
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingCast;->Y1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->tv_cast:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 11
    .line 12
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingCast$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingCast$1;-><init>(Lcom/mycompany/app/setting/SettingCast;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCast;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingCast;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingCast;->Y1:Z

    .line 6
    .line 7
    return-void
.end method

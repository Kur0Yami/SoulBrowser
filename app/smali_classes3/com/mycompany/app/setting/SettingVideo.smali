.class public Lcom/mycompany/app/setting/SettingVideo;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic b2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/dialog/DialogSeekSimple;


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

.method public static O0(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 6
    .line 7
    const/16 v2, 0xd

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sput-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 13
    .line 14
    const-string v1, "mPipHome"

    .line 15
    .line 16
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 23
    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    sput-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 27
    .line 28
    const-string v1, "mCutOut"

    .line 29
    .line 30
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move v1, v3

    .line 34
    :cond_2
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 35
    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 39
    .line 40
    const/4 v0, 0x7

    .line 41
    const-string v1, "mIconLong"

    .line 42
    .line 43
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move v1, v3

    .line 47
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    sput-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 52
    .line 53
    const-string v0, "mDragBright"

    .line 54
    .line 55
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v1, v3

    .line 59
    :cond_4
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    sput-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 64
    .line 65
    const-string v0, "mDragVolume"

    .line 66
    .line 67
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move v1, v3

    .line 71
    :cond_5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 72
    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    sput-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 76
    .line 77
    const-string v0, "mDragSeek"

    .line 78
    .line 79
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move v1, v3

    .line 83
    :cond_6
    sget v0, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 84
    .line 85
    const/16 v4, 0x64

    .line 86
    .line 87
    if-eq v0, v4, :cond_7

    .line 88
    .line 89
    sput v4, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 90
    .line 91
    const-string v0, "mSeekSense"

    .line 92
    .line 93
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    move v3, v1

    .line 98
    :goto_1
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 99
    .line 100
    mul-int/lit8 v1, v0, 0x2

    .line 101
    .line 102
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 103
    .line 104
    const/4 v4, 0x3

    .line 105
    if-ne v2, v4, :cond_9

    .line 106
    .line 107
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 108
    .line 109
    if-ne v2, v4, :cond_9

    .line 110
    .line 111
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 112
    .line 113
    if-ne v2, v4, :cond_9

    .line 114
    .line 115
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 116
    .line 117
    if-ne v2, v0, :cond_9

    .line 118
    .line 119
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 120
    .line 121
    if-ne v2, v0, :cond_9

    .line 122
    .line 123
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 124
    .line 125
    if-ne v2, v1, :cond_9

    .line 126
    .line 127
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 128
    .line 129
    if-eq v2, v1, :cond_8

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_8
    return v3

    .line 133
    :cond_9
    :goto_2
    sput v4, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 134
    .line 135
    sput v4, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 136
    .line 137
    sput v4, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 138
    .line 139
    sput v0, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 140
    .line 141
    sput v0, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 142
    .line 143
    sput v1, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 144
    .line 145
    sput v1, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 146
    .line 147
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefVideo;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefVideo;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string v0, "mTapLeft"

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "mTapRight"

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "mTapCenter"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "mPortAreaLeft"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "mPortAreaRight"

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "mLandAreaLeft"

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v0, "mLandAreaRight"

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 187
    .line 188
    .line 189
    return v3
.end method

.method public static P0(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "%"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    sget v2, Lnet/kaki87/soul2/testing/R$string;->pip_info:I

    .line 11
    .line 12
    move v7, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v7, v3

    .line 15
    :goto_0
    const/16 v2, 0x1c

    .line 16
    .line 17
    const/16 v11, 0x23

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-lt v1, v11, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-ge v1, v2, :cond_2

    .line 24
    .line 25
    :goto_1
    const/4 v5, 0x3

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v5, v4

    .line 28
    :goto_2
    iget-boolean v6, v0, Lcom/mycompany/app/setting/SettingVideo;->X1:Z

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    move/from16 v16, v3

    .line 33
    .line 34
    move v8, v4

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    const/4 v6, 0x2

    .line 37
    move v8, v5

    .line 38
    move/from16 v16, v6

    .line 39
    .line 40
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget v6, Lnet/kaki87/soul2/testing/R$string;->drag_seek_info:I

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v6, "\n"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget v6, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    sget-boolean v5, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 73
    .line 74
    xor-int/lit8 v23, v5, 0x1

    .line 75
    .line 76
    new-instance v13, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 82
    .line 83
    invoke-direct {v5, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 90
    .line 91
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pip_home:I

    .line 92
    .line 93
    sget-boolean v9, Lcom/mycompany/app/pref/PrefVideo;->m:Z

    .line 94
    .line 95
    const/4 v10, 0x1

    .line 96
    const/4 v5, 0x1

    .line 97
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    if-lt v1, v11, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    if-ge v1, v2, :cond_5

    .line 107
    .line 108
    :goto_4
    move-object v1, v12

    .line 109
    move-object v2, v13

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    move-object v1, v12

    .line 112
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 113
    .line 114
    sget v14, Lnet/kaki87/soul2/testing/R$string;->display_cutout:I

    .line 115
    .line 116
    sget v15, Lnet/kaki87/soul2/testing/R$string;->display_cutout_info:I

    .line 117
    .line 118
    sget-boolean v17, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 119
    .line 120
    const/16 v18, 0x1

    .line 121
    .line 122
    move-object v2, v13

    .line 123
    const/4 v13, 0x2

    .line 124
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :goto_5
    iget-boolean v4, v0, Lcom/mycompany/app/setting/SettingVideo;->X1:Z

    .line 131
    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 135
    .line 136
    sget v7, Lnet/kaki87/soul2/testing/R$string;->trans_icon:I

    .line 137
    .line 138
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 139
    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_icon_long:I

    .line 143
    .line 144
    :goto_6
    move v8, v4

    .line 145
    goto :goto_7

    .line 146
    :cond_6
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_icon_tap:I

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :goto_7
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x2

    .line 151
    const/4 v6, 0x3

    .line 152
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_7
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 159
    .line 160
    const/4 v5, 0x4

    .line 161
    invoke-direct {v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 168
    .line 169
    sget v8, Lnet/kaki87/soul2/testing/R$string;->drag_bright:I

    .line 170
    .line 171
    sget v9, Lnet/kaki87/soul2/testing/R$string;->drag_bright_info:I

    .line 172
    .line 173
    sget-boolean v11, Lcom/mycompany/app/pref/PrefVideo;->r:Z

    .line 174
    .line 175
    const/4 v12, 0x1

    .line 176
    const/4 v10, 0x1

    .line 177
    const/4 v7, 0x5

    .line 178
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 185
    .line 186
    sget v9, Lnet/kaki87/soul2/testing/R$string;->drag_volume:I

    .line 187
    .line 188
    sget v10, Lnet/kaki87/soul2/testing/R$string;->drag_volume_info:I

    .line 189
    .line 190
    sget-boolean v12, Lcom/mycompany/app/pref/PrefVideo;->q:Z

    .line 191
    .line 192
    const/4 v13, 0x1

    .line 193
    const/4 v11, 0x2

    .line 194
    const/4 v8, 0x6

    .line 195
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 202
    .line 203
    const/4 v5, 0x7

    .line 204
    invoke-direct {v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 211
    .line 212
    sget v5, Lnet/kaki87/soul2/testing/R$string;->drag_seek:I

    .line 213
    .line 214
    sget-boolean v6, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 215
    .line 216
    const/16 v7, 0x8

    .line 217
    .line 218
    invoke-direct {v4, v1, v7, v5, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IIZ)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    new-instance v17, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 225
    .line 226
    sget v19, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 227
    .line 228
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 229
    .line 230
    invoke-static {v1}, Lcom/mycompany/app/setting/SettingVideo;->P0(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v22

    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v21, 0x2

    .line 237
    .line 238
    const/16 v18, 0x9

    .line 239
    .line 240
    move/from16 v24, v23

    .line 241
    .line 242
    invoke-direct/range {v17 .. v24}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v1, v17

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 251
    .line 252
    const/16 v4, 0xa

    .line 253
    .line 254
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 261
    .line 262
    sget v7, Lnet/kaki87/soul2/testing/R$string;->double_tap:I

    .line 263
    .line 264
    sget v9, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 265
    .line 266
    const/4 v10, 0x3

    .line 267
    const/16 v6, 0xb

    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 277
    .line 278
    const/16 v4, 0xc

    .line 279
    .line 280
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 287
    .line 288
    sget v7, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 289
    .line 290
    sget-object v1, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 291
    .line 292
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 293
    .line 294
    aget v8, v1, v4

    .line 295
    .line 296
    sget v9, Lnet/kaki87/soul2/testing/R$string;->touch_lock_info:I

    .line 297
    .line 298
    const/16 v6, 0xd

    .line 299
    .line 300
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 301
    .line 302
    .line 303
    const/16 v1, 0xe

    .line 304
    .line 305
    invoke-static {v2, v5, v1, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 306
    .line 307
    .line 308
    return-object v2
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p3, 0x3

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 12
    .line 13
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 14
    .line 15
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 16
    .line 17
    sget p3, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 18
    .line 19
    aget v3, p2, p3

    .line 20
    .line 21
    sget v4, Lnet/kaki87/soul2/testing/R$string;->touch_lock_info:I

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EXTRA_WEB"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingVideo;->X1:Z

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 20
    .line 21
    .line 22
    sget p1, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 26
    .line 27
    .line 28
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingVideo$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingVideo$1;-><init>(Lcom/mycompany/app/setting/SettingVideo;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onPause()V
    .locals 2

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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideo;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideo;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 41
    .line 42
    :cond_2
    return-void
.end method

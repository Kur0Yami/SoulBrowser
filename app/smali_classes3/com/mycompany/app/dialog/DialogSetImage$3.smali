.class Lcom/mycompany/app/dialog/DialogSetImage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage$3;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/dialog/DialogSetImage$3;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 10
    .line 11
    iget-boolean v5, v4, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v1, :cond_b

    .line 17
    .line 18
    if-eq v1, v8, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq v1, v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq v1, v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    iget-object v0, v4, Lcom/mycompany/app/dialog/DialogSetImage;->b0:Landroid/content/Context;

    .line 29
    .line 30
    move/from16 v1, p4

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    iput v0, v4, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v0, v4, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-eqz v5, :cond_3

    .line 50
    .line 51
    iput-boolean v2, v4, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iput-boolean v2, v4, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object v1, v4, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_5
    if-eqz v1, :cond_6

    .line 64
    .line 65
    iput-object v6, v4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 68
    .line 69
    .line 70
    iput-object v6, v4, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 71
    .line 72
    :cond_6
    if-eqz v0, :cond_12

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 75
    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    if-eqz v5, :cond_8

    .line 86
    .line 87
    iget-boolean v1, v4, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    iget-boolean v1, v4, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 91
    .line 92
    :goto_0
    sget-object v2, Lcom/mycompany/app/main/MainConst;->f0:[I

    .line 93
    .line 94
    array-length v2, v2

    .line 95
    move v5, v7

    .line 96
    :goto_1
    if-ge v5, v2, :cond_a

    .line 97
    .line 98
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 99
    .line 100
    sget-object v9, Lcom/mycompany/app/main/MainConst;->f0:[I

    .line 101
    .line 102
    aget v9, v9, v5

    .line 103
    .line 104
    if-ne v5, v1, :cond_9

    .line 105
    .line 106
    move v10, v8

    .line 107
    goto :goto_2

    .line 108
    :cond_9
    move v10, v7

    .line 109
    :goto_2
    invoke-direct {v6, v5, v9, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_a
    new-instance v9, Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    iget-object v10, v4, Lcom/mycompany/app/dialog/DialogSetImage;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 121
    .line 122
    iget-object v11, v4, Lcom/mycompany/app/dialog/DialogSetImage;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 123
    .line 124
    iget-object v12, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 125
    .line 126
    sget-boolean v14, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 127
    .line 128
    new-instance v15, Lcom/mycompany/app/dialog/DialogSetImage$9;

    .line 129
    .line 130
    invoke-direct {v15, v4}, Lcom/mycompany/app/dialog/DialogSetImage$9;-><init>(Lcom/mycompany/app/dialog/DialogSetImage;)V

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v9 .. v15}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 134
    .line 135
    .line 136
    iput-object v9, v4, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 137
    .line 138
    iput-object v9, v4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 139
    .line 140
    return-void

    .line 141
    :cond_b
    iget-object v1, v4, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 142
    .line 143
    if-eqz v1, :cond_c

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_c
    if-eqz v1, :cond_d

    .line 147
    .line 148
    iput-object v6, v4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 151
    .line 152
    .line 153
    iput-object v6, v4, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 154
    .line 155
    :cond_d
    if-eqz v0, :cond_12

    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 158
    .line 159
    if-nez v1, :cond_e

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_e
    new-instance v13, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/mycompany/app/main/MainConst;->e0:[I

    .line 168
    .line 169
    array-length v1, v1

    .line 170
    move v2, v7

    .line 171
    :goto_3
    if-ge v2, v1, :cond_11

    .line 172
    .line 173
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 174
    .line 175
    sget-object v9, Lcom/mycompany/app/main/MainConst;->e0:[I

    .line 176
    .line 177
    aget v9, v9, v2

    .line 178
    .line 179
    if-eqz v5, :cond_f

    .line 180
    .line 181
    iget v10, v4, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_f
    iget v10, v4, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 185
    .line 186
    :goto_4
    if-ne v2, v10, :cond_10

    .line 187
    .line 188
    move v10, v8

    .line 189
    goto :goto_5

    .line 190
    :cond_10
    move v10, v7

    .line 191
    :goto_5
    invoke-direct {v6, v2, v9, v10}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_11
    new-instance v9, Lcom/mycompany/app/view/MyPopupMenu;

    .line 201
    .line 202
    iget-object v10, v4, Lcom/mycompany/app/dialog/DialogSetImage;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 203
    .line 204
    iget-object v11, v4, Lcom/mycompany/app/dialog/DialogSetImage;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 205
    .line 206
    iget-object v12, v0, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 207
    .line 208
    sget-boolean v14, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 209
    .line 210
    new-instance v15, Lcom/mycompany/app/dialog/DialogSetImage$8;

    .line 211
    .line 212
    invoke-direct {v15, v4, v0}, Lcom/mycompany/app/dialog/DialogSetImage$8;-><init>(Lcom/mycompany/app/dialog/DialogSetImage;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;)V

    .line 213
    .line 214
    .line 215
    invoke-direct/range {v9 .. v15}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 216
    .line 217
    .line 218
    iput-object v9, v4, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 219
    .line 220
    iput-object v9, v4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 221
    .line 222
    :cond_12
    :goto_6
    return-void
.end method

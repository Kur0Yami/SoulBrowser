.class public Lcom/mycompany/app/dialog/DialogSetPrivacy;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;
    }
.end annotation


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;

.field public final d0:Z

.field public final e0:Z

.field public f0:I

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyRecyclerView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public l0:Z

.field public m0:Z

.field public n0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ZZLcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->c0:Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->e0:Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetPrivacy$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/ArrayList;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 14
    .line 15
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 16
    .line 17
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 24
    .line 25
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->C()V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 36
    .line 37
    and-int/lit8 v2, v1, 0x2

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x1

    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    move v11, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v11, v4

    .line 47
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    if-ne v2, v3, :cond_3

    .line 51
    .line 52
    move/from16 v17, v5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move/from16 v17, v4

    .line 56
    .line 57
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 58
    .line 59
    const/16 v3, 0x8

    .line 60
    .line 61
    if-ne v2, v3, :cond_4

    .line 62
    .line 63
    move/from16 v23, v5

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move/from16 v23, v4

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 69
    .line 70
    const/16 v3, 0x10

    .line 71
    .line 72
    if-ne v2, v3, :cond_5

    .line 73
    .line 74
    move/from16 v29, v5

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move/from16 v29, v4

    .line 78
    .line 79
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 80
    .line 81
    const/16 v3, 0x20

    .line 82
    .line 83
    if-ne v2, v3, :cond_6

    .line 84
    .line 85
    move/from16 v35, v5

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    move/from16 v35, v4

    .line 89
    .line 90
    :goto_5
    const/16 v2, 0x40

    .line 91
    .line 92
    and-int/2addr v1, v2

    .line 93
    if-ne v1, v2, :cond_7

    .line 94
    .line 95
    move/from16 v41, v5

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_7
    move/from16 v41, v4

    .line 99
    .line 100
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 106
    .line 107
    sget v8, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 108
    .line 109
    iget-boolean v12, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v9, 0x0

    .line 114
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 121
    .line 122
    sget v14, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 123
    .line 124
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 125
    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const/4 v13, 0x1

    .line 129
    const/4 v15, 0x0

    .line 130
    move/from16 v18, v2

    .line 131
    .line 132
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v18, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 139
    .line 140
    sget v20, Lnet/kaki87/soul2/testing/R$string;->cookie:I

    .line 141
    .line 142
    sget v21, Lnet/kaki87/soul2/testing/R$string;->cookie_info:I

    .line 143
    .line 144
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 145
    .line 146
    const/16 v22, 0x0

    .line 147
    .line 148
    const/16 v19, 0x2

    .line 149
    .line 150
    move/from16 v24, v2

    .line 151
    .line 152
    invoke-direct/range {v18 .. v24}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v2, v18

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v24, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 161
    .line 162
    sget v26, Lnet/kaki87/soul2/testing/R$string;->cache:I

    .line 163
    .line 164
    sget v27, Lnet/kaki87/soul2/testing/R$string;->cache_info:I

    .line 165
    .line 166
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 167
    .line 168
    const/16 v28, 0x0

    .line 169
    .line 170
    const/16 v25, 0x3

    .line 171
    .line 172
    move/from16 v30, v2

    .line 173
    .line 174
    invoke-direct/range {v24 .. v30}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v2, v24

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v30, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 183
    .line 184
    sget v32, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 185
    .line 186
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 187
    .line 188
    const/16 v34, 0x0

    .line 189
    .line 190
    const/16 v31, 0x4

    .line 191
    .line 192
    const/16 v33, 0x0

    .line 193
    .line 194
    move/from16 v36, v2

    .line 195
    .line 196
    invoke-direct/range {v30 .. v36}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v2, v30

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    new-instance v36, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 205
    .line 206
    sget v38, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    .line 207
    .line 208
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 209
    .line 210
    const/16 v40, 0x0

    .line 211
    .line 212
    const/16 v37, 0x5

    .line 213
    .line 214
    const/16 v39, 0x0

    .line 215
    .line 216
    move/from16 v42, v2

    .line 217
    .line 218
    invoke-direct/range {v36 .. v42}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v2, v36

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    return-object v1
.end method

.method public final C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const v1, -0x7f7f80

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v1, -0x252526

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const v1, -0x50506

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const v1, -0xe19938

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->l0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->l0:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->c0:Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;->a()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 67
    .line 68
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->c0:Lcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;

    .line 73
    .line 74
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

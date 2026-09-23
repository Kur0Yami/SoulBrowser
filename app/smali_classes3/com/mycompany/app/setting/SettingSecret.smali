.class public Lcom/mycompany/app/setting/SettingSecret;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic d2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public Z1:Z

.field public a2:Z

.field public b2:Z

.field public c2:Lcom/mycompany/app/dialog/DialogConfirm;


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
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-wide v1, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sput-wide v3, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 17
    .line 18
    const-string v0, "mSecretHist"

    .line 19
    .line 20
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v5}, Lcom/mycompany/app/db/book/DbBookHistory;->e(Landroid/content/Context;Z)V

    .line 24
    .line 25
    .line 26
    move v0, v5

    .line 27
    :cond_1
    sget-wide v6, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 28
    .line 29
    cmp-long v1, v6, v3

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 38
    .line 39
    const-string v0, "mSecretDown"

    .line 40
    .line 41
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move v0, v5

    .line 45
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    sput-boolean v5, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 50
    .line 51
    const-string v0, "mKeepTab"

    .line 52
    .line 53
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move v0, v5

    .line 57
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    sput-boolean v5, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 62
    .line 63
    const-string v0, "mKeepLogin"

    .line 64
    .line 65
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move v0, v5

    .line 69
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    sput-boolean v5, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 74
    .line 75
    const-string v0, "mSecretNoti"

    .line 76
    .line 77
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v5

    .line 81
    :cond_5
    return v0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 19

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move v10, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v10, v0

    .line 18
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v2, v4, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 33
    .line 34
    sget v13, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    const/16 v16, 0x3

    .line 38
    .line 39
    const/4 v12, 0x1

    .line 40
    const/4 v14, 0x0

    .line 41
    invoke-direct/range {v11 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    invoke-direct {v2, v6, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 57
    .line 58
    sget v13, Lnet/kaki87/soul2/testing/R$string;->secret_hist:I

    .line 59
    .line 60
    sget v14, Lnet/kaki87/soul2/testing/R$string;->secret_hist_info:I

    .line 61
    .line 62
    sget-wide v6, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 63
    .line 64
    const-wide/16 v8, 0x0

    .line 65
    .line 66
    cmp-long v2, v6, v8

    .line 67
    .line 68
    if-lez v2, :cond_1

    .line 69
    .line 70
    move/from16 v16, v5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move/from16 v16, v4

    .line 74
    .line 75
    :goto_1
    const/16 v17, 0x1

    .line 76
    .line 77
    const/4 v15, 0x1

    .line 78
    const/4 v12, 0x3

    .line 79
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 86
    .line 87
    sget v14, Lnet/kaki87/soul2/testing/R$string;->secret_down:I

    .line 88
    .line 89
    sget v15, Lnet/kaki87/soul2/testing/R$string;->secret_down_info:I

    .line 90
    .line 91
    sget-wide v6, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 92
    .line 93
    cmp-long v2, v6, v8

    .line 94
    .line 95
    if-lez v2, :cond_2

    .line 96
    .line 97
    move/from16 v17, v5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move/from16 v17, v4

    .line 101
    .line 102
    :goto_2
    const/16 v18, 0x1

    .line 103
    .line 104
    const/16 v16, 0x2

    .line 105
    .line 106
    const/4 v13, 0x4

    .line 107
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 114
    .line 115
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 122
    .line 123
    sget v13, Lnet/kaki87/soul2/testing/R$string;->keep_tab:I

    .line 124
    .line 125
    sget v14, Lnet/kaki87/soul2/testing/R$string;->keep_tab_info:I

    .line 126
    .line 127
    sget-boolean v16, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 128
    .line 129
    const/16 v17, 0x1

    .line 130
    .line 131
    const/4 v15, 0x1

    .line 132
    const/4 v12, 0x6

    .line 133
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 140
    .line 141
    sget v14, Lnet/kaki87/soul2/testing/R$string;->keep_login:I

    .line 142
    .line 143
    sget v15, Lnet/kaki87/soul2/testing/R$string;->keep_login_info:I

    .line 144
    .line 145
    sget-boolean v17, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 146
    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    const/4 v13, 0x7

    .line 150
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 157
    .line 158
    const/16 v3, 0x8

    .line 159
    .line 160
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 167
    .line 168
    sget v7, Lnet/kaki87/soul2/testing/R$string;->notification:I

    .line 169
    .line 170
    const/4 v11, 0x1

    .line 171
    const/4 v9, 0x3

    .line 172
    const/16 v6, 0x9

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 182
    .line 183
    const/16 v3, 0xa

    .line 184
    .line 185
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 192
    .line 193
    sget v7, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 194
    .line 195
    sget v9, Lnet/kaki87/soul2/testing/R$string;->secret_reset_guide:I

    .line 196
    .line 197
    const/4 v10, 0x3

    .line 198
    const/16 v6, 0xb

    .line 199
    .line 200
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 201
    .line 202
    .line 203
    const/16 v2, 0xc

    .line 204
    .line 205
    invoke-static {v0, v5, v2, v4}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 206
    .line 207
    .line 208
    return-object v0
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecret;->c2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSecret;->c2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecret;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSecret;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSecret;->Z1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    xor-int/2addr p1, v0

    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingSecret;->X1:Z

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0, p1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingSecret$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingSecret$1;-><init>(Lcom/mycompany/app/setting/SettingSecret;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSecret;->Q0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSecret;->P0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSecret;->a2:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingSecret;->a2:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move v8, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v8, v1

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 32
    .line 33
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$string;->notification:I

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v7, 0x3

    .line 39
    const/16 v4, 0x9

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    :cond_4
    if-eqz v8, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->d8(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

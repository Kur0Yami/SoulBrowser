.class public Lcom/mycompany/app/setting/SettingPassword;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic b2:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public a2:Lcom/mycompany/app/dialog/DialogLockReset;


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
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 11
    .line 12
    aget v2, v3, v2

    .line 13
    .line 14
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    sput-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 20
    .line 21
    const/16 v3, 0x9

    .line 22
    .line 23
    const-string v5, "mSavePass2"

    .line 24
    .line 25
    invoke-static {p0, v3, v5}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v3, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v0

    .line 31
    :goto_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    sput-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 36
    .line 37
    const/16 v3, 0x11

    .line 38
    .line 39
    const-string v5, "mPassIcon"

    .line 40
    .line 41
    invoke-static {p0, v3, v5}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move v3, v4

    .line 45
    :cond_2
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 46
    .line 47
    if-nez v5, :cond_4

    .line 48
    .line 49
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 50
    .line 51
    if-ne v5, v1, :cond_4

    .line 52
    .line 53
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 54
    .line 55
    invoke-static {v5, v2}, Ljava/lang/Float;->compare(FF)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    return v3

    .line 63
    :cond_4
    :goto_1
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 64
    .line 65
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 66
    .line 67
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->V:I

    .line 74
    .line 75
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "mPassAlpha"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "mPassColor"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "mPassPos"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 95
    .line 96
    .line 97
    return v4
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_info:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    move v9, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v9, v4

    .line 48
    :goto_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 49
    .line 50
    xor-int/lit8 v15, v2, 0x1

    .line 51
    .line 52
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 53
    .line 54
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 55
    .line 56
    invoke-static {v2, v5}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    new-instance v13, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 66
    .line 67
    invoke-direct {v5, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 74
    .line 75
    sget v6, Lnet/kaki87/soul2/testing/R$string;->password_save:I

    .line 76
    .line 77
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 78
    .line 79
    invoke-direct {v5, v1, v3, v6, v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IIZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 86
    .line 87
    sget v7, Lnet/kaki87/soul2/testing/R$string;->login_lock:I

    .line 88
    .line 89
    sget v8, Lnet/kaki87/soul2/testing/R$string;->login_lock_info:I

    .line 90
    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v6, 0x2

    .line 93
    move v11, v15

    .line 94
    move v10, v15

    .line 95
    invoke-direct/range {v5 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 102
    .line 103
    sget v12, Lnet/kaki87/soul2/testing/R$string;->password_button:I

    .line 104
    .line 105
    move-object v1, v13

    .line 106
    sget v13, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 107
    .line 108
    sget-boolean v14, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 109
    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    const/4 v11, 0x3

    .line 113
    move/from16 v16, v15

    .line 114
    .line 115
    invoke-direct/range {v10 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 122
    .line 123
    sget v12, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 124
    .line 125
    const/16 v16, 0x2

    .line 126
    .line 127
    const/4 v11, 0x4

    .line 128
    move v14, v15

    .line 129
    move v13, v2

    .line 130
    invoke-direct/range {v10 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 137
    .line 138
    const/4 v3, 0x5

    .line 139
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 146
    .line 147
    sget v7, Lnet/kaki87/soul2/testing/R$string;->list:I

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x1

    .line 151
    const/4 v6, 0x6

    .line 152
    const/4 v8, 0x0

    .line 153
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 160
    .line 161
    sget v8, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 162
    .line 163
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 164
    .line 165
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 166
    .line 167
    aget v9, v2, v3

    .line 168
    .line 169
    const/4 v10, 0x0

    .line 170
    const/4 v11, 0x2

    .line 171
    const/4 v7, 0x7

    .line 172
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 179
    .line 180
    const/16 v3, 0x8

    .line 181
    .line 182
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 189
    .line 190
    sget v7, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 191
    .line 192
    sget v9, Lnet/kaki87/soul2/testing/R$string;->password_reset_guide:I

    .line 193
    .line 194
    const/4 v10, 0x3

    .line 195
    const/16 v6, 0x9

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 199
    .line 200
    .line 201
    const/16 v2, 0xa

    .line 202
    .line 203
    invoke-static {v1, v5, v2, v4}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 204
    .line 205
    .line 206
    return-object v1
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogLockReset;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move v7, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    move v7, v1

    .line 19
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 20
    .line 21
    xor-int/lit8 v8, v1, 0x1

    .line 22
    .line 23
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 24
    .line 25
    sget v5, Lnet/kaki87/soul2/testing/R$string;->login_lock:I

    .line 26
    .line 27
    sget v6, Lnet/kaki87/soul2/testing/R$string;->login_lock_info:I

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v4, 0x2

    .line 31
    move v9, v8

    .line 32
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final R0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->a2:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 23
    .line 24
    :cond_3
    const/4 v0, 0x0

    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_lock_1:I

    .line 30
    .line 31
    invoke-direct {p1, p0, v2, v0, v1}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_lock_1:I

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "\n"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget v2, Lnet/kaki87/soul2/testing/R$string;->password_lock_2:I

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 75
    .line 76
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/setting/SettingPassword$6;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPassword$6;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    .line 85
    .line 86
    return-void
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
    sget p3, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 18
    .line 19
    aget v3, p2, p3

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v1, 0x7

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 28
    .line 29
    .line 30
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
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 14
    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingPassword$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPassword$1;-><init>(Lcom/mycompany/app/setting/SettingPassword;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
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
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassword;->Z1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassword;->P0()V

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

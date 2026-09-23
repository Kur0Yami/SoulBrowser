.class public Lcom/mycompany/app/setting/SettingPrivacy;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic b2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

.field public Z1:Z

.field public a2:I


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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    const/16 v3, 0xe

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    sput v2, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 14
    .line 15
    const-string v1, "mDataDelete2"

    .line 16
    .line 17
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 26
    .line 27
    const-string v0, "mExitDelete2"

    .line 28
    .line 29
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move v0, v2

    .line 33
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->I:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    sput-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->I:Z

    .line 38
    .line 39
    const-string v0, "mExitNoti"

    .line 40
    .line 41
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_3
    return v0
.end method

.method public static P0(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 2
    .line 3
    const/16 v1, 0x7e

    .line 4
    .line 5
    const-string v2, ", "

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 15
    .line 16
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cache:I

    .line 20
    .line 21
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cookie:I

    .line 25
    .line 26
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    .line 35
    .line 36
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    const/4 v1, 0x2

    .line 42
    and-int/2addr v0, v1

    .line 43
    const/4 v3, 0x0

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget v1, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v0, v3

    .line 62
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    and-int/2addr v1, v4

    .line 66
    if-ne v1, v4, :cond_3

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :goto_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_3
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 89
    .line 90
    const/16 v4, 0x8

    .line 91
    .line 92
    and-int/2addr v1, v4

    .line 93
    if-ne v1, v4, :cond_5

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :goto_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cookie:I

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 116
    .line 117
    const/16 v4, 0x10

    .line 118
    .line 119
    and-int/2addr v1, v4

    .line 120
    if-ne v1, v4, :cond_7

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :goto_3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cache:I

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_7
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 143
    .line 144
    const/16 v4, 0x20

    .line 145
    .line 146
    and-int/2addr v1, v4

    .line 147
    if-ne v1, v4, :cond_9

    .line 148
    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :goto_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_9
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 170
    .line 171
    const/16 v4, 0x40

    .line 172
    .line 173
    and-int/2addr v1, v4

    .line 174
    if-ne v1, v4, :cond_b

    .line 175
    .line 176
    if-nez v0, :cond_a

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :goto_5
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    .line 188
    .line 189
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_b
    if-nez v0, :cond_c

    .line 197
    .line 198
    return-object v3

    .line 199
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 17
    .line 18
    sget v6, Lnet/kaki87/soul2/testing/R$string;->now_delete:I

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x3

    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 40
    .line 41
    sget v6, Lnet/kaki87/soul2/testing/R$string;->exit_delete:I

    .line 42
    .line 43
    invoke-static {p0}, Lcom/mycompany/app/setting/SettingPrivacy;->P0(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget v8, Lnet/kaki87/soul2/testing/R$string;->exit_guide:I

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    const/4 v5, 0x3

    .line 51
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 58
    .line 59
    sget v7, Lnet/kaki87/soul2/testing/R$string;->exit_del_noti:I

    .line 60
    .line 61
    sget-boolean v10, Lcom/mycompany/app/pref/PrefWeb;->I:Z

    .line 62
    .line 63
    const/4 v11, 0x1

    .line 64
    const/4 v9, 0x2

    .line 65
    const/4 v6, 0x4

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 83
    .line 84
    sget v6, Lnet/kaki87/soul2/testing/R$string;->clean_data_info:I

    .line 85
    .line 86
    const/4 v8, 0x1

    .line 87
    const/4 v9, 0x3

    .line 88
    const/4 v5, 0x6

    .line 89
    const/4 v7, 0x0

    .line 90
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;ZI)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x7

    .line 94
    invoke-static {v0, v4, v1, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 95
    .line 96
    .line 97
    return-object v0
.end method

.method public final Q0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x3

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move v0, v2

    .line 21
    :goto_0
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 22
    .line 23
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    new-instance v1, Lcom/mycompany/app/setting/SettingPrivacy$5;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingPrivacy$5;-><init>(Lcom/mycompany/app/setting/SettingPrivacy;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-direct {v4, p0, v0, v2, v1}, Lcom/mycompany/app/dialog/DialogSetPrivacy;-><init>(Lcom/mycompany/app/main/MainActivity;ZZLcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/setting/SettingPrivacy$6;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0, v3, p1}, Lcom/mycompany/app/setting/SettingPrivacy$6;-><init>(Lcom/mycompany/app/setting/SettingPrivacy;ZII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final finish()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->X1:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Z1:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->a2:I

    .line 11
    .line 12
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 13
    .line 14
    if-eq v0, v2, :cond_3

    .line 15
    .line 16
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->a2:I

    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "EXTRA_TYPE"

    .line 26
    .line 27
    const/16 v3, 0x28

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Z1:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v2, "EXTRA_STATUS"

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Z1:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 54
    .line 55
    .line 56
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
    const-string v0, "EXTRA_POPUP"

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
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingPrivacy;->X1:Z

    .line 16
    .line 17
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/setting/SettingPrivacy;->a2:I

    .line 20
    .line 21
    sget p1, Lnet/kaki87/soul2/testing/R$string;->clear_data:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 25
    .line 26
    .line 27
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 28
    .line 29
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingPrivacy$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPrivacy$1;-><init>(Lcom/mycompany/app/setting/SettingPrivacy;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPrivacy;->Y1:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

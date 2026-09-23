.class public Lcom/mycompany/app/setting/SettingGeneral;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic c2:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Lcom/mycompany/app/dialog/DialogWebView;

.field public Z1:Lcom/mycompany/app/dialog/DialogEditShort;

.field public a2:I

.field public b2:Z

.field public d2:[[Ljava/lang/String;


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

.method public static O0(Lcom/mycompany/app/setting/SettingGeneral;)V
    .locals 4

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
    iget v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingGeneral;->Q0(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    invoke-virtual {v2, v3, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 27
    .line 28
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 11
    .line 12
    const/16 v1, 0xc

    .line 13
    .line 14
    const-string v3, "mAppKeypad"

    .line 15
    .line 16
    invoke-static {p0, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_0
    sget-boolean v3, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    sput-boolean v0, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    const-string v1, "mDoubleBack"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_2
    return v1
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingGeneral;->Q0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget v2, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    :goto_0
    move v8, v2

    .line 22
    :goto_1
    move-object v7, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    move v8, v3

    .line 26
    goto :goto_1

    .line 27
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lang_res:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " (GitHub)"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v4, 0x1a

    .line 67
    .line 68
    const/4 v5, 0x3

    .line 69
    if-lt v2, v4, :cond_2

    .line 70
    .line 71
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 72
    .line 73
    sget v14, Lnet/kaki87/soul2/testing/R$string;->default_browser:I

    .line 74
    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v17, 0x1

    .line 78
    .line 79
    const/4 v13, 0x1

    .line 80
    const/4 v15, 0x0

    .line 81
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 88
    .line 89
    sget v15, Lnet/kaki87/soul2/testing/R$string;->notification:I

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x2

    .line 94
    .line 95
    const/4 v14, 0x2

    .line 96
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v13, v5, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    const/16 v4, 0x18

    .line 104
    .line 105
    if-lt v2, v4, :cond_3

    .line 106
    .line 107
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 108
    .line 109
    sget v14, Lnet/kaki87/soul2/testing/R$string;->default_browser:I

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const/16 v17, 0x3

    .line 114
    .line 115
    const/4 v13, 0x1

    .line 116
    const/4 v15, 0x0

    .line 117
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v12, v5, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_3
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 124
    .line 125
    sget v6, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    const/4 v5, 0x4

    .line 129
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x2

    .line 139
    const/4 v10, 0x5

    .line 140
    const/4 v12, 0x0

    .line 141
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 148
    .line 149
    const/4 v4, 0x6

    .line 150
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 157
    .line 158
    sget v7, Lnet/kaki87/soul2/testing/R$string;->app_keyboard:I

    .line 159
    .line 160
    sget-boolean v10, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 161
    .line 162
    const/4 v11, 0x1

    .line 163
    const/4 v9, 0x1

    .line 164
    const/4 v6, 0x7

    .line 165
    const/4 v8, 0x0

    .line 166
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 173
    .line 174
    sget v8, Lnet/kaki87/soul2/testing/R$string;->double_back:I

    .line 175
    .line 176
    sget-boolean v11, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 177
    .line 178
    const/4 v12, 0x1

    .line 179
    const/4 v10, 0x2

    .line 180
    const/16 v7, 0x8

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 190
    .line 191
    const/16 v4, 0x9

    .line 192
    .line 193
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 200
    .line 201
    sget v7, Lnet/kaki87/soul2/testing/R$string;->album_shortcut:I

    .line 202
    .line 203
    sget v9, Lnet/kaki87/soul2/testing/R$string;->album_short_info:I

    .line 204
    .line 205
    const/4 v10, 0x1

    .line 206
    const/16 v6, 0xa

    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 216
    .line 217
    sget v8, Lnet/kaki87/soul2/testing/R$string;->cast_shortcut:I

    .line 218
    .line 219
    sget v10, Lnet/kaki87/soul2/testing/R$string;->cast_short_info:I

    .line 220
    .line 221
    const/4 v11, 0x2

    .line 222
    const/16 v7, 0xb

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 226
    .line 227
    .line 228
    const/16 v2, 0xc

    .line 229
    .line 230
    invoke-static {v1, v6, v2, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 231
    .line 232
    .line 233
    return-object v1
.end method

.method public final Q0(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingGeneral;->S0()[[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final S0()[[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->d2:[[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/mycompany/app/setting/AppLocales;->a(Landroid/content/Context;)[[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->d2:[[Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final R0(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditShort;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 18
    .line 19
    :cond_2
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_3

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->pdf:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    sget v0, Lnet/kaki87/soul2/testing/R$string;->tv_cast:I

    .line 26
    .line 27
    :goto_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditShort;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v2, p0

    .line 36
    move v5, p1

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogEditShort;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogEditShort$EditShortListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 41
    .line 42
    new-instance p1, Lcom/mycompany/app/setting/SettingGeneral$9;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingGeneral$9;-><init>(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogEditShort;->E(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
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
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 6
    .line 7
    const/16 p1, 0x9

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0xc

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 16
    .line 17
    .line 18
    sget p1, Lnet/kaki87/soul2/testing/R$string;->general:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 23
    .line 24
    .line 25
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingGeneral$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingGeneral$1;-><init>(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditShort;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    array-length p1, p3

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    aget p3, p3, p1

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    const/16 v0, 0x9

    .line 25
    .line 26
    invoke-static {v0, p3, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 31
    .line 32
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

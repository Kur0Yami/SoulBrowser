.class public Lcom/mycompany/app/setting/SettingSite;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic e2:I


# instance fields
.field public X1:Z

.field public Y1:Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogListBook;

.field public c2:Lcom/mycompany/app/view/MyPopupMenu;

.field public d2:Lcom/mycompany/app/view/MyPopupMenu;


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
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "file:///android_asset/shortcut.html"

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v3, 0xe

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sput-object v2, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "mHomePage3"

    .line 21
    .line 22
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move v1, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v0

    .line 28
    :goto_0
    sget-object v2, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const-string v5, ""

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    sput-object v5, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "mStartPage"

    .line 41
    .line 42
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move v1, v4

    .line 46
    :cond_2
    sget-object v2, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 47
    .line 48
    const-string v6, "..home_link"

    .line 49
    .line 50
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    sput-object v6, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "mTabPage"

    .line 59
    .line 60
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move v1, v4

    .line 64
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 65
    .line 66
    const/4 v3, 0x4

    .line 67
    if-ne v2, v3, :cond_4

    .line 68
    .line 69
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 70
    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    :cond_4
    sput v3, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 82
    .line 83
    sput-object v5, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 84
    .line 85
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 86
    .line 87
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->l:Z

    .line 88
    .line 89
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "mSearchType2"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v2, "mSearchUser"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v2, "mSearchForm2"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v2, "mSearchColor"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 114
    .line 115
    .line 116
    move v1, v4

    .line 117
    :cond_5
    sget-object v2, Lcom/mycompany/app/pref/PrefZone;->i0:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const/16 v3, 0xf

    .line 124
    .line 125
    if-nez v2, :cond_6

    .line 126
    .line 127
    sput-object v5, Lcom/mycompany/app/pref/PrefZone;->i0:Ljava/lang/String;

    .line 128
    .line 129
    const-string v1, "mSearchUse2"

    .line 130
    .line 131
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move v1, v4

    .line 135
    :cond_6
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 136
    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    :cond_7
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 148
    .line 149
    sput-object v5, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "mAgentType"

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, "mAgentUser"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 166
    .line 167
    .line 168
    move v1, v4

    .line 169
    :cond_8
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->P:Z

    .line 170
    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    sput-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->P:Z

    .line 174
    .line 175
    const-string v1, "mLinkApp"

    .line 176
    .line 177
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move v1, v4

    .line 181
    :cond_9
    sget v2, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 182
    .line 183
    if-eqz v2, :cond_a

    .line 184
    .line 185
    sput v0, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 186
    .line 187
    const-string v1, "mOpenLink4"

    .line 188
    .line 189
    invoke-static {p0, v3, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move v1, v4

    .line 193
    :cond_a
    sget v2, Lcom/mycompany/app/pref/PrefZone;->I:I

    .line 194
    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    sput v0, Lcom/mycompany/app/pref/PrefZone;->I:I

    .line 198
    .line 199
    const-string v0, "mOpenImage3"

    .line 200
    .line 201
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return v4

    .line 205
    :cond_b
    return v1
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 10
    .line 11
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 12
    .line 13
    aget v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    move-object v5, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x64

    .line 28
    .line 29
    int-to-long v2, v2

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebSearch;->b(J)Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingSite$5;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingSite$5;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    if-ge v1, v2, :cond_2

    .line 53
    .line 54
    sget-object v1, Lcom/mycompany/app/main/MainConst;->G:[Ljava/lang/String;

    .line 55
    .line 56
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 57
    .line 58
    aget-object v1, v1, v3

    .line 59
    .line 60
    :goto_2
    move-object v9, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x64

    .line 65
    .line 66
    int-to-long v6, v1

    .line 67
    invoke-static {v3, v6, v7}, Lcom/mycompany/app/db/book/DbBookAgent;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_2

    .line 72
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, " ("

    .line 75
    .line 76
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget v3, Lnet/kaki87/soul2/testing/R$string;->long_press:I

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, ")"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    sget v4, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    sget v4, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    new-instance v13, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 145
    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v4, 0x1

    .line 148
    invoke-direct {v3, v14, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 155
    .line 156
    sget v17, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Lcom/mycompany/app/setting/SettingSite;->P0(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v18

    .line 162
    sget v19, Lnet/kaki87/soul2/testing/R$string;->page_home_info:I

    .line 163
    .line 164
    const/16 v20, 0x1

    .line 165
    .line 166
    const/16 v16, 0x1

    .line 167
    .line 168
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v16, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 175
    .line 176
    sget v18, Lnet/kaki87/soul2/testing/R$string;->start_page:I

    .line 177
    .line 178
    const/4 v3, 0x2

    .line 179
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingSite;->P0(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    sget v20, Lnet/kaki87/soul2/testing/R$string;->page_start_info:I

    .line 184
    .line 185
    const/16 v21, 0x0

    .line 186
    .line 187
    const/16 v17, 0x2

    .line 188
    .line 189
    invoke-direct/range {v16 .. v21}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v3, v16

    .line 193
    .line 194
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 198
    .line 199
    sget v17, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 200
    .line 201
    const/4 v3, 0x3

    .line 202
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingSite;->P0(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v18

    .line 206
    sget v19, Lnet/kaki87/soul2/testing/R$string;->page_tab_info:I

    .line 207
    .line 208
    const/16 v20, 0x2

    .line 209
    .line 210
    const/16 v16, 0x3

    .line 211
    .line 212
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 219
    .line 220
    invoke-direct {v3, v2, v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 227
    .line 228
    sget v17, Lnet/kaki87/soul2/testing/R$string;->permission:I

    .line 229
    .line 230
    const/16 v19, 0x0

    .line 231
    .line 232
    const/16 v20, 0x3

    .line 233
    .line 234
    const/16 v16, 0x5

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 245
    .line 246
    const/4 v3, 0x6

    .line 247
    invoke-direct {v2, v3, v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 254
    .line 255
    sget v4, Lnet/kaki87/soul2/testing/R$string;->search_engine:I

    .line 256
    .line 257
    const/4 v6, 0x0

    .line 258
    const/4 v7, 0x1

    .line 259
    const/4 v3, 0x7

    .line 260
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 267
    .line 268
    sget v8, Lnet/kaki87/soul2/testing/R$string;->user_agent:I

    .line 269
    .line 270
    const/4 v10, 0x0

    .line 271
    const/4 v11, 0x2

    .line 272
    const/16 v7, 0x8

    .line 273
    .line 274
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 281
    .line 282
    const/16 v3, 0x9

    .line 283
    .line 284
    invoke-direct {v2, v3, v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 291
    .line 292
    sget v6, Lnet/kaki87/soul2/testing/R$string;->link_app:I

    .line 293
    .line 294
    sget-boolean v9, Lcom/mycompany/app/pref/PrefAlbum;->P:Z

    .line 295
    .line 296
    const/4 v10, 0x1

    .line 297
    const/4 v8, 0x1

    .line 298
    const/16 v5, 0xa

    .line 299
    .line 300
    const/4 v7, 0x0

    .line 301
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 308
    .line 309
    sget-object v2, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 310
    .line 311
    sget v3, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 312
    .line 313
    aget v2, v2, v3

    .line 314
    .line 315
    move v3, v14

    .line 316
    const/4 v15, 0x0

    .line 317
    const/16 v11, 0xb

    .line 318
    .line 319
    move-object/from16 v22, v13

    .line 320
    .line 321
    move v13, v2

    .line 322
    move-object/from16 v2, v22

    .line 323
    .line 324
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 331
    .line 332
    sget-object v4, Lcom/mycompany/app/main/MainConst;->l:[I

    .line 333
    .line 334
    sget v5, Lcom/mycompany/app/pref/PrefZone;->I:I

    .line 335
    .line 336
    aget v16, v4, v5

    .line 337
    .line 338
    const/16 v17, 0x0

    .line 339
    .line 340
    const/16 v18, 0x2

    .line 341
    .line 342
    const/16 v14, 0xc

    .line 343
    .line 344
    move-object v15, v1

    .line 345
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 346
    .line 347
    .line 348
    const/16 v1, 0xd

    .line 349
    .line 350
    invoke-static {v2, v13, v1, v3}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 351
    .line 352
    .line 353
    return-object v2
.end method

.method public final P0(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    sget p1, Lnet/kaki87/soul2/testing/R$string;->last_page:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$string;->soul_home:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_3
    const-string p1, "..home_link"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    sget p1, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_4
    const-string p1, "file:///android_asset/shortcut.html"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    sget p1, Lnet/kaki87/soul2/testing/R$string;->soul_home:I

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_5
    const-string p1, "about:blank"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    sget p1, Lnet/kaki87/soul2/testing/R$string;->blank_page:I

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_6
    return-object v0
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    if-nez p3, :cond_1

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_1
    const-string p1, "EXTRA_TYPE"

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    if-eq p1, p2, :cond_2

    .line 23
    .line 24
    const/4 p2, 0x2

    .line 25
    if-eq p1, p2, :cond_2

    .line 26
    .line 27
    const/4 p2, 0x3

    .line 28
    if-ne p1, p2, :cond_8

    .line 29
    .line 30
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 31
    .line 32
    if-eqz p2, :cond_8

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingSite;->P0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const/16 p2, 0xf

    .line 43
    .line 44
    if-ne p1, p2, :cond_6

    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 47
    .line 48
    if-eqz p1, :cond_8

    .line 49
    .line 50
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 51
    .line 52
    const/16 p2, 0xa

    .line 53
    .line 54
    if-ge p1, p2, :cond_4

    .line 55
    .line 56
    sget-object p1, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 57
    .line 58
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 59
    .line 60
    aget p1, p1, p2

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    move-object v3, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 73
    .line 74
    add-int/lit8 p2, p2, -0x64

    .line 75
    .line 76
    int-to-long p2, p2

    .line 77
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/web/WebSearch;->b(J)Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-object p1, p1, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 p1, 0x0

    .line 87
    goto :goto_0

    .line 88
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 89
    .line 90
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$string;->search_engine:I

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x1

    .line 96
    const/4 v1, 0x7

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    const/16 p2, 0x10

    .line 105
    .line 106
    if-ne p1, p2, :cond_8

    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 109
    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 113
    .line 114
    const/4 p2, 0x4

    .line 115
    if-ge p1, p2, :cond_7

    .line 116
    .line 117
    sget-object p1, Lcom/mycompany/app/main/MainConst;->G:[Ljava/lang/String;

    .line 118
    .line 119
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 120
    .line 121
    aget-object p1, p1, p2

    .line 122
    .line 123
    :goto_2
    move-object v3, p1

    .line 124
    goto :goto_3

    .line 125
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 126
    .line 127
    add-int/lit8 p1, p1, -0x64

    .line 128
    .line 129
    int-to-long v0, p1

    .line 130
    invoke-static {p2, v0, v1}, Lcom/mycompany/app/db/book/DbBookAgent;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_2

    .line 135
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 136
    .line 137
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 138
    .line 139
    sget v2, Lnet/kaki87/soul2/testing/R$string;->user_agent:I

    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v5, 0x2

    .line 143
    const/16 v1, 0x8

    .line 144
    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->q(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
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
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingSite;->X1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "EXTRA_PATH"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v0, 0xd

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0xf

    .line 26
    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x10

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 33
    .line 34
    .line 35
    sget v0, Lnet/kaki87/soul2/testing/R$string;->site:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 42
    .line 43
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingSite$1;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingSite$1;-><init>(Lcom/mycompany/app/setting/SettingSite;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->Y1:Ljava/lang/String;

    .line 6
    .line 7
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
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSite;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSite;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSite;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSite;->X1:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingSite;->X1:Z

    .line 18
    .line 19
    return-void
.end method

.class public Lcom/mycompany/app/setting/SettingWeb;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final h2:[I

.field public static final i2:[I

.field public static final j2:[I


# instance fields
.field public X1:Z

.field public Y1:Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

.field public c2:Lcom/mycompany/app/dialog/DialogListBook;

.field public d2:I

.field public e2:Ljava/lang/String;

.field public f2:Ljava/lang/String;

.field public g2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    filled-new-array {v0, v1, v2}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    sput-object v3, Lcom/mycompany/app/setting/SettingWeb;->h2:[I

    .line 9
    .line 10
    sget v3, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 11
    .line 12
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 13
    .line 14
    sget v5, Lnet/kaki87/soul2/testing/R$string;->only_text:I

    .line 15
    .line 16
    filled-new-array {v3, v4, v5}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sput-object v3, Lcom/mycompany/app/setting/SettingWeb;->i2:[I

    .line 21
    .line 22
    filled-new-array {v0, v1, v2}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/mycompany/app/setting/SettingWeb;->j2:[I

    .line 27
    .line 28
    return-void
.end method

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
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 15
    .line 16
    const/16 v4, 0xf

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 22
    .line 23
    const-string v3, "mHideImage"

    .line 24
    .line 25
    invoke-static {p0, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v0

    .line 31
    :goto_0
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 32
    .line 33
    const/16 v7, 0x10

    .line 34
    .line 35
    if-eq v6, v5, :cond_2

    .line 36
    .line 37
    sput v5, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 38
    .line 39
    const-string v3, "mWebScale"

    .line 40
    .line 41
    invoke-static {p0, v7, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move v3, v5

    .line 45
    :cond_2
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 46
    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 50
    .line 51
    const-string v3, "mReadMode"

    .line 52
    .line 53
    invoke-static {p0, v7, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move v3, v5

    .line 57
    :cond_3
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 58
    .line 59
    const/16 v7, 0xc8

    .line 60
    .line 61
    if-nez v6, :cond_4

    .line 62
    .line 63
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 64
    .line 65
    if-eq v6, v7, :cond_5

    .line 66
    .line 67
    :cond_4
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 68
    .line 69
    sput v7, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 70
    .line 71
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v6, "mZoomIcon"

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "mZoomSize"

    .line 81
    .line 82
    invoke-virtual {v3, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 86
    .line 87
    .line 88
    move v3, v5

    .line 89
    :cond_5
    sget v6, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 90
    .line 91
    const/16 v7, 0x64

    .line 92
    .line 93
    if-eq v6, v7, :cond_6

    .line 94
    .line 95
    sput v7, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 96
    .line 97
    const-string v3, "mTextSize"

    .line 98
    .line 99
    invoke-static {p0, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move v3, v5

    .line 103
    :cond_6
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 104
    .line 105
    if-nez v4, :cond_7

    .line 106
    .line 107
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 108
    .line 109
    if-ne v4, v1, :cond_7

    .line 110
    .line 111
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 112
    .line 113
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    :cond_7
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 120
    .line 121
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 122
    .line 123
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 124
    .line 125
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->u:I

    .line 130
    .line 131
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "mZoomAlpha"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v2, "mZoomColor"

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "mZoomPos"

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 151
    .line 152
    .line 153
    move v3, v5

    .line 154
    :cond_8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 155
    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 159
    .line 160
    if-nez v1, :cond_9

    .line 161
    .line 162
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_a

    .line 169
    .line 170
    :cond_9
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 171
    .line 172
    const-string v1, ""

    .line 173
    .line 174
    sput-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 175
    .line 176
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 177
    .line 178
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v2, "mUserFont"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v2, "mFontPath"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v2, "mFontBold"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 198
    .line 199
    .line 200
    move v3, v5

    .line 201
    :cond_a
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 202
    .line 203
    const/4 v2, 0x7

    .line 204
    if-eqz v1, :cond_b

    .line 205
    .line 206
    sput-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 207
    .line 208
    const-string v0, "mUserScript"

    .line 209
    .line 210
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_b
    move v5, v3

    .line 215
    :goto_1
    sget-wide v0, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 216
    .line 217
    const-wide/16 v3, 0x0

    .line 218
    .line 219
    cmp-long v0, v0, v3

    .line 220
    .line 221
    if-eqz v0, :cond_c

    .line 222
    .line 223
    sput-wide v3, Lcom/mycompany/app/pref/PrefPdf;->M:J

    .line 224
    .line 225
    const-string v0, "mScriptTime"

    .line 226
    .line 227
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_c
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 231
    .line 232
    if-eq v0, v2, :cond_d

    .line 233
    .line 234
    sput v2, Lcom/mycompany/app/pref/PrefPdf;->N:I

    .line 235
    .line 236
    const-string v0, "mScriptDay"

    .line 237
    .line 238
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_d
    return v5
.end method

.method public static R0()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "%"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, " ("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "%)"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingWeb;->P0(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    move-object v7, v1

    .line 14
    move-object v4, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$string;->font_default:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iput-object v7, v0, Lcom/mycompany/app/setting/SettingWeb;->e2:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingWeb;->f2:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$string;->user_script_info:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\n"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingWeb;->g2:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, v9, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 78
    .line 79
    sget v12, Lnet/kaki87/soul2/testing/R$string;->show_image:I

    .line 80
    .line 81
    sget v13, Lnet/kaki87/soul2/testing/R$string;->show_image_info:I

    .line 82
    .line 83
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 84
    .line 85
    xor-int/lit8 v15, v2, 0x1

    .line 86
    .line 87
    const/16 v16, 0x1

    .line 88
    .line 89
    const/4 v14, 0x1

    .line 90
    const/4 v11, 0x1

    .line 91
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 98
    .line 99
    sget v13, Lnet/kaki87/soul2/testing/R$string;->free_scale:I

    .line 100
    .line 101
    sget-object v2, Lcom/mycompany/app/setting/SettingWeb;->i2:[I

    .line 102
    .line 103
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 104
    .line 105
    aget v14, v2, v3

    .line 106
    .line 107
    const/4 v15, 0x0

    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    const/4 v12, 0x2

    .line 111
    invoke-direct/range {v11 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 118
    .line 119
    sget v14, Lnet/kaki87/soul2/testing/R$string;->reader_mode:I

    .line 120
    .line 121
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingWeb;->Q0(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    const/16 v17, 0x2

    .line 128
    .line 129
    const/4 v13, 0x3

    .line 130
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 137
    .line 138
    const/4 v3, 0x4

    .line 139
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 146
    .line 147
    sget v12, Lnet/kaki87/soul2/testing/R$string;->text_size:I

    .line 148
    .line 149
    invoke-static {}, Lcom/mycompany/app/setting/SettingWeb;->R0()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    const/4 v14, 0x0

    .line 154
    const/4 v15, 0x1

    .line 155
    const/4 v11, 0x5

    .line 156
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 163
    .line 164
    sget v5, Lnet/kaki87/soul2/testing/R$string;->font:I

    .line 165
    .line 166
    sget v6, Lnet/kaki87/soul2/testing/R$string;->font_info_1:I

    .line 167
    .line 168
    const/4 v8, 0x2

    .line 169
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 176
    .line 177
    const/4 v3, 0x7

    .line 178
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 185
    .line 186
    sget v12, Lnet/kaki87/soul2/testing/R$string;->user_script_on:I

    .line 187
    .line 188
    sget-boolean v15, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 189
    .line 190
    const/16 v16, 0x1

    .line 191
    .line 192
    const/4 v14, 0x1

    .line 193
    const/16 v11, 0x8

    .line 194
    .line 195
    const/4 v13, 0x0

    .line 196
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 203
    .line 204
    sget v4, Lnet/kaki87/soul2/testing/R$string;->user_script_list:I

    .line 205
    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/16 v3, 0x9

    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 218
    .line 219
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingWeb;->g2:Ljava/lang/String;

    .line 220
    .line 221
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->L:Z

    .line 222
    .line 223
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;Z)V

    .line 224
    .line 225
    .line 226
    const/16 v3, 0xb

    .line 227
    .line 228
    invoke-static {v1, v2, v3, v9}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 229
    .line 230
    .line 231
    return-object v1
.end method

.method public final P0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "app://"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x2c

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    sget p1, Lnet/kaki87/soul2/testing/R$string;->no_title:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_3
    return-object p1
.end method

.method public final Q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const-string p1, "TEXT"

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const-string p1, "HTML"

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$string;->check_brfore:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingWeb;->X1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/setting/SettingWeb;->d2:I

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lcom/mycompany/app/setting/SettingWeb;->d2:I

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "EXTRA_TYPE"

    .line 19
    .line 20
    const/16 v2, 0x1f

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogListBook;->p(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 p2, 0x7

    .line 13
    if-ne p1, p2, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingWeb;->P0(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    move-object v4, p1

    .line 30
    move-object v1, p2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget p1, Lnet/kaki87/soul2/testing/R$string;->font_default:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 p1, 0x0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingWeb;->e2:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingWeb;->f2:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 57
    .line 58
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$string;->font:I

    .line 61
    .line 62
    sget v3, Lnet/kaki87/soul2/testing/R$string;->font_info_1:I

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingWeb;->e2:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingWeb;->f2:Ljava/lang/String;

    .line 74
    .line 75
    :cond_4
    :goto_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekWeb;->H(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogListBook;->q(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    :cond_1
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
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingWeb;->X1:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "EXTRA_PATH"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingWeb;->Y1:Ljava/lang/String;

    .line 28
    .line 29
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/setting/SettingWeb;->d2:I

    .line 32
    .line 33
    const/4 p1, 0x7

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x9

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 41
    .line 42
    .line 43
    sget p1, Lnet/kaki87/soul2/testing/R$string;->web_content:I

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 47
    .line 48
    .line 49
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 50
    .line 51
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingWeb$1;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingWeb$1;-><init>(Lcom/mycompany/app/setting/SettingWeb;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->Y1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->e2:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->f2:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->g2:Ljava/lang/String;

    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekWeb;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingWeb;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingWeb;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 69
    .line 70
    .line 71
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->b2:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingWeb;->c2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->s(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.class public Lcom/mycompany/app/setting/SettingClean;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final A2:[I

.field public static final B2:[I

.field public static final C2:[I

.field public static final v2:[I

.field public static final w2:[I

.field public static final x2:[I

.field public static final y2:[I

.field public static final z2:[I


# instance fields
.field public X1:Z

.field public Y1:Z

.field public Z1:Ljava/lang/String;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public c2:Lcom/mycompany/app/dialog/DialogGuideArea;

.field public d2:Lcom/mycompany/app/dialog/DialogListBook;

.field public e2:Lcom/mycompany/app/view/MyPopupMenu;

.field public f2:Lcom/mycompany/app/view/MyPopupMenu;

.field public g2:Lcom/mycompany/app/view/MyPopupMenu;

.field public h2:Ljava/lang/String;

.field public i2:Ljava/lang/String;

.field public j2:Ljava/lang/String;

.field public k2:Z

.field public l2:J

.field public m2:J

.field public n2:Z

.field public o2:Z

.field public p2:Z

.field public q2:Z

.field public r2:Ljava/util/ArrayList;

.field public s2:Lcom/mycompany/app/view/MyPopupMenu;

.field public t2:Z

.field public u2:Lcom/mycompany/app/dialog/DialogSetMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->check_once:I

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->check_keep:I

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 12
    .line 13
    sget v1, Lnet/kaki87/soul2/testing/R$string;->over_block_info:I

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fast_down_guide:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    filled-new-array {v3, v1, v2}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lcom/mycompany/app/setting/SettingClean;->w2:[I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x2

    .line 26
    filled-new-array {v1, v2, v3}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sput-object v4, Lcom/mycompany/app/setting/SettingClean;->x2:[I

    .line 31
    .line 32
    sget v4, Lnet/kaki87/soul2/testing/R$string;->level_weak:I

    .line 33
    .line 34
    sget v5, Lnet/kaki87/soul2/testing/R$string;->normal_rate:I

    .line 35
    .line 36
    sget v6, Lnet/kaki87/soul2/testing/R$string;->level_strong:I

    .line 37
    .line 38
    filled-new-array {v0, v4, v5, v6}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    sput-object v4, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 43
    .line 44
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pop_block_info3:I

    .line 45
    .line 46
    sget v5, Lnet/kaki87/soul2/testing/R$string;->pop_block_info2:I

    .line 47
    .line 48
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pop_block_info1:I

    .line 49
    .line 50
    filled-new-array {v3, v4, v5, v6}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sput-object v4, Lcom/mycompany/app/setting/SettingClean;->z2:[I

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    filled-new-array {v4, v2, v1, v3}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    sput-object v4, Lcom/mycompany/app/setting/SettingClean;->A2:[I

    .line 62
    .line 63
    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_site:I

    .line 64
    .line 65
    sget v5, Lnet/kaki87/soul2/testing/R$string;->always_block:I

    .line 66
    .line 67
    filled-new-array {v0, v4, v5}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/mycompany/app/setting/SettingClean;->B2:[I

    .line 72
    .line 73
    filled-new-array {v2, v1, v3}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/mycompany/app/setting/SettingClean;->C2:[I

    .line 78
    .line 79
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

.method public static P0(Landroid/content/Context;)Z
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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 6
    .line 7
    const/16 v2, 0xe

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sput-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 13
    .line 14
    const-string v1, "mAdsBlock"

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
    sget-boolean v4, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 23
    .line 24
    const/16 v5, 0xc

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 29
    .line 30
    const-string v1, "mCheckEle3"

    .line 31
    .line 32
    invoke-static {p0, v5, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move v1, v3

    .line 36
    :cond_2
    sget-boolean v4, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    sput-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 41
    .line 42
    const-string v1, "mAreaBlock"

    .line 43
    .line 44
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move v1, v3

    .line 48
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    sput v0, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 53
    .line 54
    const-string v0, "mCheckOver2"

    .line 55
    .line 56
    invoke-static {p0, v5, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move v1, v3

    .line 60
    :cond_4
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 61
    .line 62
    if-eq v0, v3, :cond_5

    .line 63
    .line 64
    sput v3, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 65
    .line 66
    const-string v0, "mPopBlock2"

    .line 67
    .line 68
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move v1, v3

    .line 72
    :cond_5
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    const/4 v4, 0x7

    .line 76
    if-eq v0, v2, :cond_6

    .line 77
    .line 78
    sput v2, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 79
    .line 80
    const-string v0, "mAppBlock2"

    .line 81
    .line 82
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    move v3, v1

    .line 87
    :goto_1
    sget-wide v0, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 88
    .line 89
    const-wide/16 v5, 0x0

    .line 90
    .line 91
    cmp-long v0, v0, v5

    .line 92
    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    sput-wide v0, Lcom/mycompany/app/pref/PrefPdf;->J:J

    .line 100
    .line 101
    const-string v0, "mFilterTime"

    .line 102
    .line 103
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 107
    .line 108
    if-eq v0, v4, :cond_8

    .line 109
    .line 110
    sput v4, Lcom/mycompany/app/pref/PrefPdf;->K:I

    .line 111
    .line 112
    const-string v0, "mFilterDay"

    .line 113
    .line 114
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    return v3
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->h2:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->check_element:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->check_ele_info_0:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->h2:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->i2:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->i2:Ljava/lang/String;

    .line 60
    .line 61
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    xor-int/lit8 v7, v1, 0x1

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-direct {v3, v9, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 81
    .line 82
    sget v12, Lnet/kaki87/soul2/testing/R$string;->ads_block:I

    .line 83
    .line 84
    sget v13, Lnet/kaki87/soul2/testing/R$string;->ads_block_info:I

    .line 85
    .line 86
    sget-boolean v15, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 87
    .line 88
    const/16 v16, 0x1

    .line 89
    .line 90
    const/4 v14, 0x1

    .line 91
    const/4 v11, 0x1

    .line 92
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 99
    .line 100
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingClean;->h2:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingClean;->i2:Ljava/lang/String;

    .line 103
    .line 104
    sget-boolean v6, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 105
    .line 106
    move v8, v7

    .line 107
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 114
    .line 115
    sget v12, Lnet/kaki87/soul2/testing/R$string;->ads_filter:I

    .line 116
    .line 117
    const/4 v14, 0x0

    .line 118
    const/4 v15, 0x0

    .line 119
    const/4 v11, 0x3

    .line 120
    const/4 v13, 0x0

    .line 121
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 128
    .line 129
    sget v4, Lnet/kaki87/soul2/testing/R$string;->ads_white:I

    .line 130
    .line 131
    sget v6, Lnet/kaki87/soul2/testing/R$string;->guide_ads_allow:I

    .line 132
    .line 133
    const/4 v7, 0x2

    .line 134
    const/4 v3, 0x4

    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 143
    .line 144
    const/4 v3, 0x5

    .line 145
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 152
    .line 153
    sget v12, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 154
    .line 155
    sget v13, Lnet/kaki87/soul2/testing/R$string;->area_info_13:I

    .line 156
    .line 157
    sget-boolean v15, Lcom/mycompany/app/pref/PrefWeb;->p:Z

    .line 158
    .line 159
    const/4 v14, 0x3

    .line 160
    const/4 v11, 0x6

    .line 161
    invoke-direct/range {v10 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 168
    .line 169
    const/4 v3, 0x7

    .line 170
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 177
    .line 178
    sget v12, Lnet/kaki87/soul2/testing/R$string;->over_block:I

    .line 179
    .line 180
    sget v2, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 181
    .line 182
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 183
    .line 184
    aget v13, v3, v2

    .line 185
    .line 186
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->w2:[I

    .line 187
    .line 188
    aget v14, v3, v2

    .line 189
    .line 190
    const/4 v15, 0x1

    .line 191
    const/16 v11, 0x8

    .line 192
    .line 193
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 200
    .line 201
    sget v4, Lnet/kaki87/soul2/testing/R$string;->over_white:I

    .line 202
    .line 203
    sget v6, Lnet/kaki87/soul2/testing/R$string;->guide_over_allow:I

    .line 204
    .line 205
    const/16 v3, 0x9

    .line 206
    .line 207
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 214
    .line 215
    const/16 v3, 0xa

    .line 216
    .line 217
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 224
    .line 225
    sget v12, Lnet/kaki87/soul2/testing/R$string;->pop_block:I

    .line 226
    .line 227
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 228
    .line 229
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 230
    .line 231
    aget v13, v3, v2

    .line 232
    .line 233
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->z2:[I

    .line 234
    .line 235
    aget v14, v3, v2

    .line 236
    .line 237
    const/16 v11, 0xb

    .line 238
    .line 239
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 246
    .line 247
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pop_white:I

    .line 248
    .line 249
    sget v6, Lnet/kaki87/soul2/testing/R$string;->guide_pop_allow:I

    .line 250
    .line 251
    const/16 v3, 0xc

    .line 252
    .line 253
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    const/16 v3, 0xd

    .line 262
    .line 263
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 270
    .line 271
    sget v12, Lnet/kaki87/soul2/testing/R$string;->app_block:I

    .line 272
    .line 273
    sget-object v2, Lcom/mycompany/app/setting/SettingClean;->B2:[I

    .line 274
    .line 275
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 276
    .line 277
    aget v13, v2, v3

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingClean;->Q0()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    const/4 v15, 0x3

    .line 284
    const/16 v11, 0xe

    .line 285
    .line 286
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 293
    .line 294
    const/16 v3, 0xf

    .line 295
    .line 296
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 303
    .line 304
    sget v12, Lnet/kaki87/soul2/testing/R$string;->blocked_link:I

    .line 305
    .line 306
    const/4 v14, 0x0

    .line 307
    const/4 v15, 0x1

    .line 308
    const/16 v11, 0x10

    .line 309
    .line 310
    const/4 v13, 0x0

    .line 311
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 318
    .line 319
    sget v4, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 320
    .line 321
    sget-object v3, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 322
    .line 323
    sget v5, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 324
    .line 325
    aget v5, v3, v5

    .line 326
    .line 327
    const/4 v6, 0x0

    .line 328
    const/16 v3, 0x11

    .line 329
    .line 330
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 337
    .line 338
    const/16 v3, 0x12

    .line 339
    .line 340
    invoke-direct {v2, v3, v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 347
    .line 348
    sget v12, Lnet/kaki87/soul2/testing/R$string;->blocked_image:I

    .line 349
    .line 350
    const/4 v15, 0x3

    .line 351
    const/16 v11, 0x13

    .line 352
    .line 353
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 354
    .line 355
    .line 356
    const/16 v2, 0x14

    .line 357
    .line 358
    invoke-static {v1, v10, v2, v9}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 359
    .line 360
    .line 361
    return-object v1
.end method

.method public final O0(Ljava/io/File;Z)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    if-lez v1, :cond_4

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_4

    .line 20
    .line 21
    aget-object v4, v0, v3

    .line 22
    .line 23
    iget-object v5, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v4, v2}, Lcom/mycompany/app/setting/SettingClean;->O0(Ljava/io/File;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v5, p0, Lcom/mycompany/app/setting/SettingClean;->r2:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v5, v2

    .line 52
    :goto_1
    if-nez v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    if-nez p2, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    :cond_5
    :goto_3
    return-void
.end method

.method public final Q0()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->j2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget v0, Lnet/kaki87/soul2/testing/R$string;->app_block_info1:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->j2:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->w:I

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->j2:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->j2:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\n"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->app_block_info2:I

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final T0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingClean;->S0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 17
    .line 18
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 27
    .line 28
    const/16 v3, 0x13

    .line 29
    .line 30
    if-ne p1, v3, :cond_2

    .line 31
    .line 32
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ads_white:I

    .line 33
    .line 34
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v3, 0x14

    .line 38
    .line 39
    if-ne p1, v3, :cond_3

    .line 40
    .line 41
    sget p1, Lnet/kaki87/soul2/testing/R$string;->over_white:I

    .line 42
    .line 43
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/16 v3, 0x15

    .line 47
    .line 48
    if-ne p1, v3, :cond_4

    .line 49
    .line 50
    sget p1, Lnet/kaki87/soul2/testing/R$string;->pop_white:I

    .line 51
    .line 52
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/16 v3, 0x16

    .line 56
    .line 57
    if-ne p1, v3, :cond_5

    .line 58
    .line 59
    sget p1, Lnet/kaki87/soul2/testing/R$string;->blocked_link:I

    .line 60
    .line 61
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    const/16 v3, 0x17

    .line 65
    .line 66
    if-ne p1, v3, :cond_6

    .line 67
    .line 68
    sget p1, Lnet/kaki87/soul2/testing/R$string;->blocked_image:I

    .line 69
    .line 70
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    sget p1, Lnet/kaki87/soul2/testing/R$string;->ads_filter:I

    .line 74
    .line 75
    iput p1, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingClean;->q2:Z

    .line 78
    .line 79
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingClean;->n2:Z

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingClean;->o2:Z

    .line 83
    .line 84
    :goto_0
    new-instance p1, Lcom/mycompany/app/dialog/DialogListBook;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingClean;->Z1:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p1, p0, v0, v2, v1}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 92
    .line 93
    new-instance v0, Lcom/mycompany/app/setting/SettingClean$11;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingClean$11;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 102
    .line 103
    new-instance v0, Lcom/mycompany/app/setting/SettingClean$12;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingClean$12;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p1, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 109
    .line 110
    return-void
.end method

.method public final finish()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->p2:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/16 v2, 0x3e

    .line 5
    .line 6
    const-string v3, "EXTRA_TYPE"

    .line 7
    .line 8
    const-string v4, "EXTRA_FILTER"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->n2:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->o2:Z

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookFilter;->d(Landroid/content/Context;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    iget-wide v7, p0, Lcom/mycompany/app/setting/SettingClean;->l2:J

    .line 28
    .line 29
    cmp-long v0, v7, v5

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-boolean v4, p0, Lcom/mycompany/app/setting/SettingClean;->Y1:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->k2:Z

    .line 54
    .line 55
    sget-boolean v5, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 56
    .line 57
    if-eq v0, v5, :cond_4

    .line 58
    .line 59
    iput-boolean v5, p0, Lcom/mycompany/app/setting/SettingClean;->k2:Z

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    iget-boolean v4, p0, Lcom/mycompany/app/setting/SettingClean;->Y1:Z

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogListBook;->p(IILandroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p3, 0x3

    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p1, p3, :cond_2

    .line 15
    .line 16
    if-ne p2, v0, :cond_3

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingClean;->t2:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingClean;->t2:Z

    .line 24
    .line 25
    sput p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    sput-object p2, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "mLinkLockType"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "mLinkLockCode"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 55
    .line 56
    sget v2, Lnet/kaki87/soul2/testing/R$string;->lock_type:I

    .line 57
    .line 58
    sget-object p2, Lcom/mycompany/app/main/MainConst;->Z:[I

    .line 59
    .line 60
    sget p3, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 61
    .line 62
    aget v3, p2, p3

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x2

    .line 66
    const/16 v1, 0x11

    .line 67
    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const/4 p3, 0x2

    .line 76
    if-ne p1, p3, :cond_3

    .line 77
    .line 78
    if-ne p2, v0, :cond_3

    .line 79
    .line 80
    sget p1, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    const/16 p1, 0x16

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingClean;->T0(I)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingClean;->X1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "EXTRA_POPUP"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->Y1:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "EXTRA_PATH"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->Z1:Ljava/lang/String;

    .line 31
    .line 32
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->k2:Z

    .line 35
    .line 36
    const/16 v0, 0x9

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 48
    .line 49
    .line 50
    sget v0, Lnet/kaki87/soul2/testing/R$string;->clean_mode:I

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1, p1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 53
    .line 54
    .line 55
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 56
    .line 57
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingClean$1;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingClean$1;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->Z1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->h2:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->i2:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->j2:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->r2:Ljava/util/ArrayList;

    .line 14
    .line 15
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
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingClean;->R0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->u2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 73
    .line 74
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingClean;->s2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 95
    .line 96
    return-void

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 103
    .line 104
    .line 105
    :cond_8
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->X1:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean;->d2:Lcom/mycompany/app/dialog/DialogListBook;

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
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingClean;->X1:Z

    .line 18
    .line 19
    return-void
.end method

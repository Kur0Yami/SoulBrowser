.class public Lcom/mycompany/app/setting/SettingTrans;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final i2:[I

.field public static final j2:[I

.field public static final k2:[I


# instance fields
.field public X1:Z

.field public Y1:Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public c2:Lcom/mycompany/app/dialog/DialogWebView;

.field public d2:Lcom/mycompany/app/dialog/DialogTransLang;

.field public e2:Lcom/mycompany/app/view/MyPopupMenu;

.field public f2:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public g2:Lcom/mycompany/app/dialog/DialogListBook;

.field public h2:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    move-result-object v0

    .line 8
    sput-object v0, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 9
    .line 10
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$string;->trans_auto:I

    .line 13
    .line 14
    sget v3, Lnet/kaki87/soul2/testing/R$string;->trans_always:I

    .line 15
    .line 16
    filled-new-array {v0, v1, v3}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->trans_auto_info:I

    .line 23
    .line 24
    sget v1, Lnet/kaki87/soul2/testing/R$string;->trans_always_info:I

    .line 25
    .line 26
    filled-new-array {v2, v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/mycompany/app/setting/SettingTrans;->k2:[I

    .line 31
    .line 32
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

.method public static O0(Lcom/mycompany/app/setting/SettingTrans;I)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    const-string v2, "mRecentTrans"

    .line 13
    .line 14
    invoke-static {v0, v1, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingTrans;->Q0(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v0, p0, Lcom/mycompany/app/setting/SettingTrans;->h2:I

    .line 36
    .line 37
    if-lt p1, v0, :cond_3

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_3
    new-instance p1, Lcom/mycompany/app/setting/SettingTrans$10;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingTrans$10;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
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
    aget v3, v3, v2

    .line 13
    .line 14
    sget v4, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    sput v0, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 20
    .line 21
    const-string v4, "mTransMode2"

    .line 22
    .line 23
    invoke-static {p0, v0, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move v4, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v4, v0

    .line 29
    :goto_0
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 30
    .line 31
    if-eq v6, v2, :cond_2

    .line 32
    .line 33
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 34
    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    const-string v4, "mRecentTrans"

    .line 38
    .line 39
    invoke-static {p0, v2, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move v4, v5

    .line 43
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    sput-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 48
    .line 49
    const-string v2, "mTransIcon"

    .line 50
    .line 51
    invoke-static {p0, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move v4, v5

    .line 55
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    sput-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 60
    .line 61
    const-string v2, "mTransPage"

    .line 62
    .line 63
    invoke-static {p0, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move v4, v5

    .line 67
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 68
    .line 69
    if-nez v2, :cond_6

    .line 70
    .line 71
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 72
    .line 73
    if-ne v2, v1, :cond_6

    .line 74
    .line 75
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    return v4

    .line 85
    :cond_6
    :goto_1
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 86
    .line 87
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 88
    .line 89
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->Y:F

    .line 90
    .line 91
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->Z:I

    .line 96
    .line 97
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string v0, "mTrnsAlpha"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "mTrnsColor"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "mTrnsPos"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 117
    .line 118
    .line 119
    return v5
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 24

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_white:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_color:I

    .line 9
    .line 10
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 11
    .line 12
    sget-object v2, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 13
    .line 14
    aget v6, v2, v1

    .line 15
    .line 16
    sget-object v2, Lcom/mycompany/app/setting/SettingTrans;->k2:[I

    .line 17
    .line 18
    aget v7, v2, v1

    .line 19
    .line 20
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->w:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 25
    .line 26
    :goto_1
    move v11, v2

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->address_bar:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    sget v1, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 35
    .line 36
    move v12, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_2
    move v12, v2

    .line 39
    :goto_3
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->X:I

    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->W:I

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 44
    .line 45
    .line 46
    move-result v16

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    const/16 v4, 0x18

    .line 58
    .line 59
    iput v4, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 60
    .line 61
    iput v2, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 62
    .line 63
    iput v0, v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->v:I

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 69
    .line 70
    sget v5, Lnet/kaki87/soul2/testing/R$string;->trans_detect:I

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 81
    .line 82
    sget v6, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 83
    .line 84
    sget-object v7, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v5, 0x2

    .line 89
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 96
    .line 97
    sget v7, Lnet/kaki87/soul2/testing/R$string;->recent_lang:I

    .line 98
    .line 99
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->d0:I

    .line 100
    .line 101
    move-object/from16 v3, p0

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Lcom/mycompany/app/setting/SettingTrans;->Q0(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const/4 v10, 0x2

    .line 108
    const/4 v6, 0x3

    .line 109
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 116
    .line 117
    const/4 v4, 0x4

    .line 118
    invoke-direct {v0, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v17, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 125
    .line 126
    sget v19, Lnet/kaki87/soul2/testing/R$string;->trans_icon_always:I

    .line 127
    .line 128
    sget-boolean v22, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 129
    .line 130
    const/16 v23, 0x1

    .line 131
    .line 132
    const/16 v21, 0x1

    .line 133
    .line 134
    const/16 v18, 0x5

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    invoke-direct/range {v17 .. v23}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 139
    .line 140
    .line 141
    move-object/from16 v0, v17

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 147
    .line 148
    sget v10, Lnet/kaki87/soul2/testing/R$string;->icon_pos:I

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    const/4 v9, 0x6

    .line 152
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 159
    .line 160
    sget v15, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 161
    .line 162
    const/16 v17, 0x2

    .line 163
    .line 164
    const/16 v18, 0x0

    .line 165
    .line 166
    const/4 v14, 0x7

    .line 167
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 174
    .line 175
    const/16 v4, 0x8

    .line 176
    .line 177
    invoke-direct {v0, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 184
    .line 185
    sget v7, Lnet/kaki87/soul2/testing/R$string;->trans_except:I

    .line 186
    .line 187
    sget v9, Lnet/kaki87/soul2/testing/R$string;->trans_except_info:I

    .line 188
    .line 189
    const/4 v10, 0x3

    .line 190
    const/16 v6, 0x9

    .line 191
    .line 192
    const/4 v8, 0x0

    .line 193
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 194
    .line 195
    .line 196
    const/16 v0, 0xa

    .line 197
    .line 198
    invoke-static {v1, v5, v0, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 199
    .line 200
    .line 201
    return-object v1
.end method

.method public final Q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    const-string v0, ""

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->d2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->d2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final T0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->d2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

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
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingTrans;->X1:Z

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->Y1:Ljava/lang/String;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->translator:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, p1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 22
    .line 23
    .line 24
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingTrans$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingTrans$1;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->Y1:Ljava/lang/String;

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
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->a2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingTrans;->S0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingTrans;->R0()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 83
    .line 84
    .line 85
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 91
    .line 92
    .line 93
    :cond_7
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingTrans;->X1:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTrans;->g2:Lcom/mycompany/app/dialog/DialogListBook;

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
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingTrans;->X1:Z

    .line 25
    .line 26
    return-void
.end method

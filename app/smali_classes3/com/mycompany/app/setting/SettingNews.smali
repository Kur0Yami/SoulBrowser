.class public Lcom/mycompany/app/setting/SettingNews;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final n2:[I

.field public static final o2:[I


# instance fields
.field public X1:[Ljava/lang/String;

.field public Y1:[Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/view/MyPopupMenu;

.field public b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public c2:Lcom/mycompany/app/view/MyPopupMenu;

.field public d2:Lcom/mycompany/app/view/MyPopupMenu;

.field public e2:Lcom/mycompany/app/dialog/DialogEditText;

.field public f2:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public g2:Lcom/mycompany/app/dialog/DialogNewsLocale;

.field public h2:Lcom/mycompany/app/dialog/DialogTransLang;

.field public i2:Z

.field public j2:Ljava/lang/String;

.field public k2:I

.field public l2:Z

.field public m2:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->reader_mode:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->preview:I

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->open_url:I

    .line 6
    .line 7
    sget v3, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 8
    .line 9
    sget v4, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    .line 10
    .line 11
    sget v5, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    .line 12
    .line 13
    sget v6, Lnet/kaki87/soul2/testing/R$string;->secret_tab:I

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/mycompany/app/setting/SettingNews;->o2:[I

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
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

.method public static O0(Lcom/mycompany/app/setting/SettingNews;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingNews;->l2:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "mRecentTitle"

    .line 18
    .line 19
    invoke-static {v0, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x9

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingNews;->Q0(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 36
    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/mycompany/app/setting/SettingNews;->m2:I

    .line 41
    .line 42
    if-lt p1, v0, :cond_7

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 46
    .line 47
    if-ne v0, p1, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 53
    .line 54
    const-string v3, "mRecentLocal"

    .line 55
    .line 56
    invoke-static {v0, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const/4 v2, 0x6

    .line 64
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingNews;->Q0(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 72
    .line 73
    if-ne p1, v1, :cond_6

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    iget v0, p0, Lcom/mycompany/app/setting/SettingNews;->m2:I

    .line 77
    .line 78
    if-lt p1, v0, :cond_7

    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :cond_7
    new-instance p1, Lcom/mycompany/app/setting/SettingNews$10;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingNews$10;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
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
    aget v3, v3, v2

    .line 13
    .line 14
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 22
    .line 23
    const-string v4, "mNewsUse"

    .line 24
    .line 25
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v0

    .line 31
    :goto_0
    sget-object v7, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    sput-object v4, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "mNewsUrl"

    .line 44
    .line 45
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move v4, v6

    .line 49
    :cond_2
    sget v7, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 50
    .line 51
    if-eq v7, v2, :cond_3

    .line 52
    .line 53
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 54
    .line 55
    const-string v4, "mRecentLocal"

    .line 56
    .line 57
    invoke-static {p0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move v4, v6

    .line 61
    :cond_3
    sget v7, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 62
    .line 63
    if-eq v7, v2, :cond_4

    .line 64
    .line 65
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 66
    .line 67
    const-string v2, "mRecentTitle"

    .line 68
    .line 69
    invoke-static {p0, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move v4, v6

    .line 73
    :cond_4
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 74
    .line 75
    if-nez v2, :cond_5

    .line 76
    .line 77
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 78
    .line 79
    const-string v2, "mNewsTitle"

    .line 80
    .line 81
    invoke-static {p0, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move v4, v6

    .line 85
    :cond_5
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 90
    .line 91
    const-string v2, "mNewsOpen"

    .line 92
    .line 93
    invoke-static {p0, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move v4, v6

    .line 97
    :cond_6
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtri;->C:Z

    .line 98
    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZtri;->C:Z

    .line 102
    .line 103
    const/16 v2, 0x11

    .line 104
    .line 105
    const-string v4, "mNewsIcon"

    .line 106
    .line 107
    invoke-static {p0, v2, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move v4, v6

    .line 111
    :cond_7
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 112
    .line 113
    if-nez v2, :cond_9

    .line 114
    .line 115
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 116
    .line 117
    if-ne v2, v1, :cond_9

    .line 118
    .line 119
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 120
    .line 121
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_8

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    return v4

    .line 129
    :cond_9
    :goto_1
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 130
    .line 131
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 132
    .line 133
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->M:F

    .line 134
    .line 135
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->N:I

    .line 140
    .line 141
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string v0, "mNewsAlpha"

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "mNewsColor"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "mNewsPos"

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 161
    .line 162
    .line 163
    return v6
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    sget-object v3, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 20
    .line 21
    invoke-direct {v6, v5, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 28
    .line 29
    sget v9, Lnet/kaki87/soul2/testing/R$string;->news_show:I

    .line 30
    .line 31
    sget v10, Lnet/kaki87/soul2/testing/R$string;->not_support_locale:I

    .line 32
    .line 33
    sget-boolean v12, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 34
    .line 35
    const/4 v13, 0x1

    .line 36
    const/4 v11, 0x1

    .line 37
    const/4 v8, 0x1

    .line 38
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 45
    .line 46
    sget v10, Lnet/kaki87/soul2/testing/R$string;->news_info_1:I

    .line 47
    .line 48
    sget-object v11, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v9, 0x2

    .line 53
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 60
    .line 61
    sget v11, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 62
    .line 63
    sget v4, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 64
    .line 65
    aget v12, v3, v4

    .line 66
    .line 67
    const/4 v14, 0x2

    .line 68
    const/4 v10, 0x3

    .line 69
    invoke-direct/range {v9 .. v14}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v9, v2, v5}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->L:I

    .line 77
    .line 78
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->K:I

    .line 79
    .line 80
    invoke-static {v1, v6}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 90
    .line 91
    invoke-direct {v6, v5, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 98
    .line 99
    sget v13, Lnet/kaki87/soul2/testing/R$string;->news_show:I

    .line 100
    .line 101
    sget v14, Lnet/kaki87/soul2/testing/R$string;->not_support_locale:I

    .line 102
    .line 103
    sget-boolean v16, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 104
    .line 105
    const/16 v17, 0x1

    .line 106
    .line 107
    const/4 v15, 0x1

    .line 108
    const/4 v12, 0x1

    .line 109
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 116
    .line 117
    sget v14, Lnet/kaki87/soul2/testing/R$string;->news_info_1:I

    .line 118
    .line 119
    sget v15, Lnet/kaki87/soul2/testing/R$string;->news_info_2:I

    .line 120
    .line 121
    const/16 v17, 0x0

    .line 122
    .line 123
    const/4 v13, 0x2

    .line 124
    const-string v16, "https://news.google.com"

    .line 125
    .line 126
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 133
    .line 134
    sget v15, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 135
    .line 136
    sget v4, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 137
    .line 138
    aget v16, v3, v4

    .line 139
    .line 140
    const/16 v18, 0x2

    .line 141
    .line 142
    const/4 v14, 0x3

    .line 143
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 150
    .line 151
    invoke-direct {v3, v2, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 158
    .line 159
    sget v13, Lnet/kaki87/soul2/testing/R$string;->news_locale:I

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->R0()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v16, 0x1

    .line 167
    .line 168
    const/4 v12, 0x5

    .line 169
    invoke-direct/range {v11 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 176
    .line 177
    sget v14, Lnet/kaki87/soul2/testing/R$string;->recent_lang:I

    .line 178
    .line 179
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingNews;->Q0(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    const/16 v17, 0x2

    .line 188
    .line 189
    const/4 v13, 0x6

    .line 190
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 197
    .line 198
    const/4 v3, 0x7

    .line 199
    invoke-direct {v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 206
    .line 207
    sget v13, Lnet/kaki87/soul2/testing/R$string;->news_trans:I

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->S0()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    const/4 v15, 0x0

    .line 214
    const/16 v16, 0x1

    .line 215
    .line 216
    const/16 v12, 0x8

    .line 217
    .line 218
    invoke-direct/range {v11 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 225
    .line 226
    sget v14, Lnet/kaki87/soul2/testing/R$string;->recent_lang:I

    .line 227
    .line 228
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingNews;->Q0(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    const/16 v13, 0x9

    .line 237
    .line 238
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 245
    .line 246
    const/16 v3, 0xa

    .line 247
    .line 248
    invoke-direct {v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 255
    .line 256
    sget v13, Lnet/kaki87/soul2/testing/R$string;->search_icon:I

    .line 257
    .line 258
    sget v14, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 259
    .line 260
    sget-boolean v16, Lcom/mycompany/app/pref/PrefZtri;->C:Z

    .line 261
    .line 262
    const/16 v17, 0x1

    .line 263
    .line 264
    const/4 v15, 0x1

    .line 265
    const/16 v12, 0xb

    .line 266
    .line 267
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 274
    .line 275
    sget v9, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 276
    .line 277
    const/4 v11, 0x2

    .line 278
    const/4 v12, 0x0

    .line 279
    const/16 v8, 0xc

    .line 280
    .line 281
    invoke-direct/range {v7 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 282
    .line 283
    .line 284
    const/16 v2, 0xd

    .line 285
    .line 286
    invoke-static {v1, v7, v2, v5}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 287
    .line 288
    .line 289
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

.method public final R0()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    aget-object v0, v0, v2

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    return-object v1
.end method

.method public final S0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->O:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final T0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->e2:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditText;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->e2:Lcom/mycompany/app/dialog/DialogEditText;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final U0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->g2:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->g2:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->h2:Lcom/mycompany/app/dialog/DialogTransLang;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->h2:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final W0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->e2:Lcom/mycompany/app/dialog/DialogEditText;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->g2:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->h2:Lcom/mycompany/app/dialog/DialogTransLang;

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

.method public final X0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :cond_0
    :goto_0
    move-object v1, p0

    .line 6
    goto :goto_2

    .line 7
    :cond_1
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_2
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingNews;->l2:Z

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 29
    .line 30
    iput p2, p0, Lcom/mycompany/app/setting/SettingNews;->m2:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_4
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 34
    .line 35
    iput p2, p0, Lcom/mycompany/app/setting/SettingNews;->m2:I

    .line 36
    .line 37
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history_zero:I

    .line 46
    .line 47
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 57
    .line 58
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    sget v1, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 68
    .line 69
    invoke-direct {p2, v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 80
    .line 81
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 82
    .line 83
    new-instance v6, Lcom/mycompany/app/setting/SettingNews$7;

    .line 84
    .line 85
    invoke-direct {v6, p0}, Lcom/mycompany/app/setting/SettingNews$7;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 86
    .line 87
    .line 88
    move-object v1, p0

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 93
    .line 94
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lnet/kaki87/soul2/testing/R$array;->news_lang:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget v0, Lnet/kaki87/soul2/testing/R$array;->news_code:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews;->Y1:[Ljava/lang/String;

    .line 27
    .line 28
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingNews;->i2:Z

    .line 31
    .line 32
    sget-object p1, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews;->j2:Ljava/lang/String;

    .line 35
    .line 36
    sget p1, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 37
    .line 38
    iput p1, p0, Lcom/mycompany/app/setting/SettingNews;->k2:I

    .line 39
    .line 40
    sget p1, Lnet/kaki87/soul2/testing/R$string;->news_title:I

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 45
    .line 46
    .line 47
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 48
    .line 49
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingNews$1;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingNews$1;-><init>(Lcom/mycompany/app/setting/SettingNews;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->Y1:[Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->j2:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public final onPause()V
    .locals 3

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
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->b2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingNews;->T0()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->f2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingNews;->U0()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingNews;->V0()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 70
    .line 71
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 81
    .line 82
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingNews;->i2:Z

    .line 83
    .line 84
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 85
    .line 86
    if-ne v0, v2, :cond_6

    .line 87
    .line 88
    iget v0, p0, Lcom/mycompany/app/setting/SettingNews;->k2:I

    .line 89
    .line 90
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 91
    .line 92
    if-ne v0, v2, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews;->j2:Ljava/lang/String;

    .line 95
    .line 96
    sget-object v2, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_8

    .line 103
    .line 104
    :cond_6
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 105
    .line 106
    const/16 v2, 0x9

    .line 107
    .line 108
    if-ne v0, v2, :cond_7

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 112
    .line 113
    const-string v0, ""

    .line 114
    .line 115
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtwo;->u(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 123
    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/DataNews;->b(Ljava/util/List;)J

    .line 133
    .line 134
    .line 135
    :cond_8
    return-void
.end method

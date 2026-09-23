.class public Lcom/mycompany/app/setting/SettingMemory;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic d2:I


# instance fields
.field public X1:Z

.field public Y1:Ljava/lang/String;

.field public Z1:Lcom/mycompany/app/view/MyPopupMenu;

.field public a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public b2:Lcom/mycompany/app/dialog/DialogListBook;

.field public c2:I


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

.method public static O0(Lcom/mycompany/app/setting/SettingMemory;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/mycompany/app/setting/SettingMemory;->c2:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 15
    .line 16
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "mPageMemory"

    .line 25
    .line 26
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 30
    .line 31
    xor-int/lit8 v5, p1, 0x1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 34
    .line 35
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 38
    .line 39
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object p0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/mycompany/app/setting/SettingMemory;->S0(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v7, 0x2

    .line 52
    const/4 v1, 0x3

    .line 53
    move v6, v5

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const/4 v1, 0x6

    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 65
    .line 66
    if-ne v0, p1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 72
    .line 73
    const-string v1, "mTabLimit"

    .line 74
    .line 75
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 79
    .line 80
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$string;->open_limit:I

    .line 83
    .line 84
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object p0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/mycompany/app/setting/SettingMemory;->U0(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x1

    .line 98
    const/4 v1, 0x6

    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    const/4 v1, 0x7

    .line 108
    if-ne v0, v1, :cond_6

    .line 109
    .line 110
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 111
    .line 112
    if-ne v0, p1, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 118
    .line 119
    const-string v1, "mTabMemory"

    .line 120
    .line 121
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 125
    .line 126
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 127
    .line 128
    sget v2, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 129
    .line 130
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object p0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {p0}, Lcom/mycompany/app/setting/SettingMemory;->T0(Landroid/content/Context;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    const/4 v1, 0x7

    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 154
    .line 155
    if-ne v0, p1, :cond_7

    .line 156
    .line 157
    :goto_0
    return-void

    .line 158
    :cond_7
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 161
    .line 162
    const-string v1, "mDayMemory"

    .line 163
    .line 164
    invoke-static {v0, v2, p1, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 168
    .line 169
    new-instance v0, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 170
    .line 171
    sget v2, Lnet/kaki87/soul2/testing/R$string;->mem_keep:I

    .line 172
    .line 173
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcom/mycompany/app/setting/SettingMemory;->Q0(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    sget v3, Lnet/kaki87/soul2/testing/R$string;->mem_keep_info:I

    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    const/4 v4, 0x3

    .line 183
    const/16 v1, 0xa

    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public static P0(Landroid/content/Context;)Z
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
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 10
    .line 11
    const/16 v4, 0x10

    .line 12
    .line 13
    if-eq v3, v1, :cond_1

    .line 14
    .line 15
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 16
    .line 17
    const-string v1, "mAddPage"

    .line 18
    .line 19
    invoke-static {p0, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v1, v0

    .line 25
    :goto_0
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 26
    .line 27
    const/4 v5, 0x5

    .line 28
    if-eq v3, v5, :cond_2

    .line 29
    .line 30
    sput v5, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 31
    .line 32
    const-string v1, "mPageMemory"

    .line 33
    .line 34
    invoke-static {p0, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_2
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 43
    .line 44
    const-string v0, "mTabLimit"

    .line 45
    .line 46
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move v1, v2

    .line 50
    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 51
    .line 52
    if-eq v0, v5, :cond_4

    .line 53
    .line 54
    sput v5, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 55
    .line 56
    const-string v0, "mTabMemory"

    .line 57
    .line 58
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move v1, v2

    .line 62
    :cond_4
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    if-eq v0, v3, :cond_5

    .line 66
    .line 67
    sput v3, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 68
    .line 69
    const-string v0, "mDayMemory"

    .line 70
    .line 71
    invoke-static {p0, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    return v1
.end method

.method public static S0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->limit_info_3:I

    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->without_load_info:I

    .line 23
    .line 24
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static T0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->limit_info_2:I

    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_tip:I

    .line 23
    .line 24
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static U0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->limit_info_1:I

    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->tab_tip:I

    .line 23
    .line 24
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_dark_24:I

    .line 8
    .line 9
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_none_dark_24:I

    .line 10
    .line 11
    :goto_0
    move v7, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_black_24:I

    .line 14
    .line 15
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_none_black_24:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget v3, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "\n"

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    xor-int/lit8 v13, v3, 0x1

    .line 54
    .line 55
    new-instance v9, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    invoke-direct {v3, v10, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 70
    .line 71
    sget v5, Lnet/kaki87/soul2/testing/R$string;->page:I

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 82
    .line 83
    sget v4, Lnet/kaki87/soul2/testing/R$string;->without_load:I

    .line 84
    .line 85
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 86
    .line 87
    const/4 v6, 0x2

    .line 88
    invoke-direct {v3, v1, v6, v4, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IIZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 95
    .line 96
    move v1, v10

    .line 97
    sget v10, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 98
    .line 99
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->H:I

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/mycompany/app/setting/SettingMemory;->S0(Landroid/content/Context;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    const/4 v15, 0x2

    .line 112
    move-object v3, v9

    .line 113
    const/4 v9, 0x3

    .line 114
    move v14, v13

    .line 115
    move-object v7, v3

    .line 116
    invoke-direct/range {v8 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 123
    .line 124
    const/4 v4, 0x4

    .line 125
    invoke-direct {v3, v4, v1}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move v3, v1

    .line 132
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 133
    .line 134
    move v4, v3

    .line 135
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 136
    .line 137
    move v5, v4

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    move v8, v5

    .line 141
    move v5, v2

    .line 142
    const/4 v2, 0x5

    .line 143
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 150
    .line 151
    sget v11, Lnet/kaki87/soul2/testing/R$string;->open_limit:I

    .line 152
    .line 153
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->F:I

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v1}, Lcom/mycompany/app/setting/SettingMemory;->U0(Landroid/content/Context;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v16, 0x1

    .line 167
    .line 168
    const/4 v10, 0x6

    .line 169
    const/4 v14, 0x0

    .line 170
    invoke-direct/range {v9 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 177
    .line 178
    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 179
    .line 180
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingMemory;->R0(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/mycompany/app/setting/SettingMemory;->T0(Landroid/content/Context;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    const/4 v11, 0x7

    .line 197
    invoke-direct/range {v10 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 204
    .line 205
    sget v3, Lnet/kaki87/soul2/testing/R$string;->mem_block_list:I

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    const/4 v6, 0x2

    .line 209
    const/16 v2, 0x8

    .line 210
    .line 211
    const/4 v4, 0x0

    .line 212
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 219
    .line 220
    const/16 v2, 0x9

    .line 221
    .line 222
    invoke-direct {v1, v2, v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance v9, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 229
    .line 230
    sget v11, Lnet/kaki87/soul2/testing/R$string;->mem_keep:I

    .line 231
    .line 232
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->I:I

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingMemory;->Q0(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_keep_info:I

    .line 239
    .line 240
    const/4 v13, 0x3

    .line 241
    const/16 v10, 0xa

    .line 242
    .line 243
    invoke-direct/range {v9 .. v16}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 244
    .line 245
    .line 246
    const/16 v1, 0xb

    .line 247
    .line 248
    invoke-static {v7, v9, v1, v8}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 249
    .line 250
    .line 251
    return-object v7
.end method

.method public final Q0(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget p1, Lnet/kaki87/soul2/testing/R$string;->time_day:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final R0(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->history_none:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

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
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingMemory;->X1:Z

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->Y1:Ljava/lang/String;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->mem_save:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

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
    new-instance v0, Lcom/mycompany/app/setting/SettingMemory$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMemory$1;-><init>(Lcom/mycompany/app/setting/SettingMemory;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->Y1:Ljava/lang/String;

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
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMemory;->a2:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMemory;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogListBook;->r(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMemory;->X1:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMemory;->b2:Lcom/mycompany/app/dialog/DialogListBook;

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
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMemory;->X1:Z

    .line 18
    .line 19
    return-void
.end method

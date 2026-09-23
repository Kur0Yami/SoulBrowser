.class public Lcom/mycompany/app/setting/SettingTts;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic c2:I


# instance fields
.field public X1:Z

.field public Y1:Lcom/mycompany/app/dialog/DialogConfirm;

.field public Z1:Lcom/mycompany/app/dialog/DialogSetTts;

.field public a2:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public b2:Z


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
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 15
    .line 16
    const/16 v4, 0xc

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 22
    .line 23
    const-string v3, "mTtsMode"

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
    sget-object v6, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/high16 v7, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    sget v6, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 42
    .line 43
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_2

    .line 48
    .line 49
    sget v6, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 50
    .line 51
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    :cond_2
    const-string v6, ""

    .line 58
    .line 59
    sput-object v6, Lcom/mycompany/app/pref/PrefTts;->k:Ljava/lang/String;

    .line 60
    .line 61
    sput v7, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 62
    .line 63
    sput v7, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const-string v7, "mTtsLang"

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v7, "mTtsRate"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v7, "mTtsPitch"

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 85
    .line 86
    .line 87
    :cond_3
    sget-boolean v6, Lcom/mycompany/app/pref/PrefTts;->n:Z

    .line 88
    .line 89
    if-nez v6, :cond_4

    .line 90
    .line 91
    sput-boolean v5, Lcom/mycompany/app/pref/PrefTts;->n:Z

    .line 92
    .line 93
    const-string v3, "mTtsIcon"

    .line 94
    .line 95
    invoke-static {p0, v4, v3}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    move v3, v5

    .line 99
    :cond_4
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 100
    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 104
    .line 105
    if-ne v4, v1, :cond_6

    .line 106
    .line 107
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 108
    .line 109
    invoke-static {v4, v2}, Ljava/lang/Float;->compare(FF)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    return v3

    .line 117
    :cond_6
    :goto_1
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 118
    .line 119
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 120
    .line 121
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 122
    .line 123
    invoke-static {v1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    sput v0, Lcom/mycompany/app/pref/PrefEditor;->q:I

    .line 128
    .line 129
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string v0, "mTtsAlpha"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "mTtsColor"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "mTtsPos"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 149
    .line 150
    .line 151
    return v5
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
    sget v2, Lnet/kaki87/soul2/testing/R$string;->stop_icon_info:I

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
    sget v2, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

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
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 36
    .line 37
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->n:I

    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    invoke-direct {v3, v10, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v13, Lnet/kaki87/soul2/testing/R$string;->tts_on:I

    .line 61
    .line 62
    sget v14, Lnet/kaki87/soul2/testing/R$string;->tts_info_1:I

    .line 63
    .line 64
    sget-boolean v16, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 65
    .line 66
    const/16 v17, 0x1

    .line 67
    .line 68
    const/4 v15, 0x1

    .line 69
    const/4 v12, 0x1

    .line 70
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v12, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 77
    .line 78
    sget v14, Lnet/kaki87/soul2/testing/R$string;->detail_setting:I

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const/16 v17, 0x2

    .line 83
    .line 84
    const/4 v13, 0x2

    .line 85
    const/4 v15, 0x0

    .line 86
    invoke-direct/range {v12 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 93
    .line 94
    const/4 v4, 0x3

    .line 95
    invoke-direct {v3, v4, v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 102
    .line 103
    sget v4, Lnet/kaki87/soul2/testing/R$string;->stop_icon:I

    .line 104
    .line 105
    sget-boolean v5, Lcom/mycompany/app/pref/PrefTts;->n:Z

    .line 106
    .line 107
    const/4 v6, 0x4

    .line 108
    invoke-direct {v3, v1, v6, v4, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IIZ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 115
    .line 116
    sget v6, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 117
    .line 118
    const/4 v8, 0x2

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v5, 0x5

    .line 121
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 122
    .line 123
    .line 124
    const/4 v1, 0x6

    .line 125
    invoke-static {v2, v4, v1, v10}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 126
    .line 127
    .line 128
    return-object v2
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTts;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingTts;->Y1:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingTts;->X1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingTts;->b2:Z

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingTts;->b2:Z

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
    const/16 v2, 0x3c

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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingTts;->Z1:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetTts;->E(Z)V

    .line 13
    .line 14
    .line 15
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
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingTts;->X1:Z

    .line 16
    .line 17
    sget-boolean p1, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingTts;->b2:Z

    .line 20
    .line 21
    sget p1, Lnet/kaki87/soul2/testing/R$string;->tts_mode:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

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
    new-instance v0, Lcom/mycompany/app/setting/SettingTts$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingTts$1;-><init>(Lcom/mycompany/app/setting/SettingTts;)V

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
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingTts;->P0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTts;->Z1:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTts;->Z1:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTts;->a2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingTts;->a2:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTts;->Z1:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

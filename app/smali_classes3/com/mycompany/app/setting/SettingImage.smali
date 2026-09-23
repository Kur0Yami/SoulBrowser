.class public Lcom/mycompany/app/setting/SettingImage;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyPopupMenu;

.field public Y1:Z

.field public Z2:Z


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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    sput-boolean v3, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 12
    .line 13
    const-string v1, "mShowThumb"

    .line 14
    .line 15
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 22
    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    sput-boolean v3, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 26
    .line 27
    const-string v1, "mShowGuide"

    .line 28
    .line 29
    invoke-static {p0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move v1, v3

    .line 33
    :cond_2
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 34
    .line 35
    mul-int/lit8 v5, v4, 0x2

    .line 36
    .line 37
    sget v6, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 38
    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    sget v6, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 42
    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    sget v6, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 46
    .line 47
    if-ne v6, v4, :cond_3

    .line 48
    .line 49
    sget v6, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 50
    .line 51
    if-ne v6, v4, :cond_3

    .line 52
    .line 53
    sget v6, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 54
    .line 55
    if-ne v6, v5, :cond_3

    .line 56
    .line 57
    sget v6, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 58
    .line 59
    if-eq v6, v5, :cond_4

    .line 60
    .line 61
    :cond_3
    sput v0, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 62
    .line 63
    sput v0, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 64
    .line 65
    sput v4, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 66
    .line 67
    sput v4, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 68
    .line 69
    sput v5, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 70
    .line 71
    sput v5, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 72
    .line 73
    invoke-static {p0, v0}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "mTapLeft"

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v5, "mTapRight"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v5, "mPortAreaLeft"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v5, "mPortAreaRight"

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v5, "mLandAreaLeft"

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v5, "mLandAreaRight"

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 108
    .line 109
    .line 110
    :cond_4
    sget-boolean v4, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    sput-boolean v0, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 115
    .line 116
    const-string v0, "mVolTurn"

    .line 117
    .line 118
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move v1, v3

    .line 122
    :cond_5
    sget v0, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 123
    .line 124
    if-eq v0, v3, :cond_6

    .line 125
    .line 126
    sput v3, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 127
    .line 128
    const-string v0, "mScreenOff"

    .line 129
    .line 130
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v3

    .line 134
    :cond_6
    return v1
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
    sget v6, Lnet/kaki87/soul2/testing/R$string;->show_thumb:I

    .line 19
    .line 20
    sget v7, Lnet/kaki87/soul2/testing/R$string;->show_thumb_info:I

    .line 21
    .line 22
    sget-boolean v9, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 34
    .line 35
    sget v7, Lnet/kaki87/soul2/testing/R$string;->show_page_guide:I

    .line 36
    .line 37
    sget-boolean v10, Lcom/mycompany/app/pref/PrefImage;->n:Z

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v6, Lnet/kaki87/soul2/testing/R$string;->tap_turn:I

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 72
    .line 73
    sget v7, Lnet/kaki87/soul2/testing/R$string;->volume_turn:I

    .line 74
    .line 75
    sget-boolean v10, Lcom/mycompany/app/pref/PrefImage;->o:Z

    .line 76
    .line 77
    const/4 v9, 0x2

    .line 78
    const/4 v6, 0x5

    .line 79
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 95
    .line 96
    sget v6, Lnet/kaki87/soul2/testing/R$string;->screen_off:I

    .line 97
    .line 98
    sget-object v1, Lcom/mycompany/app/main/MainConst;->K:[I

    .line 99
    .line 100
    sget v2, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 101
    .line 102
    aget v7, v1, v2

    .line 103
    .line 104
    sget-object v1, Lcom/mycompany/app/main/MainConst;->L:[I

    .line 105
    .line 106
    sget v2, Lcom/mycompany/app/pref/PrefImage;->p:I

    .line 107
    .line 108
    aget v8, v1, v2

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingImage;->Z2:Z

    if-eqz v1, :screen_off_last_in_section

    const/4 v9, 0x1

    goto :screen_off_build

    :screen_off_last_in_section
    const/4 v9, 0x3

    :screen_off_build
    const/4 v5, 0x7

    .line 111
    .line 112
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingImage;->Z2:Z

    if-eqz v1, :add_pdf_timeout_done

    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v6, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout:I

    sget v1, Lcom/mycompany/app/pref/PrefImage;->J:I

    if-nez v1, :pdf_timeout_label_default

    sget v7, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_disabled:I

    goto :pdf_timeout_add_item

    :pdf_timeout_label_default
    sget v7, Lnet/kaki87/soul2/testing/R$string;->pdf_controls_timeout_default:I

    :pdf_timeout_add_item
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/16 v5, 0x9

    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :add_pdf_timeout_done
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    return-object v0
.end method

.method public final finish()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingImage;->Y1:Z

    .line 7
    .line 8
    sget-boolean v2, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v2, "EXTRA_THUMB"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/pref/PrefImage;->m:Z

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingImage;->Y1:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_PDF_PREVIEW"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingImage;->Z2:Z

    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingImage;->Z2:Z

    if-eqz p1, :normal_title

    sget p1, Lnet/kaki87/soul2/testing/R$string;->pdf_preview_settings:I

    goto :show_title

    :normal_title
    sget p1, Lnet/kaki87/soul2/testing/R$string;->setting:I

    :show_title

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 13
    .line 14
    .line 15
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingImage$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingImage$1;-><init>(Lcom/mycompany/app/setting/SettingImage;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImage;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

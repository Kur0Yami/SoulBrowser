.class public Lcom/mycompany/app/setting/SettingQuick;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic e2:I


# instance fields
.field public X1:Lcom/mycompany/app/dialog/DialogCastGuide;

.field public Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

.field public Z1:Z

.field public a2:Z

.field public b2:Z

.field public c2:I

.field public d2:I


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
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 6
    .line 7
    const/16 v2, 0x11

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 13
    .line 14
    const-string v0, "mQuickUse"

    .line 15
    .line 16
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move v0, v3

    .line 20
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    sput-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    const-string v1, "mQuickSmall"

    .line 28
    .line 29
    invoke-static {p0, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move v0, v3

    .line 33
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 38
    .line 39
    const-string v0, "mQuickPlus"

    .line 40
    .line 41
    invoke-static {p0, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move v3, v0

    .line 46
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    if-ne v0, v1, :cond_5

    .line 50
    .line 51
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    return v3

    .line 57
    :cond_5
    :goto_1
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 58
    .line 59
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 60
    .line 61
    invoke-static {p0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v0, "mQuickPort"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "mQuickLand"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 76
    .line 77
    .line 78
    return v3
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 13

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
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

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
    sget v6, Lnet/kaki87/soul2/testing/R$string;->quick_home:I

    .line 19
    .line 20
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v5, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 42
    .line 43
    sget v7, Lnet/kaki87/soul2/testing/R$string;->big_icon:I

    .line 44
    .line 45
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 46
    .line 47
    xor-int/lit8 v10, v1, 0x1

    .line 48
    .line 49
    const/4 v11, 0x1

    .line 50
    const/4 v9, 0x1

    .line 51
    const/4 v6, 0x3

    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 60
    .line 61
    sget v8, Lnet/kaki87/soul2/testing/R$string;->add_icon:I

    .line 62
    .line 63
    sget-boolean v11, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 64
    .line 65
    const/4 v12, 0x1

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v7, 0x4

    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 76
    .line 77
    sget v9, Lnet/kaki87/soul2/testing/R$string;->column_count:I

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    const/4 v12, 0x2

    .line 81
    const/4 v8, 0x5

    .line 82
    invoke-direct/range {v7 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x6

    .line 86
    invoke-static {v0, v7, v1, v2}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public final finish()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingQuick;->a2:Z

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingQuick;->b2:Z

    .line 10
    .line 11
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/setting/SettingQuick;->c2:I

    .line 16
    .line 17
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/setting/SettingQuick;->d2:I

    .line 22
    .line 23
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v2

    .line 31
    :goto_1
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingQuick;->Z1:Z

    .line 32
    .line 33
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 34
    .line 35
    if-eq v1, v4, :cond_2

    .line 36
    .line 37
    move v3, v2

    .line 38
    :cond_2
    if-nez v0, :cond_3

    .line 39
    .line 40
    if-eqz v3, :cond_6

    .line 41
    .line 42
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const-string v0, "change"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_4
    if-eqz v3, :cond_5

    .line 55
    .line 56
    const-string v0, "reload"

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :cond_5
    const/4 v0, -0x1

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingQuick;->Z1:Z

    .line 7
    .line 8
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->G:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingQuick;->a2:Z

    .line 11
    .line 12
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtri;->k0:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingQuick;->b2:Z

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/setting/SettingQuick;->c2:I

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/setting/SettingQuick;->d2:I

    .line 23
    .line 24
    sget p1, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 28
    .line 29
    .line 30
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingQuick$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingQuick$1;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

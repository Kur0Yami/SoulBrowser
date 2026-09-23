.class public Lcom/mycompany/app/setting/SettingSense;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Q1:I


# instance fields
.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public E1:Landroidx/appcompat/widget/AppCompatTextView;

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Lcom/mycompany/app/view/MyRoundItem;

.field public I1:[Lcom/mycompany/app/view/MyLineFrame;

.field public J1:[Lcom/mycompany/app/view/MyLineText;

.field public K1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public N1:Z

.field public O1:[I

.field public P1:Z


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


# virtual methods
.method public final D0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->K1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->K1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    aget v2, v0, v1

    .line 8
    .line 9
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    aget v2, v0, v4

    .line 15
    .line 16
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aget v2, v0, v2

    .line 22
    .line 23
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    aget v2, v0, v2

    .line 29
    .line 30
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    aget v0, v0, v2

    .line 36
    .line 37
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 38
    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v1

    .line 43
    :cond_2
    :goto_0
    return v4
.end method

.method public final G0(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSense;->N1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingSense;->N1:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->F0()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 22
    .line 23
    aget v3, v1, v2

    .line 24
    .line 25
    sput v3, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 26
    .line 27
    aget v0, v1, v0

    .line 28
    .line 29
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aget v0, v1, v0

    .line 33
    .line 34
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    aget v0, v1, v0

    .line 38
    .line 39
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    aget v0, v1, v0

    .line 43
    .line 44
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "mSenseCenter2"

    .line 53
    .line 54
    const-string v3, "mSenseRight2"

    .line 55
    .line 56
    const-string v4, "mSenseLeft2"

    .line 57
    .line 58
    const-string v5, "mSenseBot2"

    .line 59
    .line 60
    const-string v6, "mSenseTop2"

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget v7, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 65
    .line 66
    invoke-virtual {v0, v7, v6}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget v6, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 70
    .line 71
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 75
    .line 76
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget v4, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 80
    .line 81
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 85
    .line 86
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v0, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 106
    .line 107
    .line 108
    :cond_3
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingSense;->N1:Z

    .line 115
    .line 116
    return-void
.end method

.method public final H0(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget v2, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    if-ne p1, v1, :cond_2

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 v2, 0x2

    .line 18
    if-ne p1, v2, :cond_3

    .line 19
    .line 20
    sget v2, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    const/4 v2, 0x3

    .line 24
    if-ne p1, v2, :cond_4

    .line 25
    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_4
    sget v2, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 30
    .line 31
    :goto_0
    const-string v3, "%"

    .line 32
    .line 33
    if-nez v2, :cond_5

    .line 34
    .line 35
    aget-object p1, v0, p1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "P\n"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    if-ne v2, v1, :cond_6

    .line 59
    .line 60
    aget-object p1, v0, p1

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "T\n"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_6
    aget-object p1, v0, p1

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "X\n"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final I0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->K1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->E0()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/setting/SettingSense$10;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingSense$10;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->M1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/setting/SettingSense$11;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingSense$11;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSense;->N1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->F0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->I0()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingSense;->P1:Z

    .line 19
    .line 20
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingSense;->P1:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    const/high16 v3, -0x1000000

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    move v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const v2, -0x70708

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 50
    .line 51
    .line 52
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    const v1, -0x50506

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 86
    .line 87
    const v2, -0xdededf

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    const v2, -0xc0c0c1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 139
    .line 140
    const/4 v2, -0x1

    .line 141
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    const/high16 v2, 0x21000000

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 159
    .line 160
    .line 161
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 162
    .line 163
    if-nez p1, :cond_4

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_4
    array-length p1, p1

    .line 167
    :goto_2
    if-ge v0, p1, :cond_6

    .line 168
    .line 169
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 170
    .line 171
    if-eqz v2, :cond_5

    .line 172
    .line 173
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 174
    .line 175
    aget-object v2, v2, v0

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 181
    .line 182
    aget-object v2, v2, v0

    .line 183
    .line 184
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 185
    .line 186
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 190
    .line 191
    aget-object v2, v2, v0

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 198
    .line 199
    aget-object v2, v2, v0

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 205
    .line 206
    aget-object v2, v2, v0

    .line 207
    .line 208
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 209
    .line 210
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 214
    .line 215
    aget-object v2, v2, v0

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .line 225
    .line 226
    :catch_0
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingSense;->P1:Z

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 14
    .line 15
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput v3, v2, v4

    .line 19
    .line 20
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    aput v3, v2, v5

    .line 24
    .line 25
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    aput v3, v2, v6

    .line 29
    .line 30
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    aput v3, v2, v7

    .line 34
    .line 35
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 36
    .line 37
    const/4 v8, 0x4

    .line 38
    aput v3, v2, v8

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 41
    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 43
    .line 44
    sget v9, Lnet/kaki87/soul2/testing/R$id;->area_view_1:I

    .line 45
    .line 46
    sget v10, Lnet/kaki87/soul2/testing/R$id;->area_view_2:I

    .line 47
    .line 48
    sget v11, Lnet/kaki87/soul2/testing/R$id;->area_view_3:I

    .line 49
    .line 50
    sget v12, Lnet/kaki87/soul2/testing/R$id;->area_view_4:I

    .line 51
    .line 52
    sget v13, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 53
    .line 54
    sget v14, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 55
    .line 56
    new-instance v15, Lcom/mycompany/app/view/MyMainRelative;

    .line 57
    .line 58
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    const/4 v7, -0x1

    .line 64
    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/view/MyHeaderView;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 76
    .line 77
    invoke-virtual {v15, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 86
    .line 87
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    .line 89
    .line 90
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .line 92
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 93
    .line 94
    sget v5, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 95
    .line 96
    invoke-direct {v8, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 100
    .line 101
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-direct {v5, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    .line 112
    .line 113
    const/16 v7, 0x10

    .line 114
    .line 115
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    .line 117
    .line 118
    const/4 v8, 0x1

    .line 119
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v21, v6

    .line 123
    .line 124
    const/high16 v6, 0x41900000    # 18.0f

    .line 125
    .line 126
    move/from16 v22, v12

    .line 127
    .line 128
    const/4 v12, -0x1

    .line 129
    invoke-static {v5, v8, v6, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    .line 135
    .line 136
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 137
    .line 138
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    const/high16 v6, 0x41600000    # 14.0f

    .line 145
    .line 146
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    float-to-int v6, v6

    .line 151
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v2}, Landroid/view/View;->setId(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .line 167
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 168
    .line 169
    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    .line 174
    .line 175
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 176
    .line 177
    iput v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    .line 179
    invoke-virtual {v1, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 183
    .line 184
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .line 198
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 199
    .line 200
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    .line 205
    .line 206
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 207
    .line 208
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 209
    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    new-instance v3, Landroid/widget/FrameLayout;

    .line 214
    .line 215
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v13}, Landroid/view/View;->setId(I)V

    .line 219
    .line 220
    .line 221
    const/4 v4, 0x4

    .line 222
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .line 227
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 228
    .line 229
    const/4 v12, -0x2

    .line 230
    invoke-direct {v4, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .line 232
    .line 233
    const/16 v6, 0x15

    .line 234
    .line 235
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    new-instance v1, Lcom/mycompany/app/view/MyRoundItem;

    .line 242
    .line 243
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    const/4 v4, 0x1

    .line 247
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 248
    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 252
    .line 253
    .line 254
    const/4 v7, -0x1

    .line 255
    const/4 v13, 0x2

    .line 256
    invoke-static {v7, v7, v13, v14}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 261
    .line 262
    iput v13, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 263
    .line 264
    invoke-virtual {v15, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 268
    .line 269
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v4}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v6, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 282
    .line 283
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    const/16 v7, 0x11

    .line 287
    .line 288
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    .line 290
    .line 291
    const/high16 v13, 0x41a00000    # 20.0f

    .line 292
    .line 293
    const/4 v7, 0x1

    .line 294
    invoke-virtual {v4, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 295
    .line 296
    .line 297
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 298
    .line 299
    invoke-direct {v7, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 300
    .line 301
    .line 302
    const/16 v12, 0x11

    .line 303
    .line 304
    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    .line 306
    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    .line 308
    .line 309
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 310
    .line 311
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 315
    .line 316
    .line 317
    const/4 v12, 0x0

    .line 318
    invoke-virtual {v7, v12}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 319
    .line 320
    .line 321
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    .line 323
    const/4 v13, -0x1

    .line 324
    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    const/16 v13, 0xc

    .line 328
    .line 329
    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 336
    .line 337
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 338
    .line 339
    .line 340
    const/16 v13, 0x11

    .line 341
    .line 342
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v24, v4

    .line 346
    .line 347
    const/high16 v4, 0x41a00000    # 20.0f

    .line 348
    .line 349
    const/4 v13, 0x1

    .line 350
    invoke-virtual {v12, v13, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 351
    .line 352
    .line 353
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    .line 355
    const/4 v13, -0x2

    .line 356
    invoke-direct {v4, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 357
    .line 358
    .line 359
    const/16 v13, 0x11

    .line 360
    .line 361
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 362
    .line 363
    invoke-virtual {v7, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 367
    .line 368
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v11}, Landroid/view/View;->setId(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyLineFrame;->c()V

    .line 375
    .line 376
    .line 377
    move-object/from16 v25, v6

    .line 378
    .line 379
    move-object/from16 v26, v7

    .line 380
    .line 381
    const/4 v6, -0x1

    .line 382
    const/4 v13, 0x3

    .line 383
    invoke-static {v6, v6, v13, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    const/4 v13, 0x2

    .line 388
    invoke-virtual {v7, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 395
    .line 396
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 397
    .line 398
    .line 399
    const/16 v13, 0x11

    .line 400
    .line 401
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 402
    .line 403
    .line 404
    const/4 v7, 0x1

    .line 405
    const/high16 v13, 0x41a00000    # 20.0f

    .line 406
    .line 407
    invoke-virtual {v6, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 408
    .line 409
    .line 410
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    .line 412
    const/4 v13, -0x2

    .line 413
    invoke-direct {v7, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 414
    .line 415
    .line 416
    const/16 v13, 0x11

    .line 417
    .line 418
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 419
    .line 420
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .line 422
    .line 423
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 424
    .line 425
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    move/from16 v13, v22

    .line 429
    .line 430
    invoke-virtual {v7, v13}, Landroid/view/View;->setId(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyLineFrame;->b()V

    .line 434
    .line 435
    .line 436
    move-object/from16 v22, v4

    .line 437
    .line 438
    move-object/from16 v27, v6

    .line 439
    .line 440
    move-object/from16 v28, v12

    .line 441
    .line 442
    const/4 v4, 0x3

    .line 443
    const/4 v6, -0x1

    .line 444
    invoke-static {v6, v6, v4, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    const/4 v4, 0x2

    .line 449
    invoke-virtual {v12, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 450
    .line 451
    .line 452
    const/16 v4, 0x15

    .line 453
    .line 454
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 455
    .line 456
    .line 457
    const/16 v4, 0x12

    .line 458
    .line 459
    invoke-virtual {v12, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    .line 464
    .line 465
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 466
    .line 467
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 468
    .line 469
    .line 470
    const/16 v12, 0x11

    .line 471
    .line 472
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 473
    .line 474
    .line 475
    const/4 v6, 0x1

    .line 476
    const/high16 v12, 0x41a00000    # 20.0f

    .line 477
    .line 478
    invoke-virtual {v4, v6, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 479
    .line 480
    .line 481
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 482
    .line 483
    const/4 v12, -0x2

    .line 484
    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    .line 486
    .line 487
    const/16 v12, 0x11

    .line 488
    .line 489
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 490
    .line 491
    invoke-virtual {v7, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    .line 493
    .line 494
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 495
    .line 496
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    move-object/from16 v23, v4

    .line 500
    .line 501
    const/4 v4, -0x1

    .line 502
    const/4 v12, 0x3

    .line 503
    invoke-static {v4, v4, v12, v9}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    const/4 v4, 0x2

    .line 508
    invoke-virtual {v9, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 509
    .line 510
    .line 511
    const/16 v12, 0x11

    .line 512
    .line 513
    invoke-virtual {v9, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 514
    .line 515
    .line 516
    const/16 v4, 0x10

    .line 517
    .line 518
    invoke-virtual {v9, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    .line 523
    .line 524
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 525
    .line 526
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 530
    .line 531
    .line 532
    const/high16 v9, 0x41a00000    # 20.0f

    .line 533
    .line 534
    const/4 v13, 0x1

    .line 535
    invoke-virtual {v4, v13, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 536
    .line 537
    .line 538
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 539
    .line 540
    const/4 v13, -0x2

    .line 541
    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 542
    .line 543
    .line 544
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    .line 546
    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    .line 548
    .line 549
    new-instance v9, Landroid/widget/FrameLayout;

    .line 550
    .line 551
    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v9, v14}, Landroid/view/View;->setId(I)V

    .line 555
    .line 556
    .line 557
    const/16 v10, 0x8

    .line 558
    .line 559
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 563
    .line 564
    const/4 v12, -0x1

    .line 565
    invoke-direct {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 566
    .line 567
    .line 568
    const/16 v11, 0xc

    .line 569
    .line 570
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v15, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .line 575
    .line 576
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 577
    .line 578
    move-object/from16 v10, v21

    .line 579
    .line 580
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 581
    .line 582
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 583
    .line 584
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 585
    .line 586
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 587
    .line 588
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 589
    .line 590
    const/4 v1, 0x5

    .line 591
    new-array v2, v1, [Lcom/mycompany/app/view/MyLineFrame;

    .line 592
    .line 593
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 594
    .line 595
    new-array v1, v1, [Lcom/mycompany/app/view/MyLineText;

    .line 596
    .line 597
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 598
    .line 599
    const/16 v18, 0x0

    .line 600
    .line 601
    aput-object v25, v2, v18

    .line 602
    .line 603
    const/16 v20, 0x1

    .line 604
    .line 605
    aput-object v26, v2, v20

    .line 606
    .line 607
    const/16 v17, 0x2

    .line 608
    .line 609
    aput-object v22, v2, v17

    .line 610
    .line 611
    const/16 v16, 0x3

    .line 612
    .line 613
    aput-object v7, v2, v16

    .line 614
    .line 615
    const/16 v19, 0x4

    .line 616
    .line 617
    aput-object v6, v2, v19

    .line 618
    .line 619
    aput-object v24, v1, v18

    .line 620
    .line 621
    aput-object v28, v1, v20

    .line 622
    .line 623
    aput-object v27, v1, v17

    .line 624
    .line 625
    aput-object v23, v1, v16

    .line 626
    .line 627
    aput-object v4, v1, v19

    .line 628
    .line 629
    invoke-virtual {v0, v15, v3, v9}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 630
    .line 631
    .line 632
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 633
    .line 634
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 639
    .line 640
    .line 641
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 644
    .line 645
    .line 646
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 647
    .line 648
    if-nez v1, :cond_0

    .line 649
    .line 650
    return-void

    .line 651
    :cond_0
    new-instance v2, Lcom/mycompany/app/setting/SettingSense$1;

    .line 652
    .line 653
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSense$1;-><init>(Lcom/mycompany/app/setting/SettingSense;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    .line 658
    .line 659
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 40
    .line 41
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->I1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->J1:[Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 50
    .line 51
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->D0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSense;->L1:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSense;->E0()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

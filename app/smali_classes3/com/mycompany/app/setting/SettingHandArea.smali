.class public Lcom/mycompany/app/setting/SettingHandArea;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public E1:Landroidx/appcompat/widget/AppCompatTextView;

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Lcom/mycompany/app/view/MyRoundItem;

.field public I1:Landroid/view/View;

.field public J1:Lcom/mycompany/app/view/MyRoundItem;

.field public K1:Landroidx/appcompat/widget/AppCompatTextView;

.field public L1:Lcom/mycompany/app/view/MyArrowView;

.field public M1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public N1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public O1:Z

.field public P1:I

.field public Q1:I

.field public R1:I

.field public S1:I

.field public T1:I

.field public U1:F

.field public V1:Z

.field public W1:I

.field public X1:I

.field public Y1:Z


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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->M1:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->M1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->N1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->N1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->O1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->O1:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    sput v0, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 16
    .line 17
    const-string v1, "mHandTop2"

    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v3, v2, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->O1:Z

    .line 42
    .line 43
    return-void
.end method

.method public final G0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->S1:I

    .line 7
    .line 8
    if-ge p1, v1, :cond_1

    .line 9
    .line 10
    :goto_0
    move p1, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->R1:I

    .line 13
    .line 14
    if-le p1, v1, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    iput p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_3

    .line 30
    .line 31
    :goto_2
    return-void

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->P1:I

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    div-float/2addr p1, v0

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    .line 47
    sub-float/2addr v0, p1

    .line 48
    const/high16 p1, 0x42c80000    # 100.0f

    .line 49
    .line 50
    mul-float/2addr v0, p1

    .line 51
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 56
    .line 57
    const/16 v0, 0x32

    .line 58
    .line 59
    if-ge p1, v0, :cond_4

    .line 60
    .line 61
    iput v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v0, 0x5a

    .line 65
    .line 66
    if-le p1, v0, :cond_5

    .line 67
    .line 68
    iput v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 78
    .line 79
    const-string v2, "%"

    .line 80
    .line 81
    invoke-static {v0, v1, v2, p1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->M1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->N1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingHandArea;->E0()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/setting/SettingHandArea$8;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingHandArea$8;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->N1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingHandArea$9;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingHandArea$9;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v3, p0, Lcom/mycompany/app/setting/SettingHandArea;->U1:F

    .line 31
    .line 32
    sub-float/2addr v1, v3

    .line 33
    iget-boolean v3, p0, Lcom/mycompany/app/setting/SettingHandArea;->V1:Z

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sget v4, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 42
    .line 43
    int-to-float v4, v4

    .line 44
    cmpg-float v3, v3, v4

    .line 45
    .line 46
    if-gez v3, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingHandArea;->V1:Z

    .line 50
    .line 51
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    const/16 v3, 0x8

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 62
    .line 63
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->A:Z

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    sput-boolean v0, Lcom/mycompany/app/pref/PrefRead;->A:Z

    .line 68
    .line 69
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 70
    .line 71
    const-string v4, "mGuideHand"

    .line 72
    .line 73
    invoke-static {v3, v2, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->W1:I

    .line 77
    .line 78
    int-to-float v0, v0

    .line 79
    add-float/2addr v0, v1

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingHandArea;->G0(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 89
    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iput v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->U1:F

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->V1:Z

    .line 100
    .line 101
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->T1:I

    .line 102
    .line 103
    iput v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->W1:I

    .line 104
    .line 105
    :goto_0
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1
.end method

.method public final l0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->O1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 7
    .line 8
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingHandArea;->H0()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingHandArea;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

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
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->Y1:Z

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->Y1:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 38
    .line 39
    const/high16 v2, -0x1000000

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const v1, -0x70708

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 49
    .line 50
    .line 51
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    const v0, -0x50506

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 85
    .line 86
    const v0, -0xc0c0c1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 93
    .line 94
    const v0, -0xdededf

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 128
    .line 129
    const v0, -0x252526

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 136
    .line 137
    const/4 v0, -0x1

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    :catch_0
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 7
    .line 8
    const/16 v2, 0x32

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    sput v2, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v2, 0x5a

    .line 16
    .line 17
    if-le v1, v2, :cond_1

    .line 18
    .line 19
    sput v2, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 20
    .line 21
    :cond_1
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 22
    .line 23
    iput v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->X1:I

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->Y1:Z

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->v7(Landroid/app/Activity;I)V

    .line 31
    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 34
    .line 35
    sget v3, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 38
    .line 39
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 40
    .line 41
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 42
    .line 43
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    const/4 v8, -0x1

    .line 49
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lcom/mycompany/app/view/MyHeaderView;

    .line 56
    .line 57
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 61
    .line 62
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 71
    .line 72
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    .line 74
    .line 75
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    .line 77
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 78
    .line 79
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 80
    .line 81
    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 85
    .line 86
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-direct {v11, v0, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    .line 97
    .line 98
    const/16 v13, 0x10

    .line 99
    .line 100
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 104
    .line 105
    .line 106
    const/high16 v14, 0x41900000    # 18.0f

    .line 107
    .line 108
    invoke-virtual {v11, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    sget v15, Lnet/kaki87/soul2/testing/R$string;->onehand_area:I

    .line 112
    .line 113
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .line 115
    .line 116
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .line 118
    invoke-direct {v15, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    .line 123
    .line 124
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 125
    .line 126
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    const/high16 v14, 0x41600000    # 14.0f

    .line 133
    .line 134
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    float-to-int v14, v14

    .line 139
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15, v2}, Landroid/view/View;->setId(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .line 155
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 156
    .line 157
    invoke-direct {v2, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    .line 162
    .line 163
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 164
    .line 165
    iput v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    .line 167
    invoke-virtual {v7, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    .line 186
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 187
    .line 188
    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 192
    .line 193
    .line 194
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 195
    .line 196
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 197
    .line 198
    invoke-virtual {v7, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    new-instance v3, Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 207
    .line 208
    .line 209
    const/4 v4, 0x4

    .line 210
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    .line 215
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 216
    .line 217
    const/4 v13, -0x2

    .line 218
    invoke-direct {v10, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    const/16 v12, 0x15

    .line 222
    .line 223
    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    new-instance v7, Lcom/mycompany/app/view/MyRoundItem;

    .line 230
    .line 231
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v1, v1}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 235
    .line 236
    .line 237
    const/4 v10, 0x2

    .line 238
    invoke-static {v8, v8, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 243
    .line 244
    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 245
    .line 246
    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    const/high16 v10, 0x42c80000    # 100.0f

    .line 250
    .line 251
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    float-to-int v10, v10

    .line 256
    const/high16 v12, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    float-to-int v12, v12

    .line 263
    new-instance v14, Landroid/view/View;

    .line 264
    .line 265
    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    .line 270
    invoke-direct {v4, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    const/16 v10, 0xe

    .line 274
    .line 275
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Lcom/mycompany/app/view/MyRoundItem;

    .line 282
    .line 283
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v1, v1}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 287
    .line 288
    .line 289
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 290
    .line 291
    invoke-direct {v12, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .line 293
    .line 294
    const/16 v8, 0xc

    .line 295
    .line 296
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    .line 304
    const/4 v10, 0x0

    .line 305
    invoke-direct {v12, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 306
    .line 307
    .line 308
    const/high16 v10, 0x41900000    # 18.0f

    .line 309
    .line 310
    invoke-virtual {v12, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 311
    .line 312
    .line 313
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .line 315
    invoke-direct {v1, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    .line 320
    .line 321
    const/16 v10, 0xe

    .line 322
    .line 323
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    .line 325
    .line 326
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 327
    .line 328
    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 329
    .line 330
    invoke-virtual {v7, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->A:Z

    .line 334
    .line 335
    if-eqz v1, :cond_2

    .line 336
    .line 337
    new-instance v1, Lcom/mycompany/app/view/MyArrowView;

    .line 338
    .line 339
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 340
    .line 341
    .line 342
    const/4 v10, 0x4

    .line 343
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 347
    .line 348
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 349
    .line 350
    div-int/lit8 v13, v8, 0x2

    .line 351
    .line 352
    invoke-direct {v10, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .line 354
    .line 355
    const/16 v8, 0xe

    .line 356
    .line 357
    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_2
    const/4 v1, 0x0

    .line 365
    :goto_1
    new-instance v8, Landroid/widget/FrameLayout;

    .line 366
    .line 367
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v5}, Landroid/view/View;->setId(I)V

    .line 371
    .line 372
    .line 373
    const/16 v5, 0x8

    .line 374
    .line 375
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    .line 380
    const/4 v10, -0x1

    .line 381
    const/4 v13, -0x2

    .line 382
    invoke-direct {v5, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    const/16 v10, 0xc

    .line 386
    .line 387
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 394
    .line 395
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 396
    .line 397
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 398
    .line 399
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 400
    .line 401
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 402
    .line 403
    iput-object v7, v0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 404
    .line 405
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 406
    .line 407
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 408
    .line 409
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingHandArea;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 412
    .line 413
    new-instance v1, Lcom/mycompany/app/setting/SettingHandArea$1;

    .line 414
    .line 415
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingHandArea$1;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6, v1}, Lcom/mycompany/app/view/MyMainRelative;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 422
    .line 423
    invoke-virtual {v0, v1, v3, v8}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 427
    .line 428
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 441
    .line 442
    if-nez v1, :cond_3

    .line 443
    .line 444
    return-void

    .line 445
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/SettingHandArea$2;

    .line 446
    .line 447
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHandArea$2;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    .line 452
    .line 453
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iput-object v1, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->L1:Lcom/mycompany/app/view/MyArrowView;

    .line 65
    .line 66
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHandArea;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
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
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingHandArea;->D0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingHandArea;->E0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

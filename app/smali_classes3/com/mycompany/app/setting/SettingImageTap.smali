.class public Lcom/mycompany/app/setting/SettingImageTap;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public C1:I

.field public D1:Lcom/mycompany/app/view/MyMainRelative;

.field public E1:Lcom/mycompany/app/view/MyButtonImage;

.field public F1:Landroidx/appcompat/widget/AppCompatTextView;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Lcom/mycompany/app/view/MyButtonImage;

.field public I1:Lcom/mycompany/app/view/MyRoundItem;

.field public J1:[Lcom/mycompany/app/view/MyLineFrame;

.field public K1:[Lcom/mycompany/app/view/MyLineText;

.field public L1:[Lcom/mycompany/app/view/MyRoundImage;

.field public M1:Lcom/mycompany/app/view/MyPopupMenu;

.field public N1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public P1:Z

.field public Q1:[I

.field public R1:[I

.field public S1:[I

.field public T1:F

.field public U1:F

.field public V1:I

.field public W1:Landroid/view/ViewGroup$LayoutParams;

.field public X1:I

.field public Y1:Lcom/mycompany/app/view/MyFadeFrame;


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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    aget v4, v0, v1

    .line 16
    .line 17
    sget v5, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v4, v5, :cond_2

    .line 21
    .line 22
    aget v0, v0, v6

    .line 23
    .line 24
    sget v4, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 25
    .line 26
    if-ne v0, v4, :cond_2

    .line 27
    .line 28
    aget v0, v2, v1

    .line 29
    .line 30
    sget v4, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 31
    .line 32
    if-ne v0, v4, :cond_2

    .line 33
    .line 34
    aget v0, v2, v6

    .line 35
    .line 36
    sget v2, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 37
    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    aget v0, v3, v1

    .line 41
    .line 42
    sget v2, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 43
    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    aget v0, v3, v6

    .line 47
    .line 48
    sget v2, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 49
    .line 50
    if-eq v0, v2, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return v1

    .line 54
    :cond_2
    :goto_0
    return v6

    .line 55
    :cond_3
    :goto_1
    return v1
.end method

.method public final G0(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->P1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->P1:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->F0()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 32
    .line 33
    aget v3, v1, v2

    .line 34
    .line 35
    sput v3, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 36
    .line 37
    aget v1, v1, v0

    .line 38
    .line 39
    sput v1, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 42
    .line 43
    aget v3, v1, v2

    .line 44
    .line 45
    sput v3, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 46
    .line 47
    aget v1, v1, v0

    .line 48
    .line 49
    sput v1, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 52
    .line 53
    aget v3, v1, v2

    .line 54
    .line 55
    sput v3, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 56
    .line 57
    aget v0, v1, v0

    .line 58
    .line 59
    sput v0, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "mLandAreaRight"

    .line 68
    .line 69
    const-string v3, "mLandAreaLeft"

    .line 70
    .line 71
    const-string v4, "mPortAreaRight"

    .line 72
    .line 73
    const-string v5, "mPortAreaLeft"

    .line 74
    .line 75
    const-string v6, "mTapRight"

    .line 76
    .line 77
    const-string v7, "mTapLeft"

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    sget v8, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 82
    .line 83
    invoke-virtual {v0, v8, v7}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget v7, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 87
    .line 88
    invoke-virtual {v0, v7, v6}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget v6, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 92
    .line 93
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget v5, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 97
    .line 98
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget v4, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 102
    .line 103
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget v3, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 107
    .line 108
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 131
    .line 132
    .line 133
    :cond_3
    if-eqz p1, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->P1:Z

    .line 140
    .line 141
    :cond_5
    :goto_1
    return-void
.end method

.method public final H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    if-eqz p2, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 10
    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    if-eqz p4, :cond_3

    .line 19
    .line 20
    sget p4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 21
    .line 22
    if-ge p3, p4, :cond_2

    .line 23
    .line 24
    move p3, p4

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    .line 28
    if-le p3, p4, :cond_3

    .line 29
    .line 30
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 31
    .line 32
    aget-object p4, p4, v0

    .line 33
    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    add-int/2addr v0, p4

    .line 43
    iget p4, p0, Lcom/mycompany/app/setting/SettingImageTap;->C1:I

    .line 44
    .line 45
    sub-int/2addr v0, p4

    .line 46
    if-le p3, v0, :cond_3

    .line 47
    .line 48
    move p3, v0

    .line 49
    :cond_3
    :goto_0
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    .line 51
    if-ne p4, p3, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    .line 56
    if-eqz p5, :cond_5

    .line 57
    .line 58
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 59
    .line 60
    aput p3, p2, p1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 64
    .line 65
    aput p3, p2, p1

    .line 66
    .line 67
    :goto_1
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 70
    return p1
.end method

.method public final I0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    if-lt p1, v1, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    if-nez p2, :cond_2

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    const-string p2, " P "

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    aget-object p1, v0, p1

    .line 21
    .line 22
    const-string p2, " X "

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->E0()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/setting/SettingImageTap$15;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingImageTap$15;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingImageTap$16;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingImageTap$16;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

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
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eqz v1, :cond_c

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v1, v3, :cond_3

    .line 23
    .line 24
    if-eq v1, v2, :cond_5

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-eq v1, v4, :cond_3

    .line 28
    .line 29
    :cond_2
    :goto_0
    move-object v1, p0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget v4, p0, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 37
    .line 38
    if-ltz v4, :cond_2

    .line 39
    .line 40
    array-length v5, v1

    .line 41
    if-lt v4, v5, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    aget-object v1, v1, v2

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->W1:Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 59
    .line 60
    if-ltz v1, :cond_2

    .line 61
    .line 62
    if-lt v1, v2, :cond_6

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->T1:F

    .line 70
    .line 71
    sub-float/2addr v1, v2

    .line 72
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->W1:Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    if-nez v2, :cond_9

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sget v4, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 81
    .line 82
    int-to-float v4, v4

    .line 83
    cmpg-float v2, v2, v4

    .line 84
    .line 85
    if-gez v2, :cond_7

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 89
    .line 90
    iget v4, p0, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 91
    .line 92
    aget-object v2, v2, v4

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->W1:Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    if-nez v2, :cond_8

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iput v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->X1:I

    .line 106
    .line 107
    :cond_9
    iget v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 108
    .line 109
    if-nez v2, :cond_b

    .line 110
    .line 111
    iget v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->X1:I

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    add-float/2addr v0, v1

    .line 115
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    :cond_a
    :goto_1
    move v4, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_b
    if-ne v2, v3, :cond_a

    .line 122
    .line 123
    iget v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->X1:I

    .line 124
    .line 125
    int-to-float v0, v0

    .line 126
    sub-float/2addr v0, v1

    .line 127
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    goto :goto_1

    .line 132
    :goto_2
    iget v2, p0, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 133
    .line 134
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingImageTap;->W1:Landroid/view/ViewGroup$LayoutParams;

    .line 135
    .line 136
    const/4 v5, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    move-object v1, p0

    .line 142
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingImageTap;->H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_f

    .line 147
    .line 148
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 149
    .line 150
    iget v2, v1, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 151
    .line 152
    aget-object v0, v0, v2

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_c
    move-object v1, p0

    .line 159
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 160
    .line 161
    if-nez v3, :cond_d

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    iput v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->T1:F

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    iput v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->U1:F

    .line 175
    .line 176
    const/4 v3, -0x1

    .line 177
    iput v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 178
    .line 179
    const/4 v3, 0x0

    .line 180
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->W1:Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 183
    .line 184
    array-length v3, v3

    .line 185
    move v4, v0

    .line 186
    :goto_3
    if-ge v4, v3, :cond_f

    .line 187
    .line 188
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 189
    .line 190
    aget-object v5, v5, v4

    .line 191
    .line 192
    iget v6, v1, Lcom/mycompany/app/setting/SettingImageTap;->T1:F

    .line 193
    .line 194
    float-to-int v6, v6

    .line 195
    iget v7, v1, Lcom/mycompany/app/setting/SettingImageTap;->U1:F

    .line 196
    .line 197
    float-to-int v7, v7

    .line 198
    sget v8, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 199
    .line 200
    invoke-static {v6, v7, v8, v5}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_e

    .line 205
    .line 206
    iput v4, v1, Lcom/mycompany/app/setting/SettingImageTap;->V1:I

    .line 207
    .line 208
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 209
    .line 210
    aget-object v2, v3, v2

    .line 211
    .line 212
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_f
    :goto_4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    return p1
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->P1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->F0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->J0()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :cond_0
    move-object v1, p0

    .line 13
    goto :goto_3

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 36
    move v2, v0

    .line 37
    :goto_1
    const/4 v0, 0x3

    .line 38
    if-ge v2, v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    if-ge v2, v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    aget-object v0, v0, v2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 54
    .line 55
    aget v4, v0, v2

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x1

    .line 59
    move-object v1, p0

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingImageTap;->H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object v1, p0

    .line 65
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 66
    .line 67
    aget v4, v0, v2

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingImageTap;->H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v1, p0

    .line 76
    :goto_2
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 77
    .line 78
    aget v0, v0, v2

    .line 79
    .line 80
    invoke-virtual {p0, v2, v0}, Lcom/mycompany/app/setting/SettingImageTap;->I0(II)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->v7(Landroid/app/Activity;I)V

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    mul-int/2addr v2, v3

    .line 14
    iput v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->C1:I

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v4, v2, [I

    .line 18
    .line 19
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 20
    .line 21
    sget v5, Lcom/mycompany/app/pref/PrefImage;->D:I

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    aput v5, v4, v6

    .line 25
    .line 26
    sget v5, Lcom/mycompany/app/pref/PrefImage;->E:I

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    aput v5, v4, v7

    .line 30
    .line 31
    new-array v4, v3, [I

    .line 32
    .line 33
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 34
    .line 35
    sget v5, Lcom/mycompany/app/pref/PrefImage;->F:I

    .line 36
    .line 37
    aput v5, v4, v6

    .line 38
    .line 39
    sget v5, Lcom/mycompany/app/pref/PrefImage;->G:I

    .line 40
    .line 41
    aput v5, v4, v7

    .line 42
    .line 43
    new-array v4, v3, [I

    .line 44
    .line 45
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 46
    .line 47
    sget v5, Lcom/mycompany/app/pref/PrefImage;->H:I

    .line 48
    .line 49
    aput v5, v4, v6

    .line 50
    .line 51
    sget v5, Lcom/mycompany/app/pref/PrefImage;->I:I

    .line 52
    .line 53
    aput v5, v4, v7

    .line 54
    .line 55
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 56
    .line 57
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 58
    .line 59
    sget v8, Lnet/kaki87/soul2/testing/R$id;->area_view_3:I

    .line 60
    .line 61
    sget v9, Lnet/kaki87/soul2/testing/R$id;->area_view_4:I

    .line 62
    .line 63
    sget v10, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 64
    .line 65
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 66
    .line 67
    new-instance v12, Lcom/mycompany/app/view/MyMainRelative;

    .line 68
    .line 69
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    const/4 v14, -0x1

    .line 75
    invoke-direct {v13, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    new-instance v13, Lcom/mycompany/app/view/MyHeaderView;

    .line 82
    .line 83
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 87
    .line 88
    invoke-virtual {v12, v13, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 89
    .line 90
    .line 91
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 97
    .line 98
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 104
    .line 105
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 106
    .line 107
    invoke-direct {v3, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-direct {v1, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    .line 123
    .line 124
    const/16 v3, 0x10

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 130
    .line 131
    .line 132
    const/high16 v6, 0x41900000    # 18.0f

    .line 133
    .line 134
    invoke-static {v1, v7, v6, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    .line 140
    .line 141
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 142
    .line 143
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    const/high16 v6, 0x41600000    # 14.0f

    .line 150
    .line 151
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    float-to-int v6, v6

    .line 156
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 168
    .line 169
    .line 170
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    .line 172
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 173
    .line 174
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    .line 179
    .line 180
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 181
    .line 182
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 183
    .line 184
    invoke-virtual {v13, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    .line 200
    .line 201
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 202
    .line 203
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 204
    .line 205
    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    .line 210
    .line 211
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 212
    .line 213
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    .line 215
    invoke-virtual {v13, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance v5, Landroid/widget/FrameLayout;

    .line 219
    .line 220
    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v10}, Landroid/view/View;->setId(I)V

    .line 224
    .line 225
    .line 226
    const/4 v6, 0x4

    .line 227
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .line 232
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 233
    .line 234
    const/4 v10, -0x2

    .line 235
    invoke-direct {v6, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    const/16 v7, 0x15

    .line 239
    .line 240
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v6, Lcom/mycompany/app/view/MyRoundItem;

    .line 247
    .line 248
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    const/4 v13, 0x1

    .line 252
    invoke-virtual {v6, v13, v13}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 253
    .line 254
    .line 255
    const/4 v13, 0x0

    .line 256
    invoke-virtual {v6, v13}, Landroid/view/View;->setLayoutDirection(I)V

    .line 257
    .line 258
    .line 259
    const/4 v3, -0x1

    .line 260
    const/4 v13, 0x2

    .line 261
    invoke-static {v3, v3, v13, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 266
    .line 267
    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 268
    .line 269
    invoke-virtual {v12, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 273
    .line 274
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyLineFrame;->c()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v7, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 284
    .line 285
    .line 286
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 287
    .line 288
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    const/16 v13, 0x11

    .line 292
    .line 293
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    .line 295
    .line 296
    const/high16 v13, 0x41a00000    # 20.0f

    .line 297
    .line 298
    const/4 v10, 0x1

    .line 299
    invoke-virtual {v3, v10, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 300
    .line 301
    .line 302
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    .line 304
    const/4 v13, -0x2

    .line 305
    invoke-direct {v10, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    .line 307
    .line 308
    const/16 v13, 0x11

    .line 309
    .line 310
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 311
    .line 312
    invoke-virtual {v7, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    new-instance v10, Lcom/mycompany/app/view/MyLineFrame;

    .line 316
    .line 317
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v9}, Landroid/view/View;->setId(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10}, Lcom/mycompany/app/view/MyLineFrame;->b()V

    .line 324
    .line 325
    .line 326
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 327
    .line 328
    move-object/from16 v21, v3

    .line 329
    .line 330
    const/4 v3, -0x1

    .line 331
    invoke-direct {v13, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 332
    .line 333
    .line 334
    const/16 v3, 0x15

    .line 335
    .line 336
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    .line 338
    .line 339
    const/16 v3, 0x12

    .line 340
    .line 341
    invoke-virtual {v13, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 348
    .line 349
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 350
    .line 351
    .line 352
    const/16 v13, 0x11

    .line 353
    .line 354
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v19, v7

    .line 358
    .line 359
    const/high16 v7, 0x41a00000    # 20.0f

    .line 360
    .line 361
    const/4 v13, 0x1

    .line 362
    invoke-virtual {v3, v13, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 363
    .line 364
    .line 365
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 366
    .line 367
    const/4 v13, -0x2

    .line 368
    invoke-direct {v7, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 369
    .line 370
    .line 371
    const/16 v13, 0x11

    .line 372
    .line 373
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    .line 375
    invoke-virtual {v10, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 379
    .line 380
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    move-object/from16 v20, v3

    .line 384
    .line 385
    const/4 v3, -0x1

    .line 386
    invoke-static {v3, v3, v13, v8}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    const/16 v3, 0x10

    .line 391
    .line 392
    invoke-virtual {v8, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    .line 397
    .line 398
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 399
    .line 400
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 404
    .line 405
    .line 406
    const/4 v8, 0x1

    .line 407
    const/high16 v9, 0x41a00000    # 20.0f

    .line 408
    .line 409
    invoke-virtual {v3, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 410
    .line 411
    .line 412
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .line 414
    const/4 v9, -0x2

    .line 415
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 416
    .line 417
    .line 418
    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 419
    .line 420
    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .line 422
    .line 423
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 424
    .line 425
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 429
    .line 430
    .line 431
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 432
    .line 433
    int-to-float v9, v9

    .line 434
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 435
    .line 436
    .line 437
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 438
    .line 439
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 440
    .line 441
    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 442
    .line 443
    .line 444
    const v13, 0x800013

    .line 445
    .line 446
    .line 447
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    .line 449
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 450
    .line 451
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .line 456
    .line 457
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 458
    .line 459
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 463
    .line 464
    .line 465
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 466
    .line 467
    int-to-float v2, v2

    .line 468
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 469
    .line 470
    .line 471
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 472
    .line 473
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 474
    .line 475
    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 476
    .line 477
    .line 478
    const v13, 0x800015

    .line 479
    .line 480
    .line 481
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 482
    .line 483
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 484
    .line 485
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    .line 490
    .line 491
    new-instance v2, Landroid/widget/FrameLayout;

    .line 492
    .line 493
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2, v11}, Landroid/view/View;->setId(I)V

    .line 497
    .line 498
    .line 499
    const/16 v11, 0x8

    .line 500
    .line 501
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 502
    .line 503
    .line 504
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 505
    .line 506
    move-object/from16 v17, v3

    .line 507
    .line 508
    const/4 v3, -0x2

    .line 509
    const/4 v13, -0x1

    .line 510
    invoke-direct {v11, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 511
    .line 512
    .line 513
    const/16 v3, 0xc

    .line 514
    .line 515
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v12, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .line 520
    .line 521
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 522
    .line 523
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 524
    .line 525
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 526
    .line 527
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 528
    .line 529
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 530
    .line 531
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingImageTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 532
    .line 533
    const/4 v1, 0x3

    .line 534
    new-array v3, v1, [Lcom/mycompany/app/view/MyLineFrame;

    .line 535
    .line 536
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 537
    .line 538
    new-array v1, v1, [Lcom/mycompany/app/view/MyLineText;

    .line 539
    .line 540
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 541
    .line 542
    const/4 v13, 0x2

    .line 543
    new-array v4, v13, [Lcom/mycompany/app/view/MyRoundImage;

    .line 544
    .line 545
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 546
    .line 547
    const/16 v16, 0x0

    .line 548
    .line 549
    aput-object v19, v3, v16

    .line 550
    .line 551
    const/16 v18, 0x1

    .line 552
    .line 553
    aput-object v10, v3, v18

    .line 554
    .line 555
    aput-object v7, v3, v13

    .line 556
    .line 557
    aput-object v21, v1, v16

    .line 558
    .line 559
    aput-object v20, v1, v18

    .line 560
    .line 561
    aput-object v17, v1, v13

    .line 562
    .line 563
    aput-object v8, v4, v16

    .line 564
    .line 565
    aput-object v9, v4, v18

    .line 566
    .line 567
    invoke-virtual {v0, v12, v5, v2}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 568
    .line 569
    .line 570
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 571
    .line 572
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 580
    .line 581
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 582
    .line 583
    .line 584
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 585
    .line 586
    if-nez v1, :cond_0

    .line 587
    .line 588
    return-void

    .line 589
    :cond_0
    new-instance v2, Lcom/mycompany/app/setting/SettingImageTap$1;

    .line 590
    .line 591
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingImageTap$1;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    .line 596
    .line 597
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 49
    .line 50
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 65
    .line 66
    return-void
.end method

.method public final onPause()V
    .locals 2

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->D0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingImageTap;->E0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingImageTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

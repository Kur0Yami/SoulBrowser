.class public Lcom/mycompany/app/setting/SettingVideoTap;
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

.field public W1:Landroid/widget/RelativeLayout$LayoutParams;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

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
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v4, v5, :cond_2

    .line 21
    .line 22
    aget v4, v0, v6

    .line 23
    .line 24
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 25
    .line 26
    if-ne v4, v5, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    aget v0, v0, v4

    .line 30
    .line 31
    sget v4, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    .line 35
    aget v0, v2, v1

    .line 36
    .line 37
    sget v4, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 38
    .line 39
    if-ne v0, v4, :cond_2

    .line 40
    .line 41
    aget v0, v2, v6

    .line 42
    .line 43
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 44
    .line 45
    if-ne v0, v2, :cond_2

    .line 46
    .line 47
    aget v0, v3, v1

    .line 48
    .line 49
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 50
    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    aget v0, v3, v6

    .line 54
    .line 55
    sget v2, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 56
    .line 57
    if-eq v0, v2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return v1

    .line 61
    :cond_2
    :goto_0
    return v6

    .line 62
    :cond_3
    :goto_1
    return v1
.end method

.method public final G0(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->P1:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->P1:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->F0()Z

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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 32
    .line 33
    aget v3, v1, v2

    .line 34
    .line 35
    sput v3, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 36
    .line 37
    aget v3, v1, v0

    .line 38
    .line 39
    sput v3, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    aget v1, v1, v3

    .line 43
    .line 44
    sput v1, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 47
    .line 48
    aget v3, v1, v2

    .line 49
    .line 50
    sput v3, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 51
    .line 52
    aget v1, v1, v0

    .line 53
    .line 54
    sput v1, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 55
    .line 56
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 57
    .line 58
    aget v3, v1, v2

    .line 59
    .line 60
    sput v3, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 61
    .line 62
    aget v0, v1, v0

    .line 63
    .line 64
    sput v0, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefVideo;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefVideo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "mLandAreaRight"

    .line 73
    .line 74
    const-string v3, "mLandAreaLeft"

    .line 75
    .line 76
    const-string v4, "mPortAreaRight"

    .line 77
    .line 78
    const-string v5, "mPortAreaLeft"

    .line 79
    .line 80
    const-string v6, "mTapCenter"

    .line 81
    .line 82
    const-string v7, "mTapRight"

    .line 83
    .line 84
    const-string v8, "mTapLeft"

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    sget v9, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 89
    .line 90
    invoke-virtual {v0, v9, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget v8, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 94
    .line 95
    invoke-virtual {v0, v8, v7}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget v7, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 99
    .line 100
    invoke-virtual {v0, v7, v6}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 104
    .line 105
    invoke-virtual {v0, v6, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 109
    .line 110
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget v4, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 114
    .line 115
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget v3, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 119
    .line 120
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0, v8}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 146
    .line 147
    .line 148
    :cond_3
    if-eqz p1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->P1:Z

    .line 155
    .line 156
    :cond_5
    :goto_1
    return-void
.end method

.method public final H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z
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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 10
    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

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
    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 27
    .line 28
    if-le p3, p4, :cond_3

    .line 29
    .line 30
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

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
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    .line 42
    add-int/2addr v0, p4

    .line 43
    iget p4, p0, Lcom/mycompany/app/setting/SettingVideoTap;->C1:I

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
    iget p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 50
    .line 51
    if-ne p4, p3, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 55
    .line 56
    if-eqz p5, :cond_5

    .line 57
    .line 58
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 59
    .line 60
    aput p3, p2, p1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    const-string p2, " - "

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    if-ne p2, v1, :cond_2

    .line 18
    .line 19
    aget-object p1, v0, p1

    .line 20
    .line 21
    const-string p2, " + "

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    const/4 v1, 0x2

    .line 28
    if-ne p2, v1, :cond_3

    .line 29
    .line 30
    aget-object p1, v0, p1

    .line 31
    .line 32
    const-string p2, " P "

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    aget-object p1, v0, p1

    .line 39
    .line 40
    const-string p2, " X "

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->N1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->E0()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoTap$15;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoTap$15;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->O1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoTap$16;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoTap$16;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget v4, p0, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->W1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

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
    iget v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->T1:F

    .line 70
    .line 71
    sub-float/2addr v1, v2

    .line 72
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->W1:Landroid/widget/RelativeLayout$LayoutParams;

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
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 89
    .line 90
    iget v4, p0, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

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
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->W1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    .line 102
    if-nez v2, :cond_8

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    .line 107
    iput v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->X1:I

    .line 108
    .line 109
    :cond_9
    iget v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

    .line 110
    .line 111
    if-nez v2, :cond_b

    .line 112
    .line 113
    iget v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->X1:I

    .line 114
    .line 115
    int-to-float v0, v0

    .line 116
    add-float/2addr v0, v1

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :cond_a
    :goto_1
    move v4, v0

    .line 122
    goto :goto_2

    .line 123
    :cond_b
    if-ne v2, v3, :cond_a

    .line 124
    .line 125
    iget v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->X1:I

    .line 126
    .line 127
    int-to-float v0, v0

    .line 128
    sub-float/2addr v0, v1

    .line 129
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    goto :goto_1

    .line 134
    :goto_2
    iget v2, p0, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

    .line 135
    .line 136
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingVideoTap;->W1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .line 138
    const/4 v5, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    move-object v1, p0

    .line 144
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_f

    .line 149
    .line 150
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 151
    .line 152
    iget v2, v1, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

    .line 153
    .line 154
    aget-object v0, v0, v2

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_c
    move-object v1, p0

    .line 161
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 162
    .line 163
    if-nez v3, :cond_d

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iput v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->T1:F

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    iput v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->U1:F

    .line 177
    .line 178
    const/4 v3, -0x1

    .line 179
    iput v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->W1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .line 184
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 185
    .line 186
    array-length v3, v3

    .line 187
    move v4, v0

    .line 188
    :goto_3
    if-ge v4, v3, :cond_f

    .line 189
    .line 190
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 191
    .line 192
    aget-object v5, v5, v4

    .line 193
    .line 194
    iget v6, v1, Lcom/mycompany/app/setting/SettingVideoTap;->T1:F

    .line 195
    .line 196
    float-to-int v6, v6

    .line 197
    iget v7, v1, Lcom/mycompany/app/setting/SettingVideoTap;->U1:F

    .line 198
    .line 199
    float-to-int v7, v7

    .line 200
    sget v8, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 201
    .line 202
    invoke-static {v6, v7, v8, v5}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_e

    .line 207
    .line 208
    iput v4, v1, Lcom/mycompany/app/setting/SettingVideoTap;->V1:I

    .line 209
    .line 210
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 211
    .line 212
    aget-object v2, v3, v2

    .line 213
    .line 214
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_f
    :goto_4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    return p1
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->P1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->F0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->J0()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->l0()V

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
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    aget-object v0, v0, v2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v3, v0

    .line 52
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 57
    .line 58
    aget v4, v0, v2

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x1

    .line 62
    move-object v1, p0

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v1, p0

    .line 68
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 69
    .line 70
    aget v4, v0, v2

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    move-object v1, p0

    .line 79
    :goto_2
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 80
    .line 81
    aget v0, v0, v2

    .line 82
    .line 83
    invoke-virtual {p0, v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap;->I0(II)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
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
    iput v2, v0, Lcom/mycompany/app/setting/SettingVideoTap;->C1:I

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v4, v2, [I

    .line 18
    .line 19
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 20
    .line 21
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->A:I

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    aput v5, v4, v6

    .line 25
    .line 26
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->B:I

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    aput v5, v4, v7

    .line 30
    .line 31
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->C:I

    .line 32
    .line 33
    aput v5, v4, v3

    .line 34
    .line 35
    new-array v4, v3, [I

    .line 36
    .line 37
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 38
    .line 39
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->D:I

    .line 40
    .line 41
    aput v5, v4, v6

    .line 42
    .line 43
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->E:I

    .line 44
    .line 45
    aput v5, v4, v7

    .line 46
    .line 47
    new-array v4, v3, [I

    .line 48
    .line 49
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 50
    .line 51
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->F:I

    .line 52
    .line 53
    aput v5, v4, v6

    .line 54
    .line 55
    sget v5, Lcom/mycompany/app/pref/PrefVideo;->G:I

    .line 56
    .line 57
    aput v5, v4, v7

    .line 58
    .line 59
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 60
    .line 61
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 62
    .line 63
    sget v8, Lnet/kaki87/soul2/testing/R$id;->area_view_3:I

    .line 64
    .line 65
    sget v9, Lnet/kaki87/soul2/testing/R$id;->area_view_4:I

    .line 66
    .line 67
    sget v10, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 68
    .line 69
    sget v11, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 70
    .line 71
    new-instance v12, Lcom/mycompany/app/view/MyMainRelative;

    .line 72
    .line 73
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    const/4 v14, -0x1

    .line 79
    invoke-direct {v13, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lcom/mycompany/app/view/MyHeaderView;

    .line 86
    .line 87
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 91
    .line 92
    invoke-virtual {v12, v13, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 101
    .line 102
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .line 107
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 108
    .line 109
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 110
    .line 111
    invoke-direct {v3, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-direct {v1, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    .line 127
    .line 128
    const/16 v3, 0x10

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 134
    .line 135
    .line 136
    const/high16 v6, 0x41900000    # 18.0f

    .line 137
    .line 138
    invoke-static {v1, v7, v6, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    .line 144
    .line 145
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 146
    .line 147
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    const/high16 v6, 0x41600000    # 14.0f

    .line 154
    .line 155
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    float-to-int v6, v6

    .line 160
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 161
    .line 162
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 175
    .line 176
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 177
    .line 178
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    .line 183
    .line 184
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 185
    .line 186
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    .line 188
    invoke-virtual {v13, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    .line 204
    .line 205
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .line 207
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 208
    .line 209
    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    .line 214
    .line 215
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 216
    .line 217
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 218
    .line 219
    invoke-virtual {v13, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    new-instance v5, Landroid/widget/FrameLayout;

    .line 223
    .line 224
    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v10}, Landroid/view/View;->setId(I)V

    .line 228
    .line 229
    .line 230
    const/4 v6, 0x4

    .line 231
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 235
    .line 236
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 237
    .line 238
    const/4 v10, -0x2

    .line 239
    invoke-direct {v6, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    const/16 v7, 0x15

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    new-instance v6, Lcom/mycompany/app/view/MyRoundItem;

    .line 251
    .line 252
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    const/4 v13, 0x1

    .line 256
    invoke-virtual {v6, v13, v13}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 257
    .line 258
    .line 259
    const/4 v13, 0x0

    .line 260
    invoke-virtual {v6, v13}, Landroid/view/View;->setLayoutDirection(I)V

    .line 261
    .line 262
    .line 263
    const/4 v3, -0x1

    .line 264
    const/4 v13, 0x2

    .line 265
    invoke-static {v3, v3, v13, v11}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 270
    .line 271
    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    .line 273
    invoke-virtual {v12, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 277
    .line 278
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyLineFrame;->c()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v7, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 288
    .line 289
    .line 290
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 291
    .line 292
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    const/16 v13, 0x11

    .line 296
    .line 297
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    .line 299
    .line 300
    const/high16 v13, 0x41a00000    # 20.0f

    .line 301
    .line 302
    const/4 v10, 0x1

    .line 303
    invoke-virtual {v3, v10, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 304
    .line 305
    .line 306
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .line 308
    const/4 v13, -0x2

    .line 309
    invoke-direct {v10, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    .line 311
    .line 312
    const/16 v13, 0x11

    .line 313
    .line 314
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 315
    .line 316
    invoke-virtual {v7, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    .line 318
    .line 319
    new-instance v10, Lcom/mycompany/app/view/MyLineFrame;

    .line 320
    .line 321
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v9}, Landroid/view/View;->setId(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Lcom/mycompany/app/view/MyLineFrame;->b()V

    .line 328
    .line 329
    .line 330
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    .line 332
    move-object/from16 v21, v3

    .line 333
    .line 334
    const/4 v3, -0x1

    .line 335
    invoke-direct {v13, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    .line 337
    .line 338
    const/16 v3, 0x15

    .line 339
    .line 340
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    .line 342
    .line 343
    const/16 v3, 0x12

    .line 344
    .line 345
    invoke-virtual {v13, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 352
    .line 353
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 354
    .line 355
    .line 356
    const/16 v13, 0x11

    .line 357
    .line 358
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    .line 360
    .line 361
    move-object/from16 v19, v7

    .line 362
    .line 363
    const/high16 v7, 0x41a00000    # 20.0f

    .line 364
    .line 365
    const/4 v13, 0x1

    .line 366
    invoke-virtual {v3, v13, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 367
    .line 368
    .line 369
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 370
    .line 371
    const/4 v13, -0x2

    .line 372
    invoke-direct {v7, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 373
    .line 374
    .line 375
    const/16 v13, 0x11

    .line 376
    .line 377
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    .line 379
    invoke-virtual {v10, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 383
    .line 384
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v20, v3

    .line 388
    .line 389
    const/4 v3, -0x1

    .line 390
    invoke-static {v3, v3, v13, v8}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    const/16 v3, 0x10

    .line 395
    .line 396
    invoke-virtual {v8, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    .line 401
    .line 402
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 403
    .line 404
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    .line 409
    .line 410
    const/4 v8, 0x1

    .line 411
    const/high16 v9, 0x41a00000    # 20.0f

    .line 412
    .line 413
    invoke-virtual {v3, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 414
    .line 415
    .line 416
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 417
    .line 418
    const/4 v9, -0x2

    .line 419
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 420
    .line 421
    .line 422
    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 423
    .line 424
    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 428
    .line 429
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 433
    .line 434
    .line 435
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 436
    .line 437
    int-to-float v9, v9

    .line 438
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 439
    .line 440
    .line 441
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 442
    .line 443
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 444
    .line 445
    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 446
    .line 447
    .line 448
    const v13, 0x800013

    .line 449
    .line 450
    .line 451
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 452
    .line 453
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 454
    .line 455
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    .line 460
    .line 461
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 462
    .line 463
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 467
    .line 468
    .line 469
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 470
    .line 471
    int-to-float v2, v2

    .line 472
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 473
    .line 474
    .line 475
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 476
    .line 477
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 478
    .line 479
    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 480
    .line 481
    .line 482
    const v13, 0x800015

    .line 483
    .line 484
    .line 485
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    .line 487
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 488
    .line 489
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Landroid/widget/FrameLayout;

    .line 496
    .line 497
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v11}, Landroid/view/View;->setId(I)V

    .line 501
    .line 502
    .line 503
    const/16 v11, 0x8

    .line 504
    .line 505
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 509
    .line 510
    move-object/from16 v17, v3

    .line 511
    .line 512
    const/4 v3, -0x2

    .line 513
    const/4 v13, -0x1

    .line 514
    invoke-direct {v11, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 515
    .line 516
    .line 517
    const/16 v3, 0xc

    .line 518
    .line 519
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v12, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    .line 524
    .line 525
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 526
    .line 527
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 528
    .line 529
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 530
    .line 531
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 532
    .line 533
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 534
    .line 535
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingVideoTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 536
    .line 537
    const/4 v1, 0x3

    .line 538
    new-array v3, v1, [Lcom/mycompany/app/view/MyLineFrame;

    .line 539
    .line 540
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 541
    .line 542
    new-array v1, v1, [Lcom/mycompany/app/view/MyLineText;

    .line 543
    .line 544
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 545
    .line 546
    const/4 v13, 0x2

    .line 547
    new-array v4, v13, [Lcom/mycompany/app/view/MyRoundImage;

    .line 548
    .line 549
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 550
    .line 551
    const/16 v16, 0x0

    .line 552
    .line 553
    aput-object v19, v3, v16

    .line 554
    .line 555
    const/16 v18, 0x1

    .line 556
    .line 557
    aput-object v10, v3, v18

    .line 558
    .line 559
    aput-object v7, v3, v13

    .line 560
    .line 561
    aput-object v21, v1, v16

    .line 562
    .line 563
    aput-object v20, v1, v18

    .line 564
    .line 565
    aput-object v17, v1, v13

    .line 566
    .line 567
    aput-object v8, v4, v16

    .line 568
    .line 569
    aput-object v9, v4, v18

    .line 570
    .line 571
    invoke-virtual {v0, v12, v5, v2}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 572
    .line 573
    .line 574
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 586
    .line 587
    .line 588
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 589
    .line 590
    if-nez v1, :cond_0

    .line 591
    .line 592
    return-void

    .line 593
    :cond_0
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$1;

    .line 594
    .line 595
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap$1;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    .line 600
    .line 601
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Y1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 49
    .line 50
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->D0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingVideoTap;->E0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingVideoTap;->M1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

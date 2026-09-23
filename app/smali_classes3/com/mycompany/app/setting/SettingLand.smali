.class public Lcom/mycompany/app/setting/SettingLand;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingLand$LocalWebViewClient;,
        Lcom/mycompany/app/setting/SettingLand$LocalChromeClient;
    }
.end annotation


# static fields
.field public static final synthetic y2:I


# instance fields
.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public E1:Lcom/mycompany/app/view/MyButtonImage;

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public G1:Lcom/mycompany/app/view/MyRoundItem;

.field public H1:Lcom/mycompany/app/view/MyRoundImage;

.field public I1:Lcom/mycompany/app/view/MyRoundImage;

.field public J1:Lcom/mycompany/app/view/MyRoundImage;

.field public K1:Landroid/view/View;

.field public L1:Landroid/view/View;

.field public M1:Landroid/view/View;

.field public N1:Landroidx/appcompat/widget/AppCompatTextView;

.field public O1:Landroidx/appcompat/widget/AppCompatTextView;

.field public P1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public R1:Z

.field public S1:Landroid/widget/RelativeLayout$LayoutParams;

.field public T1:I

.field public U1:I

.field public V1:I

.field public W1:I

.field public X1:I

.field public Y1:I

.field public Z1:I

.field public a2:I

.field public b2:I

.field public c2:I

.field public d2:I

.field public e2:Z

.field public f2:I

.field public g2:Ljava/lang/String;

.field public h2:Ljava/lang/String;

.field public i2:Ljava/lang/String;

.field public j2:Z

.field public k2:Lcom/mycompany/app/view/MyRoundView;

.field public l2:Lcom/mycompany/app/view/MyEditPure;

.field public m2:Lcom/mycompany/app/view/MyButtonImage;

.field public n2:Lcom/mycompany/app/view/MyButtonImage;

.field public o2:Landroid/widget/FrameLayout;

.field public p2:Lcom/mycompany/app/web/WebNestView;

.field public q2:Lcom/mycompany/app/view/MyProgressBar;

.field public r2:Z

.field public s2:Z

.field public t2:Lcom/mycompany/app/web/WebClean;

.field public u2:Z

.field public v2:Ljava/lang/String;

.field public w2:I

.field public final x2:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/setting/SettingLand$17;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingLand$17;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->x2:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method public static D0(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a7(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    const/16 v0, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->F()Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 83
    .line 84
    invoke-static {v0, p0}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->P1:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->P1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 8
    .line 9
    sget v1, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final H0(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->R1:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->R1:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->G0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 17
    .line 18
    sput v0, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 19
    .line 20
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 21
    .line 22
    sput v0, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "mWebLand2"

    .line 31
    .line 32
    const-string v3, "mWebLand1"

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget v4, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 37
    .line 38
    invoke-virtual {v0, v4, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 42
    .line 43
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 54
    .line 55
    .line 56
    :cond_2
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingLand;->R1:Z

    .line 63
    .line 64
    return-void
.end method

.method public final I0(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->S1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->S1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x3

    .line 22
    const/4 v1, 0x0

    .line 23
    if-gez p1, :cond_2

    .line 24
    .line 25
    if-gez p2, :cond_2

    .line 26
    .line 27
    move p1, v1

    .line 28
    move p2, p1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    if-gez p1, :cond_4

    .line 31
    .line 32
    if-ne p3, v0, :cond_3

    .line 33
    .line 34
    add-int/2addr p2, p1

    .line 35
    if-gez p2, :cond_3

    .line 36
    .line 37
    move p2, v1

    .line 38
    :cond_3
    move p1, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    if-gez p2, :cond_6

    .line 41
    .line 42
    if-ne p3, v0, :cond_5

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    if-gez p1, :cond_5

    .line 46
    .line 47
    move p1, v1

    .line 48
    :cond_5
    move p2, v1

    .line 49
    :cond_6
    :goto_1
    add-int v2, p1, p2

    .line 50
    .line 51
    iget v3, p0, Lcom/mycompany/app/setting/SettingLand;->T1:I

    .line 52
    .line 53
    iget v4, p0, Lcom/mycompany/app/setting/SettingLand;->U1:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    const/4 v4, 0x2

    .line 57
    const/4 v5, 0x1

    .line 58
    if-le v2, v3, :cond_8

    .line 59
    .line 60
    if-ne p3, v5, :cond_7

    .line 61
    .line 62
    sub-int p1, v3, p2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_7
    if-ne p3, v4, :cond_8

    .line 66
    .line 67
    sub-int p2, v3, p1

    .line 68
    .line 69
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingLand;->S1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    .line 71
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 72
    .line 73
    if-eq v3, p1, :cond_9

    .line 74
    .line 75
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    .line 77
    move v3, v5

    .line 78
    goto :goto_3

    .line 79
    :cond_9
    move v3, v1

    .line 80
    :goto_3
    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 81
    .line 82
    if-eq v6, p2, :cond_a

    .line 83
    .line 84
    iput p2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 85
    .line 86
    move v2, v5

    .line 87
    goto :goto_4

    .line 88
    :cond_a
    move v2, v1

    .line 89
    :goto_4
    iput p1, p0, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 90
    .line 91
    iput p2, p0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 92
    .line 93
    int-to-float p1, p1

    .line 94
    iget p2, p0, Lcom/mycompany/app/setting/SettingLand;->V1:I

    .line 95
    .line 96
    int-to-float p2, p2

    .line 97
    div-float/2addr p1, p2

    .line 98
    const/high16 p2, 0x42c80000    # 100.0f

    .line 99
    .line 100
    mul-float/2addr p1, p2

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget v6, p0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 106
    .line 107
    int-to-float v6, v6

    .line 108
    iget v7, p0, Lcom/mycompany/app/setting/SettingLand;->V1:I

    .line 109
    .line 110
    int-to-float v7, v7

    .line 111
    div-float/2addr v6, v7

    .line 112
    mul-float/2addr v6, p2

    .line 113
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    :goto_5
    add-int v6, p1, p2

    .line 118
    .line 119
    const/16 v7, 0xc8

    .line 120
    .line 121
    if-le v6, v7, :cond_c

    .line 122
    .line 123
    if-le p1, p2, :cond_b

    .line 124
    .line 125
    add-int/lit8 p1, p1, -0x1

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_b
    add-int/lit8 p2, p2, -0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_c
    const/16 v6, 0x64

    .line 132
    .line 133
    if-ne p3, v5, :cond_e

    .line 134
    .line 135
    if-ne p1, v6, :cond_d

    .line 136
    .line 137
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 138
    .line 139
    if-nez v0, :cond_13

    .line 140
    .line 141
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->c2:I

    .line 142
    .line 143
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_d
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_e
    if-ne p3, v4, :cond_10

    .line 150
    .line 151
    if-ne p2, v6, :cond_f

    .line 152
    .line 153
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 154
    .line 155
    if-nez v0, :cond_13

    .line 156
    .line 157
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->c2:I

    .line 158
    .line 159
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_f
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_10
    if-ne p3, v0, :cond_13

    .line 166
    .line 167
    if-eq p1, p2, :cond_12

    .line 168
    .line 169
    sub-int v0, p1, p2

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-ne v0, v5, :cond_11

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_11
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_12
    :goto_6
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 182
    .line 183
    if-nez v0, :cond_13

    .line 184
    .line 185
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->c2:I

    .line 186
    .line 187
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 188
    .line 189
    :cond_13
    :goto_7
    const-string v0, ""

    .line 190
    .line 191
    if-nez p3, :cond_14

    .line 192
    .line 193
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_14
    if-nez v3, :cond_15

    .line 229
    .line 230
    if-eqz v2, :cond_18

    .line 231
    .line 232
    :cond_15
    if-eqz v3, :cond_16

    .line 233
    .line 234
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    :cond_16
    if-eqz v2, :cond_17

    .line 252
    .line 253
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    :cond_17
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 271
    .line 272
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 273
    .line 274
    .line 275
    :cond_18
    :goto_8
    if-nez p1, :cond_19

    .line 276
    .line 277
    if-nez p2, :cond_19

    .line 278
    .line 279
    move p1, v1

    .line 280
    move p2, v5

    .line 281
    move v5, p1

    .line 282
    goto :goto_c

    .line 283
    :cond_19
    if-nez p1, :cond_1b

    .line 284
    .line 285
    if-ne p2, v7, :cond_1a

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_1a
    move v5, v1

    .line 289
    :goto_9
    move p1, v1

    .line 290
    move p2, p1

    .line 291
    goto :goto_c

    .line 292
    :cond_1b
    if-nez p2, :cond_1d

    .line 293
    .line 294
    if-ne p1, v7, :cond_1c

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_1c
    move v5, v1

    .line 298
    :goto_a
    move p2, v1

    .line 299
    move p1, v5

    .line 300
    :goto_b
    move v5, p2

    .line 301
    goto :goto_c

    .line 302
    :cond_1d
    move p1, v1

    .line 303
    move p2, p1

    .line 304
    goto :goto_b

    .line 305
    :goto_c
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 306
    .line 307
    const/16 v0, 0x8

    .line 308
    .line 309
    if-eqz v5, :cond_1e

    .line 310
    .line 311
    move v2, v0

    .line 312
    goto :goto_d

    .line 313
    :cond_1e
    move v2, v1

    .line 314
    :goto_d
    invoke-virtual {p3, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    iget-object p3, p0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 318
    .line 319
    if-eqz p1, :cond_1f

    .line 320
    .line 321
    move p1, v0

    .line 322
    goto :goto_e

    .line 323
    :cond_1f
    move p1, v1

    .line 324
    :goto_e
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 328
    .line 329
    if-eqz p2, :cond_20

    .line 330
    .line 331
    move v1, v0

    .line 332
    :cond_20
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    return-void
.end method

.method public final J0(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/mycompany/app/setting/SettingLand;->w2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->getProgress()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    const/16 v2, 0x64

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 53
    .line 54
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x32

    .line 68
    .line 69
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingLand;->J0(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    if-lt v0, p1, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x3

    .line 81
    .line 82
    int-to-float p1, v0

    .line 83
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->x2:Ljava/lang/Runnable;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    return-void
.end method

.method public final K0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/high16 v2, -0x1000000

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->G1:Lcom/mycompany/app/view/MyRoundItem;

    .line 32
    .line 33
    const v1, -0xc0c0c1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 40
    .line 41
    const v3, -0xdededf

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 48
    .line 49
    const v3, -0x50506

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 80
    .line 81
    const v4, -0x37000001

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4, v2}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->G1:Lcom/mycompany/app/view/MyRoundItem;

    .line 143
    .line 144
    const v1, -0x252526

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 151
    .line 152
    const/4 v1, -0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 169
    .line 170
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    const v1, -0x1f1f20

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 189
    .line 190
    const v1, -0xc6b655

    .line 191
    .line 192
    .line 193
    const v3, -0x70708

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 220
    .line 221
    const/high16 v1, 0x21000000

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public final L0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->P1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->F0()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$20;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingLand$20;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->Q1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$21;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingLand$21;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

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
    .locals 8

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
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    if-eq v1, v4, :cond_9

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-eq v1, v2, :cond_9

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_2
    iget v1, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->c2:I

    .line 40
    .line 41
    iget v5, p0, Lcom/mycompany/app/setting/SettingLand;->a2:I

    .line 42
    .line 43
    sub-int v5, v1, v5

    .line 44
    .line 45
    iget-boolean v6, p0, Lcom/mycompany/app/setting/SettingLand;->e2:Z

    .line 46
    .line 47
    if-nez v6, :cond_4

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sget v6, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 54
    .line 55
    if-ge v1, v6, :cond_5

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_4
    iget v6, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 60
    .line 61
    if-eqz v6, :cond_5

    .line 62
    .line 63
    sub-int/2addr v1, v6

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 69
    .line 70
    if-ge v1, v6, :cond_5

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :cond_5
    iput-boolean v4, p0, Lcom/mycompany/app/setting/SettingLand;->e2:Z

    .line 75
    .line 76
    iget v1, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 77
    .line 78
    if-ne v1, v4, :cond_6

    .line 79
    .line 80
    move v7, v5

    .line 81
    move v5, v0

    .line 82
    move v0, v7

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    if-ne v1, v3, :cond_7

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    if-ne v1, v2, :cond_8

    .line 88
    .line 89
    move v0, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_8
    move v5, v0

    .line 92
    :goto_0
    iget v2, p0, Lcom/mycompany/app/setting/SettingLand;->Y1:I

    .line 93
    .line 94
    add-int/2addr v2, v0

    .line 95
    iget v0, p0, Lcom/mycompany/app/setting/SettingLand;->Z1:I

    .line 96
    .line 97
    sub-int/2addr v0, v5

    .line 98
    invoke-virtual {p0, v2, v0, v1}, Lcom/mycompany/app/setting/SettingLand;->I0(III)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 104
    .line 105
    if-nez v0, :cond_a

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_a
    const/16 v1, 0x8

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->M1:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 125
    .line 126
    if-nez v1, :cond_c

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    float-to-int v1, v1

    .line 134
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->a2:I

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    float-to-int v1, v1

    .line 141
    iput v1, p0, Lcom/mycompany/app/setting/SettingLand;->b2:I

    .line 142
    .line 143
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->c2:I

    .line 144
    .line 145
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->d2:I

    .line 146
    .line 147
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->e2:Z

    .line 148
    .line 149
    iget v5, p0, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 150
    .line 151
    iput v5, p0, Lcom/mycompany/app/setting/SettingLand;->Y1:I

    .line 152
    .line 153
    iget v5, p0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 154
    .line 155
    iput v5, p0, Lcom/mycompany/app/setting/SettingLand;->Z1:I

    .line 156
    .line 157
    iget-object v5, p0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 158
    .line 159
    iget v6, p0, Lcom/mycompany/app/setting/SettingLand;->a2:I

    .line 160
    .line 161
    invoke-static {v6, v1, v0, v5}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_d

    .line 166
    .line 167
    iput v4, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 168
    .line 169
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 176
    .line 177
    iget v4, p0, Lcom/mycompany/app/setting/SettingLand;->a2:I

    .line 178
    .line 179
    iget v5, p0, Lcom/mycompany/app/setting/SettingLand;->b2:I

    .line 180
    .line 181
    invoke-static {v4, v5, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_e

    .line 186
    .line 187
    iput v3, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 188
    .line 189
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 196
    .line 197
    iget v3, p0, Lcom/mycompany/app/setting/SettingLand;->a2:I

    .line 198
    .line 199
    iget v4, p0, Lcom/mycompany/app/setting/SettingLand;->b2:I

    .line 200
    .line 201
    invoke-static {v3, v4, v0, v1}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_f

    .line 206
    .line 207
    iput v2, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 208
    .line 209
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->M1:Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_f
    iput v0, p0, Lcom/mycompany/app/setting/SettingLand;->f2:I

    .line 216
    .line 217
    :goto_1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    return p1
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->R1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->G0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->L0()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

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
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingLand;->r2:Z

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->r2:Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/high16 v1, -0x1000000

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x70708

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->K0()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingLand;->s2:Z

    .line 55
    .line 56
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 57
    .line 58
    if-eq p1, v0, :cond_5

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingLand;->s2:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-eqz v0, :cond_4

    .line 68
    .line 69
    const v0, -0xdededf

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    new-instance p1, Lcom/mycompany/app/setting/SettingLand$22;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingLand$22;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "EXTRA_PATH"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "https://www.google.com"

    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->t2:Lcom/mycompany/app/web/WebClean;

    .line 46
    .line 47
    sget v1, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 48
    .line 49
    iput v1, v0, Lcom/mycompany/app/setting/SettingLand;->W1:I

    .line 50
    .line 51
    sget v1, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 52
    .line 53
    iput v1, v0, Lcom/mycompany/app/setting/SettingLand;->X1:I

    .line 54
    .line 55
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 56
    .line 57
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingLand;->r2:Z

    .line 58
    .line 59
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 60
    .line 61
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingLand;->s2:Z

    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->v7(Landroid/app/Activity;I)V

    .line 65
    .line 66
    .line 67
    sget v1, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 68
    .line 69
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 70
    .line 71
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 72
    .line 73
    sget v6, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 74
    .line 75
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    const/4 v9, -0x1

    .line 83
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    new-instance v8, Lcom/mycompany/app/view/MyHeaderView;

    .line 90
    .line 91
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 95
    .line 96
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 97
    .line 98
    .line 99
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    .line 108
    .line 109
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    .line 111
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 112
    .line 113
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 114
    .line 115
    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 119
    .line 120
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    const/high16 v12, 0x43100000    # 144.0f

    .line 127
    .line 128
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    float-to-int v12, v12

    .line 133
    new-instance v13, Landroid/widget/FrameLayout;

    .line 134
    .line 135
    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .line 140
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 141
    .line 142
    invoke-direct {v14, v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v12, Lcom/mycompany/app/view/MyRoundView;

    .line 155
    .line 156
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 160
    .line 161
    invoke-virtual {v13, v12, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 162
    .line 163
    .line 164
    new-instance v14, Lcom/mycompany/app/view/MyEditPure;

    .line 165
    .line 166
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    const/16 v15, 0x10

    .line 170
    .line 171
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 175
    .line 176
    .line 177
    const/4 v3, 0x3

    .line 178
    invoke-virtual {v14, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 179
    .line 180
    .line 181
    const/high16 v3, 0x41800000    # 16.0f

    .line 182
    .line 183
    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    .line 185
    .line 186
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 187
    .line 188
    const/16 v9, 0x1d

    .line 189
    .line 190
    if-lt v3, v9, :cond_1

    .line 191
    .line 192
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 193
    .line 194
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 195
    .line 196
    .line 197
    :cond_1
    const v3, -0x7e7e7f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setInputType(I)V

    .line 204
    .line 205
    .line 206
    const v3, 0x10000003

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 213
    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    invoke-virtual {v14, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    .line 218
    .line 219
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .line 221
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 222
    .line 223
    const/4 v2, -0x1

    .line 224
    invoke-direct {v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    .line 226
    .line 227
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 228
    .line 229
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 230
    .line 231
    .line 232
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 233
    .line 234
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    const/high16 v2, 0x41600000    # 14.0f

    .line 241
    .line 242
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    float-to-int v2, v2

    .line 247
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 248
    .line 249
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    .line 257
    .line 258
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    .line 260
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 261
    .line 262
    move-object/from16 v17, v14

    .line 263
    .line 264
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 265
    .line 266
    invoke-direct {v9, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 267
    .line 268
    .line 269
    const v14, 0x800005

    .line 270
    .line 271
    .line 272
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    .line 274
    invoke-virtual {v13, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 278
    .line 279
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    .line 287
    .line 288
    const/16 v15, 0x8

    .line 289
    .line 290
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 294
    .line 295
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 296
    .line 297
    move-object/from16 v19, v3

    .line 298
    .line 299
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 300
    .line 301
    invoke-direct {v15, v14, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    const v3, 0x800005

    .line 305
    .line 306
    .line 307
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 308
    .line 309
    invoke-virtual {v13, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 313
    .line 314
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 324
    .line 325
    .line 326
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 327
    .line 328
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 329
    .line 330
    invoke-direct {v1, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 331
    .line 332
    .line 333
    const/16 v13, 0x10

    .line 334
    .line 335
    invoke-virtual {v1, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 336
    .line 337
    .line 338
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 339
    .line 340
    iput v13, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 341
    .line 342
    invoke-virtual {v8, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 346
    .line 347
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 357
    .line 358
    .line 359
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 360
    .line 361
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 362
    .line 363
    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    .line 365
    .line 366
    const/16 v13, 0x10

    .line 367
    .line 368
    invoke-virtual {v2, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    .line 370
    .line 371
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 372
    .line 373
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 374
    .line 375
    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    new-instance v2, Landroid/widget/FrameLayout;

    .line 379
    .line 380
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 384
    .line 385
    .line 386
    const/4 v4, 0x4

    .line 387
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 391
    .line 392
    sget v5, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 393
    .line 394
    const/4 v13, -0x2

    .line 395
    invoke-direct {v4, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    .line 397
    .line 398
    const/16 v5, 0x15

    .line 399
    .line 400
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    .line 405
    .line 406
    new-instance v4, Lcom/mycompany/app/view/MyRoundItem;

    .line 407
    .line 408
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 409
    .line 410
    .line 411
    const/4 v8, 0x1

    .line 412
    invoke-virtual {v4, v8, v8}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 413
    .line 414
    .line 415
    const/4 v8, 0x0

    .line 416
    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutDirection(I)V

    .line 417
    .line 418
    .line 419
    const/4 v8, 0x2

    .line 420
    const/4 v14, -0x1

    .line 421
    invoke-static {v14, v14, v8, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 426
    .line 427
    iput v15, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 428
    .line 429
    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    .line 431
    .line 432
    new-instance v8, Landroid/widget/FrameLayout;

    .line 433
    .line 434
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4, v8, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 438
    .line 439
    .line 440
    const/high16 v14, 0x41400000    # 12.0f

    .line 441
    .line 442
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 443
    .line 444
    .line 445
    move-result v14

    .line 446
    float-to-int v14, v14

    .line 447
    new-instance v15, Lcom/mycompany/app/view/MyRoundImage;

    .line 448
    .line 449
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 453
    .line 454
    .line 455
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 456
    .line 457
    int-to-float v13, v13

    .line 458
    invoke-virtual {v15, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 459
    .line 460
    .line 461
    const/16 v13, 0x8

    .line 462
    .line 463
    invoke-virtual {v15, v13}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 464
    .line 465
    .line 466
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    .line 468
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 469
    .line 470
    invoke-direct {v13, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 471
    .line 472
    .line 473
    const v5, 0x800013

    .line 474
    .line 475
    .line 476
    iput v5, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    .line 478
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v8, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    .line 483
    .line 484
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 485
    .line 486
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    .line 491
    .line 492
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 493
    .line 494
    int-to-float v13, v13

    .line 495
    invoke-virtual {v5, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 496
    .line 497
    .line 498
    const/16 v13, 0x8

    .line 499
    .line 500
    invoke-virtual {v5, v13}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 504
    .line 505
    move-object/from16 v18, v2

    .line 506
    .line 507
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 508
    .line 509
    invoke-direct {v13, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 510
    .line 511
    .line 512
    const v2, 0x800015

    .line 513
    .line 514
    .line 515
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 516
    .line 517
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v8, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    .line 522
    .line 523
    new-instance v2, Lcom/mycompany/app/view/MyRoundImage;

    .line 524
    .line 525
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 529
    .line 530
    .line 531
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 532
    .line 533
    int-to-float v11, v11

    .line 534
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 535
    .line 536
    .line 537
    const/16 v13, 0x8

    .line 538
    .line 539
    invoke-virtual {v2, v13}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    .line 544
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 545
    .line 546
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 547
    .line 548
    .line 549
    const/16 v13, 0x11

    .line 550
    .line 551
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 552
    .line 553
    invoke-virtual {v8, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    .line 555
    .line 556
    new-instance v11, Lcom/mycompany/app/view/MyProgressBar;

    .line 557
    .line 558
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 562
    .line 563
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 564
    .line 565
    .line 566
    move-result v14

    .line 567
    float-to-int v14, v14

    .line 568
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 569
    .line 570
    .line 571
    const/16 v14, 0x8

    .line 572
    .line 573
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    const/high16 v14, 0x40000000    # 2.0f

    .line 577
    .line 578
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 579
    .line 580
    .line 581
    move-result v13

    .line 582
    float-to-int v13, v13

    .line 583
    move-object/from16 v20, v8

    .line 584
    .line 585
    const/4 v8, -0x1

    .line 586
    invoke-virtual {v4, v11, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 587
    .line 588
    .line 589
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    float-to-int v8, v8

    .line 594
    const/high16 v13, 0x43480000    # 200.0f

    .line 595
    .line 596
    invoke-static {v0, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 597
    .line 598
    .line 599
    move-result v13

    .line 600
    float-to-int v13, v13

    .line 601
    new-instance v14, Landroid/view/View;

    .line 602
    .line 603
    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 604
    .line 605
    .line 606
    move-object/from16 v21, v11

    .line 607
    .line 608
    const/16 v11, 0x8

    .line 609
    .line 610
    invoke-virtual {v14, v11}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 614
    .line 615
    invoke-direct {v11, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v22, v9

    .line 619
    .line 620
    const/16 v9, 0xf

    .line 621
    .line 622
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v4, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    .line 627
    .line 628
    new-instance v11, Landroid/view/View;

    .line 629
    .line 630
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 631
    .line 632
    .line 633
    const/16 v9, 0x8

    .line 634
    .line 635
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 636
    .line 637
    .line 638
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 639
    .line 640
    invoke-direct {v9, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 641
    .line 642
    .line 643
    move-object/from16 v24, v12

    .line 644
    .line 645
    const/16 v12, 0x15

    .line 646
    .line 647
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 648
    .line 649
    .line 650
    const/16 v12, 0xf

    .line 651
    .line 652
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v4, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    .line 657
    .line 658
    new-instance v9, Landroid/view/View;

    .line 659
    .line 660
    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 661
    .line 662
    .line 663
    const/16 v12, 0x8

    .line 664
    .line 665
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 666
    .line 667
    .line 668
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 669
    .line 670
    invoke-direct {v12, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 671
    .line 672
    .line 673
    const/16 v8, 0xe

    .line 674
    .line 675
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 676
    .line 677
    .line 678
    const/16 v8, 0xf

    .line 679
    .line 680
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    .line 685
    .line 686
    const/high16 v8, 0x42000000    # 32.0f

    .line 687
    .line 688
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 689
    .line 690
    .line 691
    move-result v8

    .line 692
    float-to-int v8, v8

    .line 693
    const/high16 v12, 0x41a00000    # 20.0f

    .line 694
    .line 695
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 696
    .line 697
    .line 698
    move-result v12

    .line 699
    float-to-int v12, v12

    .line 700
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 701
    .line 702
    move-object/from16 v23, v9

    .line 703
    .line 704
    const/4 v9, 0x0

    .line 705
    invoke-direct {v13, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 706
    .line 707
    .line 708
    const/16 v9, 0x11

    .line 709
    .line 710
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 711
    .line 712
    .line 713
    const/high16 v9, 0x41900000    # 18.0f

    .line 714
    .line 715
    move-object/from16 v25, v11

    .line 716
    .line 717
    const/4 v11, 0x1

    .line 718
    invoke-virtual {v13, v11, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 719
    .line 720
    .line 721
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 722
    .line 723
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 724
    .line 725
    invoke-direct {v9, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 726
    .line 727
    .line 728
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 729
    .line 730
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    .line 735
    .line 736
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 737
    .line 738
    const/4 v11, 0x0

    .line 739
    invoke-direct {v9, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 740
    .line 741
    .line 742
    const/16 v11, 0x11

    .line 743
    .line 744
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 745
    .line 746
    .line 747
    move-object/from16 v16, v13

    .line 748
    .line 749
    const/4 v11, 0x1

    .line 750
    const/high16 v13, 0x41900000    # 18.0f

    .line 751
    .line 752
    invoke-virtual {v9, v11, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 753
    .line 754
    .line 755
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 756
    .line 757
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 758
    .line 759
    invoke-direct {v11, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 760
    .line 761
    .line 762
    const/16 v8, 0x15

    .line 763
    .line 764
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 765
    .line 766
    .line 767
    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 768
    .line 769
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    .line 774
    .line 775
    new-instance v8, Landroid/widget/FrameLayout;

    .line 776
    .line 777
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v8, v6}, Landroid/view/View;->setId(I)V

    .line 781
    .line 782
    .line 783
    const/16 v13, 0x8

    .line 784
    .line 785
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 786
    .line 787
    .line 788
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 789
    .line 790
    const/4 v11, -0x2

    .line 791
    const/4 v12, -0x1

    .line 792
    invoke-direct {v6, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 793
    .line 794
    .line 795
    const/16 v11, 0xc

    .line 796
    .line 797
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    .line 802
    .line 803
    iput-object v7, v0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 804
    .line 805
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 806
    .line 807
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 808
    .line 809
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 810
    .line 811
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingLand;->G1:Lcom/mycompany/app/view/MyRoundItem;

    .line 812
    .line 813
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 814
    .line 815
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 816
    .line 817
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 818
    .line 819
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 820
    .line 821
    move-object/from16 v1, v25

    .line 822
    .line 823
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 824
    .line 825
    move-object/from16 v1, v23

    .line 826
    .line 827
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->M1:Landroid/view/View;

    .line 828
    .line 829
    move-object/from16 v1, v16

    .line 830
    .line 831
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 832
    .line 833
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 834
    .line 835
    move-object/from16 v1, v24

    .line 836
    .line 837
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 838
    .line 839
    move-object/from16 v1, v17

    .line 840
    .line 841
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 842
    .line 843
    move-object/from16 v1, v19

    .line 844
    .line 845
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 846
    .line 847
    move-object/from16 v1, v22

    .line 848
    .line 849
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 850
    .line 851
    move-object/from16 v1, v20

    .line 852
    .line 853
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 854
    .line 855
    move-object/from16 v1, v21

    .line 856
    .line 857
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 858
    .line 859
    new-instance v1, Lcom/mycompany/app/setting/SettingLand$1;

    .line 860
    .line 861
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingLand$1;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyMainRelative;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 868
    .line 869
    move-object/from16 v2, v18

    .line 870
    .line 871
    invoke-virtual {v0, v1, v2, v8}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 875
    .line 876
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 881
    .line 882
    .line 883
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 886
    .line 887
    .line 888
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 889
    .line 890
    if-nez v1, :cond_2

    .line 891
    .line 892
    return-void

    .line 893
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$2;

    .line 894
    .line 895
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$2;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    .line 900
    .line 901
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->g:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->l:Landroid/view/Window;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->n:Landroid/view/Window;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->G1:Lcom/mycompany/app/view/MyRoundItem;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->G1:Lcom/mycompany/app/view/MyRoundItem;

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 83
    .line 84
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 85
    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 93
    .line 94
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundView;->a()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 102
    .line 103
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    if-eqz v0, :cond_a

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 122
    .line 123
    if-eqz v0, :cond_c

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->q2:Lcom/mycompany/app/view/MyProgressBar;

    .line 129
    .line 130
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->M1:Landroid/view/View;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->S1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->h2:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->i2:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingLand;->t2:Lcom/mycompany/app/web/WebClean;

    .line 151
    .line 152
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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->E0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingLand;->F0()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

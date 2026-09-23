.class public Lcom/mycompany/app/setting/SettingSwipe;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic e2:I


# instance fields
.field public C1:I

.field public D1:Lcom/mycompany/app/view/MyMainRelative;

.field public E1:Lcom/mycompany/app/view/MyButtonImage;

.field public F1:Landroidx/appcompat/widget/AppCompatTextView;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Lcom/mycompany/app/view/MyButtonImage;

.field public I1:Lcom/mycompany/app/view/MyButtonImage;

.field public J1:Lcom/mycompany/app/view/MyRoundItem;

.field public K1:[Lcom/mycompany/app/view/MyLineFrame;

.field public L1:[Lcom/mycompany/app/view/MyLineText;

.field public M1:[Lcom/mycompany/app/view/MyRoundImage;

.field public N1:Lcom/mycompany/app/view/MyPopupMenu;

.field public O1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public Q1:Lcom/mycompany/app/view/MyDialogBottom;

.field public R1:Z

.field public S1:[I

.field public T1:[I

.field public U1:[I

.field public V1:F

.field public W1:F

.field public X1:I

.field public Y1:Landroid/view/ViewGroup$LayoutParams;

.field public Z1:I

.field public a2:I

.field public b2:Z

.field public c2:Lcom/mycompany/app/view/MyFadeFrame;

.field public d2:Lcom/mycompany/app/view/MyDialogLinear;


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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G0()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    aget v3, v0, v1

    .line 12
    .line 13
    sget v4, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v3, v4, :cond_2

    .line 17
    .line 18
    aget v3, v0, v5

    .line 19
    .line 20
    sget v4, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 21
    .line 22
    if-ne v3, v4, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    aget v4, v0, v3

    .line 26
    .line 27
    sget v6, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 28
    .line 29
    if-ne v4, v6, :cond_2

    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    aget v6, v0, v4

    .line 33
    .line 34
    sget v7, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 35
    .line 36
    if-ne v6, v7, :cond_2

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    aget v0, v0, v6

    .line 40
    .line 41
    sget v6, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 42
    .line 43
    if-ne v0, v6, :cond_2

    .line 44
    .line 45
    aget v0, v2, v1

    .line 46
    .line 47
    sget v6, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 48
    .line 49
    if-ne v0, v6, :cond_2

    .line 50
    .line 51
    aget v0, v2, v5

    .line 52
    .line 53
    sget v6, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 54
    .line 55
    if-ne v0, v6, :cond_2

    .line 56
    .line 57
    aget v0, v2, v3

    .line 58
    .line 59
    sget v6, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 60
    .line 61
    if-ne v0, v6, :cond_2

    .line 62
    .line 63
    aget v0, v2, v4

    .line 64
    .line 65
    sget v2, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 66
    .line 67
    if-ne v0, v2, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 70
    .line 71
    aget v2, v0, v1

    .line 72
    .line 73
    sget v6, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 74
    .line 75
    if-ne v2, v6, :cond_2

    .line 76
    .line 77
    aget v2, v0, v5

    .line 78
    .line 79
    sget v6, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 80
    .line 81
    if-ne v2, v6, :cond_2

    .line 82
    .line 83
    aget v2, v0, v3

    .line 84
    .line 85
    sget v3, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 86
    .line 87
    if-ne v2, v3, :cond_2

    .line 88
    .line 89
    aget v0, v0, v4

    .line 90
    .line 91
    sget v2, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 92
    .line 93
    if-eq v0, v2, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return v1

    .line 97
    :cond_2
    :goto_0
    return v5

    .line 98
    :cond_3
    :goto_1
    return v1
.end method

.method public final H0(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->R1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->R1:Z

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingSwipe;->G0()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 30
    .line 31
    aget v4, v2, v3

    .line 32
    .line 33
    sput v4, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 34
    .line 35
    aget v4, v2, v1

    .line 36
    .line 37
    sput v4, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    aget v5, v2, v4

    .line 41
    .line 42
    sput v5, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    aget v6, v2, v5

    .line 46
    .line 47
    sput v6, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    aget v2, v2, v6

    .line 51
    .line 52
    sput v2, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 55
    .line 56
    aget v6, v2, v3

    .line 57
    .line 58
    sput v6, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 59
    .line 60
    aget v6, v2, v1

    .line 61
    .line 62
    sput v6, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 63
    .line 64
    aget v6, v2, v4

    .line 65
    .line 66
    sput v6, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 67
    .line 68
    aget v2, v2, v5

    .line 69
    .line 70
    sput v2, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 71
    .line 72
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 73
    .line 74
    aget v6, v2, v3

    .line 75
    .line 76
    sput v6, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 77
    .line 78
    aget v1, v2, v1

    .line 79
    .line 80
    sput v1, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 81
    .line 82
    aget v1, v2, v4

    .line 83
    .line 84
    sput v1, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 85
    .line 86
    aget v1, v2, v5

    .line 87
    .line 88
    sput v1, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v2, "mLandAreaRight"

    .line 97
    .line 98
    const-string v4, "mLandAreaLeft"

    .line 99
    .line 100
    const-string v5, "mLandAreaBot"

    .line 101
    .line 102
    const-string v6, "mLandAreaTop"

    .line 103
    .line 104
    const-string v7, "mPortAreaRight"

    .line 105
    .line 106
    const-string v8, "mPortAreaLeft"

    .line 107
    .line 108
    const-string v9, "mPortAreaBot"

    .line 109
    .line 110
    const-string v10, "mPortAreaTop"

    .line 111
    .line 112
    const-string v11, "mGesCenter"

    .line 113
    .line 114
    const-string v12, "mGesRight"

    .line 115
    .line 116
    const-string v13, "mGesLeft"

    .line 117
    .line 118
    const-string v14, "mGesBot"

    .line 119
    .line 120
    const-string v15, "mGesTop"

    .line 121
    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    sget v3, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 125
    .line 126
    invoke-virtual {v1, v3, v15}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget v3, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 130
    .line 131
    invoke-virtual {v1, v3, v14}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget v3, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 135
    .line 136
    invoke-virtual {v1, v3, v13}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget v3, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 140
    .line 141
    invoke-virtual {v1, v3, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget v3, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 145
    .line 146
    invoke-virtual {v1, v3, v11}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget v3, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 150
    .line 151
    invoke-virtual {v1, v3, v10}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget v3, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 155
    .line 156
    invoke-virtual {v1, v3, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget v3, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 160
    .line 161
    invoke-virtual {v1, v3, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget v3, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 165
    .line 166
    invoke-virtual {v1, v3, v7}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget v3, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 170
    .line 171
    invoke-virtual {v1, v3, v6}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget v3, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 175
    .line 176
    invoke-virtual {v1, v3, v5}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sget v3, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 180
    .line 181
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget v3, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 185
    .line 186
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v1, v15}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v14}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v13}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v12}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v11}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v10}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v9}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v8}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 230
    .line 231
    .line 232
    :cond_3
    if-eqz p1, :cond_4

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_4
    const/4 v1, 0x0

    .line 239
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->R1:Z

    .line 240
    .line 241
    :cond_5
    :goto_1
    return-void
.end method

.method public final I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_0
    if-eqz p2, :cond_b

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 11
    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    if-eqz p1, :cond_6

    .line 22
    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    if-eqz p4, :cond_4

    .line 27
    .line 28
    sget p4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    if-ge p3, p4, :cond_3

    .line 31
    .line 32
    move p3, p4

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    if-le p3, p4, :cond_4

    .line 37
    .line 38
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 39
    .line 40
    aget-object p4, p4, v0

    .line 41
    .line 42
    if-eqz p4, :cond_4

    .line 43
    .line 44
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    .line 50
    add-int/2addr v0, p4

    .line 51
    iget p4, p0, Lcom/mycompany/app/setting/SettingSwipe;->C1:I

    .line 52
    .line 53
    sub-int/2addr v0, p4

    .line 54
    if-le p3, v0, :cond_4

    .line 55
    .line 56
    move p3, v0

    .line 57
    :cond_4
    :goto_0
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    if-ne p4, p3, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    :goto_1
    if-eqz p4, :cond_8

    .line 66
    .line 67
    sget p4, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 68
    .line 69
    if-ge p3, p4, :cond_7

    .line 70
    .line 71
    move p3, p4

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    .line 75
    if-le p3, p4, :cond_8

    .line 76
    .line 77
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 78
    .line 79
    aget-object p4, p4, v0

    .line 80
    .line 81
    if-eqz p4, :cond_8

    .line 82
    .line 83
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    .line 89
    add-int/2addr v0, p4

    .line 90
    iget p4, p0, Lcom/mycompany/app/setting/SettingSwipe;->C1:I

    .line 91
    .line 92
    sub-int/2addr v0, p4

    .line 93
    if-le p3, v0, :cond_8

    .line 94
    .line 95
    move p3, v0

    .line 96
    :cond_8
    :goto_2
    iget p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    .line 98
    if-ne p4, p3, :cond_9

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_9
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .line 103
    :goto_3
    if-eqz p5, :cond_a

    .line 104
    .line 105
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 106
    .line 107
    aput p3, p2, p1

    .line 108
    .line 109
    return v1

    .line 110
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 111
    .line 112
    aput p3, p2, p1

    .line 113
    .line 114
    return v1

    .line 115
    :cond_b
    :goto_4
    const/4 p1, 0x0

    .line 116
    return p1
.end method

.method public final J0(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v1, :cond_4

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    if-nez p2, :cond_2

    .line 15
    .line 16
    aget-object p1, v0, p1

    .line 17
    .line 18
    const-string p2, " P "

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    if-ne p2, v2, :cond_3

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    const-string p2, " T "

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    aget-object p1, v0, p1

    .line 35
    .line 36
    const-string p2, " X "

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    :goto_0
    if-nez p2, :cond_5

    .line 43
    .line 44
    aget-object p1, v0, p1

    .line 45
    .line 46
    const-string p2, "P"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    if-ne p2, v2, :cond_6

    .line 53
    .line 54
    aget-object p1, v0, p1

    .line 55
    .line 56
    const-string p2, "T"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_6
    aget-object p1, v0, p1

    .line 63
    .line 64
    const-string p2, "S"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->F0()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/setting/SettingSwipe$16;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingSwipe$16;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/setting/SettingSwipe$17;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingSwipe$17;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
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
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

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
    const/4 v2, 0x4

    .line 19
    if-eqz v1, :cond_12

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v1, v5, :cond_3

    .line 25
    .line 26
    if-eq v1, v4, :cond_5

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    :cond_2
    :goto_0
    move-object v1, p0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 38
    .line 39
    if-ltz v6, :cond_2

    .line 40
    .line 41
    array-length v7, v1

    .line 42
    if-lt v6, v7, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    aget-object v1, v1, v2

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 60
    .line 61
    if-ltz v1, :cond_2

    .line 62
    .line 63
    if-lt v1, v2, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->V1:F

    .line 71
    .line 72
    sub-float/2addr v1, v2

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->W1:F

    .line 78
    .line 79
    sub-float/2addr v2, v6

    .line 80
    iget-object v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    if-nez v6, :cond_d

    .line 83
    .line 84
    iget v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 85
    .line 86
    if-eqz v6, :cond_a

    .line 87
    .line 88
    if-ne v6, v5, :cond_7

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    sget v7, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 96
    .line 97
    int-to-float v7, v7

    .line 98
    cmpg-float v6, v6, v7

    .line 99
    .line 100
    if-gez v6, :cond_8

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    iget-object v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 104
    .line 105
    iget v7, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 106
    .line 107
    aget-object v6, v6, v7

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iput-object v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_9
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    .line 120
    iput v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->Z1:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_a
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    sget v7, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 128
    .line 129
    int-to-float v7, v7

    .line 130
    cmpg-float v6, v6, v7

    .line 131
    .line 132
    if-gez v6, :cond_b

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_b
    iget-object v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 136
    .line 137
    iget v7, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 138
    .line 139
    aget-object v6, v6, v7

    .line 140
    .line 141
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iput-object v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    if-nez v6, :cond_c

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_c
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    .line 152
    iput v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->a2:I

    .line 153
    .line 154
    :cond_d
    :goto_2
    iget v6, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 155
    .line 156
    if-nez v6, :cond_f

    .line 157
    .line 158
    iget v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->a2:I

    .line 159
    .line 160
    int-to-float v0, v0

    .line 161
    add-float/2addr v0, v2

    .line 162
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    :cond_e
    :goto_3
    move v4, v0

    .line 167
    goto :goto_4

    .line 168
    :cond_f
    if-ne v6, v5, :cond_10

    .line 169
    .line 170
    iget v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->a2:I

    .line 171
    .line 172
    int-to-float v0, v0

    .line 173
    sub-float/2addr v0, v2

    .line 174
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    goto :goto_3

    .line 179
    :cond_10
    if-ne v6, v4, :cond_11

    .line 180
    .line 181
    iget v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->Z1:I

    .line 182
    .line 183
    int-to-float v0, v0

    .line 184
    add-float/2addr v0, v1

    .line 185
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    goto :goto_3

    .line 190
    :cond_11
    if-ne v6, v3, :cond_e

    .line 191
    .line 192
    iget v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->Z1:I

    .line 193
    .line 194
    int-to-float v0, v0

    .line 195
    sub-float/2addr v0, v1

    .line 196
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    goto :goto_3

    .line 201
    :goto_4
    iget v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 202
    .line 203
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    const/4 v5, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    move-object v1, p0

    .line 211
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_15

    .line 216
    .line 217
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 218
    .line 219
    iget v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 220
    .line 221
    aget-object v0, v0, v2

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_12
    move-object v1, p0

    .line 228
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 229
    .line 230
    if-nez v3, :cond_13

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    iput v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->V1:F

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iput v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->W1:F

    .line 244
    .line 245
    const/4 v3, -0x1

    .line 246
    iput v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->Y1:Landroid/view/ViewGroup$LayoutParams;

    .line 250
    .line 251
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 252
    .line 253
    array-length v3, v3

    .line 254
    move v4, v0

    .line 255
    :goto_5
    if-ge v4, v3, :cond_15

    .line 256
    .line 257
    iget-object v5, v1, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 258
    .line 259
    aget-object v5, v5, v4

    .line 260
    .line 261
    iget v6, v1, Lcom/mycompany/app/setting/SettingSwipe;->V1:F

    .line 262
    .line 263
    float-to-int v6, v6

    .line 264
    iget v7, v1, Lcom/mycompany/app/setting/SettingSwipe;->W1:F

    .line 265
    .line 266
    float-to-int v7, v7

    .line 267
    sget v8, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 268
    .line 269
    invoke-static {v6, v7, v8, v5}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_14

    .line 274
    .line 275
    iput v4, v1, Lcom/mycompany/app/setting/SettingSwipe;->X1:I

    .line 276
    .line 277
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 278
    .line 279
    aget-object v2, v3, v2

    .line 280
    .line 281
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    return p1
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->R1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->G0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->K0()V

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v4, p0

    .line 14
    goto :goto_3

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    move v5, v1

    .line 37
    :goto_1
    const/4 v2, 0x5

    .line 38
    if-ge v5, v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    if-ge v5, v2, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    aget-object v2, v2, v5

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 54
    .line 55
    aget v7, v2, v5

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x1

    .line 59
    move-object v4, p0

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object v4, p0

    .line 65
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 66
    .line 67
    aget v7, v2, v5

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v4, p0

    .line 76
    :goto_2
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 77
    .line 78
    aget v2, v2, v5

    .line 79
    .line 80
    invoke-virtual {p0, v5, v2}, Lcom/mycompany/app/setting/SettingSwipe;->J0(II)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    const/4 v0, 0x1

    .line 87
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 98
    .line 99
    iget-boolean p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->b2:Z

    .line 100
    .line 101
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 102
    .line 103
    if-ne p1, v0, :cond_5

    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_5
    iput-boolean v0, v4, Lcom/mycompany/app/setting/SettingSwipe;->b2:Z

    .line 108
    .line 109
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 110
    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 120
    .line 121
    const/high16 v3, -0x1000000

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    move v2, v3

    .line 126
    goto :goto_4

    .line 127
    :cond_7
    const v2, -0x70708

    .line 128
    .line 129
    .line 130
    :goto_4
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 131
    .line 132
    .line 133
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 134
    .line 135
    const v0, -0x50506

    .line 136
    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 141
    .line 142
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 167
    .line 168
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_20:I

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 174
    .line 175
    const v2, -0xdededf

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    const v2, -0xc0c0c1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 195
    .line 196
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 197
    .line 198
    .line 199
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 206
    .line 207
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 208
    .line 209
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 210
    .line 211
    .line 212
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 213
    .line 214
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 218
    .line 219
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 220
    .line 221
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 222
    .line 223
    .line 224
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 225
    .line 226
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 227
    .line 228
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 232
    .line 233
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_20:I

    .line 234
    .line 235
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 236
    .line 237
    .line 238
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 239
    .line 240
    const/4 v2, -0x1

    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 245
    .line 246
    const/high16 v2, 0x21000000

    .line 247
    .line 248
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 252
    .line 253
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 259
    .line 260
    .line 261
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 262
    .line 263
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 264
    .line 265
    .line 266
    :goto_5
    iget-object p1, v4, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 267
    .line 268
    if-nez p1, :cond_9

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_9
    array-length p1, p1

    .line 272
    :goto_6
    if-ge v1, p1, :cond_b

    .line 273
    .line 274
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 275
    .line 276
    if-eqz v2, :cond_a

    .line 277
    .line 278
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 279
    .line 280
    aget-object v2, v2, v1

    .line 281
    .line 282
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 286
    .line 287
    aget-object v2, v2, v1

    .line 288
    .line 289
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 290
    .line 291
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    .line 293
    .line 294
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 295
    .line 296
    aget-object v2, v2, v1

    .line 297
    .line 298
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_a
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 303
    .line 304
    aget-object v2, v2, v1

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 310
    .line 311
    aget-object v2, v2, v1

    .line 312
    .line 313
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 314
    .line 315
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v4, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 319
    .line 320
    aget-object v2, v2, v1

    .line 321
    .line 322
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_b
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .line 330
    .line 331
    :catch_0
    :goto_8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 31

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
    iput v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->C1:I

    .line 15
    .line 16
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->b2:Z

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    new-array v4, v2, [I

    .line 22
    .line 23
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 24
    .line 25
    sget v5, Lcom/mycompany/app/pref/PrefZone;->K:I

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    aput v5, v4, v6

    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/pref/PrefZone;->L:I

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    aput v5, v4, v7

    .line 34
    .line 35
    sget v5, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 36
    .line 37
    aput v5, v4, v3

    .line 38
    .line 39
    sget v5, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    aput v5, v4, v8

    .line 43
    .line 44
    sget v5, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 45
    .line 46
    aput v5, v4, v1

    .line 47
    .line 48
    new-array v4, v1, [I

    .line 49
    .line 50
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 51
    .line 52
    sget v5, Lcom/mycompany/app/pref/PrefZone;->P:I

    .line 53
    .line 54
    aput v5, v4, v6

    .line 55
    .line 56
    sget v5, Lcom/mycompany/app/pref/PrefZone;->Q:I

    .line 57
    .line 58
    aput v5, v4, v7

    .line 59
    .line 60
    sget v5, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 61
    .line 62
    aput v5, v4, v3

    .line 63
    .line 64
    sget v5, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 65
    .line 66
    aput v5, v4, v8

    .line 67
    .line 68
    new-array v4, v1, [I

    .line 69
    .line 70
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 71
    .line 72
    sget v5, Lcom/mycompany/app/pref/PrefZone;->T:I

    .line 73
    .line 74
    aput v5, v4, v6

    .line 75
    .line 76
    sget v5, Lcom/mycompany/app/pref/PrefZone;->U:I

    .line 77
    .line 78
    aput v5, v4, v7

    .line 79
    .line 80
    sget v5, Lcom/mycompany/app/pref/PrefZone;->V:I

    .line 81
    .line 82
    aput v5, v4, v3

    .line 83
    .line 84
    sget v5, Lcom/mycompany/app/pref/PrefZone;->W:I

    .line 85
    .line 86
    aput v5, v4, v8

    .line 87
    .line 88
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 89
    .line 90
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 91
    .line 92
    sget v9, Lnet/kaki87/soul2/testing/R$id;->set_icon_help:I

    .line 93
    .line 94
    sget v10, Lnet/kaki87/soul2/testing/R$id;->area_view_1:I

    .line 95
    .line 96
    sget v11, Lnet/kaki87/soul2/testing/R$id;->area_view_2:I

    .line 97
    .line 98
    sget v12, Lnet/kaki87/soul2/testing/R$id;->area_view_3:I

    .line 99
    .line 100
    sget v13, Lnet/kaki87/soul2/testing/R$id;->area_view_4:I

    .line 101
    .line 102
    sget v14, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 103
    .line 104
    sget v15, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 105
    .line 106
    new-instance v2, Lcom/mycompany/app/view/MyMainRelative;

    .line 107
    .line 108
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 112
    .line 113
    const/4 v3, -0x1

    .line 114
    invoke-direct {v8, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    new-instance v8, Lcom/mycompany/app/view/MyHeaderView;

    .line 121
    .line 122
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 126
    .line 127
    invoke-virtual {v2, v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    .line 129
    .line 130
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 136
    .line 137
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .line 142
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 143
    .line 144
    move/from16 v21, v13

    .line 145
    .line 146
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 147
    .line 148
    invoke-direct {v3, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 152
    .line 153
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-direct {v3, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    .line 164
    .line 165
    const/16 v7, 0x10

    .line 166
    .line 167
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    .line 169
    .line 170
    const/4 v13, 0x1

    .line 171
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v22, v6

    .line 175
    .line 176
    const/high16 v6, 0x41900000    # 18.0f

    .line 177
    .line 178
    move/from16 v23, v12

    .line 179
    .line 180
    const/4 v12, -0x1

    .line 181
    invoke-static {v3, v13, v6, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    .line 187
    .line 188
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 189
    .line 190
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    const/high16 v6, 0x41600000    # 14.0f

    .line 197
    .line 198
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    float-to-int v6, v6

    .line 203
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v4}, Landroid/view/View;->setId(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    .line 216
    .line 217
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .line 219
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 220
    .line 221
    invoke-direct {v4, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    .line 226
    .line 227
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 228
    .line 229
    iput v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 230
    .line 231
    invoke-virtual {v8, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    .line 247
    .line 248
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .line 250
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 251
    .line 252
    invoke-direct {v5, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    .line 257
    .line 258
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 259
    .line 260
    iput v13, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 261
    .line 262
    invoke-virtual {v8, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 266
    .line 267
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 277
    .line 278
    .line 279
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 280
    .line 281
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 282
    .line 283
    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 287
    .line 288
    .line 289
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 290
    .line 291
    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    .line 293
    invoke-virtual {v8, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    new-instance v6, Landroid/widget/FrameLayout;

    .line 297
    .line 298
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v14}, Landroid/view/View;->setId(I)V

    .line 302
    .line 303
    .line 304
    const/4 v9, 0x4

    .line 305
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 309
    .line 310
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 311
    .line 312
    const/4 v14, -0x2

    .line 313
    invoke-direct {v9, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 314
    .line 315
    .line 316
    const/16 v13, 0x15

    .line 317
    .line 318
    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v8, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .line 323
    .line 324
    new-instance v8, Lcom/mycompany/app/view/MyRoundItem;

    .line 325
    .line 326
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    const/4 v9, 0x1

    .line 330
    invoke-virtual {v8, v9, v9}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 331
    .line 332
    .line 333
    const/4 v9, 0x0

    .line 334
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 335
    .line 336
    .line 337
    const/4 v7, 0x2

    .line 338
    const/4 v13, -0x1

    .line 339
    invoke-static {v13, v13, v7, v15}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    .line 341
    .line 342
    move-result-object v14

    .line 343
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 344
    .line 345
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    .line 347
    invoke-virtual {v2, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 351
    .line 352
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v8, v7, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 362
    .line 363
    .line 364
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 365
    .line 366
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    const/16 v13, 0x11

    .line 370
    .line 371
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 372
    .line 373
    .line 374
    const/high16 v14, 0x41a00000    # 20.0f

    .line 375
    .line 376
    const/4 v13, 0x1

    .line 377
    invoke-virtual {v9, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 378
    .line 379
    .line 380
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .line 382
    const/4 v14, -0x2

    .line 383
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 384
    .line 385
    .line 386
    const/16 v14, 0x11

    .line 387
    .line 388
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    .line 390
    invoke-virtual {v7, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    new-instance v13, Lcom/mycompany/app/view/MyLineFrame;

    .line 394
    .line 395
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v13, v11}, Landroid/view/View;->setId(I)V

    .line 399
    .line 400
    .line 401
    const/4 v14, 0x0

    .line 402
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 403
    .line 404
    .line 405
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .line 407
    move-object/from16 v25, v7

    .line 408
    .line 409
    const/4 v7, -0x1

    .line 410
    invoke-direct {v14, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 411
    .line 412
    .line 413
    const/16 v7, 0xc

    .line 414
    .line 415
    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v8, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 422
    .line 423
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 424
    .line 425
    .line 426
    const/16 v7, 0x11

    .line 427
    .line 428
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    .line 430
    .line 431
    move-object/from16 v26, v9

    .line 432
    .line 433
    const/4 v7, 0x1

    .line 434
    const/high16 v9, 0x41a00000    # 20.0f

    .line 435
    .line 436
    invoke-virtual {v14, v7, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 437
    .line 438
    .line 439
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 440
    .line 441
    const/4 v9, -0x2

    .line 442
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 443
    .line 444
    .line 445
    const/16 v9, 0x11

    .line 446
    .line 447
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 448
    .line 449
    invoke-virtual {v13, v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    .line 451
    .line 452
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 453
    .line 454
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 455
    .line 456
    .line 457
    move/from16 v9, v23

    .line 458
    .line 459
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyLineFrame;->c()V

    .line 463
    .line 464
    .line 465
    move-object/from16 v28, v6

    .line 466
    .line 467
    move-object/from16 v23, v13

    .line 468
    .line 469
    move-object/from16 v27, v14

    .line 470
    .line 471
    const/4 v13, 0x3

    .line 472
    const/4 v14, -0x1

    .line 473
    invoke-static {v14, v14, v13, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    const/4 v13, 0x2

    .line 478
    invoke-virtual {v6, v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v8, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    .line 483
    .line 484
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 485
    .line 486
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    const/16 v14, 0x11

    .line 490
    .line 491
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 492
    .line 493
    .line 494
    const/4 v13, 0x1

    .line 495
    const/high16 v14, 0x41a00000    # 20.0f

    .line 496
    .line 497
    invoke-virtual {v6, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 498
    .line 499
    .line 500
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 501
    .line 502
    const/4 v14, -0x2

    .line 503
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 504
    .line 505
    .line 506
    const/16 v14, 0x11

    .line 507
    .line 508
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 509
    .line 510
    invoke-virtual {v7, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    .line 512
    .line 513
    new-instance v13, Lcom/mycompany/app/view/MyLineFrame;

    .line 514
    .line 515
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 516
    .line 517
    .line 518
    move/from16 v14, v21

    .line 519
    .line 520
    invoke-virtual {v13, v14}, Landroid/view/View;->setId(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v13}, Lcom/mycompany/app/view/MyLineFrame;->b()V

    .line 524
    .line 525
    .line 526
    move-object/from16 v30, v5

    .line 527
    .line 528
    move-object/from16 v21, v6

    .line 529
    .line 530
    move-object/from16 v29, v7

    .line 531
    .line 532
    const/4 v6, 0x3

    .line 533
    const/4 v7, -0x1

    .line 534
    invoke-static {v7, v7, v6, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    const/4 v7, 0x2

    .line 539
    invoke-virtual {v5, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 540
    .line 541
    .line 542
    const/16 v6, 0x15

    .line 543
    .line 544
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 545
    .line 546
    .line 547
    const/16 v6, 0x12

    .line 548
    .line 549
    invoke-virtual {v5, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    .line 554
    .line 555
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 556
    .line 557
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 558
    .line 559
    .line 560
    const/16 v7, 0x11

    .line 561
    .line 562
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 563
    .line 564
    .line 565
    const/4 v6, 0x1

    .line 566
    const/high16 v7, 0x41a00000    # 20.0f

    .line 567
    .line 568
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 569
    .line 570
    .line 571
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 572
    .line 573
    const/4 v7, -0x2

    .line 574
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 575
    .line 576
    .line 577
    const/16 v7, 0x11

    .line 578
    .line 579
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 580
    .line 581
    invoke-virtual {v13, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    .line 583
    .line 584
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 585
    .line 586
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v24, v5

    .line 590
    .line 591
    const/4 v5, -0x1

    .line 592
    const/4 v7, 0x3

    .line 593
    invoke-static {v5, v5, v7, v10}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    const/4 v7, 0x2

    .line 598
    invoke-virtual {v10, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 599
    .line 600
    .line 601
    const/16 v7, 0x11

    .line 602
    .line 603
    invoke-virtual {v10, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 604
    .line 605
    .line 606
    const/16 v5, 0x10

    .line 607
    .line 608
    invoke-virtual {v10, v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v8, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    .line 613
    .line 614
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 615
    .line 616
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 620
    .line 621
    .line 622
    const/4 v9, 0x1

    .line 623
    const/high16 v14, 0x41a00000    # 20.0f

    .line 624
    .line 625
    invoke-virtual {v5, v9, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 626
    .line 627
    .line 628
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 629
    .line 630
    const/4 v14, -0x2

    .line 631
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 632
    .line 633
    .line 634
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 635
    .line 636
    invoke-virtual {v6, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    .line 638
    .line 639
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 640
    .line 641
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 645
    .line 646
    .line 647
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 648
    .line 649
    int-to-float v9, v9

    .line 650
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 651
    .line 652
    .line 653
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 654
    .line 655
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 656
    .line 657
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 658
    .line 659
    .line 660
    const/16 v10, 0x31

    .line 661
    .line 662
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 663
    .line 664
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 665
    .line 666
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 667
    .line 668
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    .line 670
    .line 671
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 672
    .line 673
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 677
    .line 678
    .line 679
    sget v10, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 680
    .line 681
    int-to-float v10, v10

    .line 682
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 683
    .line 684
    .line 685
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 686
    .line 687
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 688
    .line 689
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 690
    .line 691
    .line 692
    const/16 v11, 0x51

    .line 693
    .line 694
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 695
    .line 696
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 697
    .line 698
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 699
    .line 700
    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    .line 702
    .line 703
    new-instance v10, Lcom/mycompany/app/view/MyRoundImage;

    .line 704
    .line 705
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 709
    .line 710
    .line 711
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 712
    .line 713
    int-to-float v11, v11

    .line 714
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 715
    .line 716
    .line 717
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 718
    .line 719
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 720
    .line 721
    invoke-direct {v11, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 722
    .line 723
    .line 724
    const v14, 0x800013

    .line 725
    .line 726
    .line 727
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 728
    .line 729
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 730
    .line 731
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    .line 736
    .line 737
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    .line 738
    .line 739
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 743
    .line 744
    .line 745
    sget v1, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 746
    .line 747
    int-to-float v1, v1

    .line 748
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 749
    .line 750
    .line 751
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 752
    .line 753
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 754
    .line 755
    invoke-direct {v1, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 756
    .line 757
    .line 758
    const v14, 0x800015

    .line 759
    .line 760
    .line 761
    iput v14, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 762
    .line 763
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 764
    .line 765
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v6, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    .line 770
    .line 771
    new-instance v1, Landroid/widget/FrameLayout;

    .line 772
    .line 773
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v15}, Landroid/view/View;->setId(I)V

    .line 777
    .line 778
    .line 779
    const/16 v14, 0x8

    .line 780
    .line 781
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 782
    .line 783
    .line 784
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 785
    .line 786
    move-object/from16 v19, v5

    .line 787
    .line 788
    const/4 v5, -0x2

    .line 789
    const/4 v15, -0x1

    .line 790
    invoke-direct {v14, v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 791
    .line 792
    .line 793
    const/16 v5, 0xc

    .line 794
    .line 795
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2, v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    .line 800
    .line 801
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 802
    .line 803
    move-object/from16 v5, v22

    .line 804
    .line 805
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 806
    .line 807
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 808
    .line 809
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 810
    .line 811
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 812
    .line 813
    move-object/from16 v3, v30

    .line 814
    .line 815
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 816
    .line 817
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 818
    .line 819
    const/4 v3, 0x5

    .line 820
    new-array v4, v3, [Lcom/mycompany/app/view/MyLineFrame;

    .line 821
    .line 822
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 823
    .line 824
    new-array v3, v3, [Lcom/mycompany/app/view/MyLineText;

    .line 825
    .line 826
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 827
    .line 828
    const/4 v5, 0x4

    .line 829
    new-array v8, v5, [Lcom/mycompany/app/view/MyRoundImage;

    .line 830
    .line 831
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 832
    .line 833
    const/16 v18, 0x0

    .line 834
    .line 835
    aput-object v25, v4, v18

    .line 836
    .line 837
    const/16 v20, 0x1

    .line 838
    .line 839
    aput-object v23, v4, v20

    .line 840
    .line 841
    const/16 v17, 0x2

    .line 842
    .line 843
    aput-object v29, v4, v17

    .line 844
    .line 845
    const/16 v16, 0x3

    .line 846
    .line 847
    aput-object v13, v4, v16

    .line 848
    .line 849
    aput-object v6, v4, v5

    .line 850
    .line 851
    aput-object v26, v3, v18

    .line 852
    .line 853
    aput-object v27, v3, v20

    .line 854
    .line 855
    aput-object v21, v3, v17

    .line 856
    .line 857
    aput-object v24, v3, v16

    .line 858
    .line 859
    aput-object v19, v3, v5

    .line 860
    .line 861
    aput-object v7, v8, v18

    .line 862
    .line 863
    aput-object v9, v8, v20

    .line 864
    .line 865
    aput-object v10, v8, v17

    .line 866
    .line 867
    aput-object v11, v8, v16

    .line 868
    .line 869
    move-object/from16 v3, v28

    .line 870
    .line 871
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 886
    .line 887
    .line 888
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 889
    .line 890
    if-nez v1, :cond_0

    .line 891
    .line 892
    return-void

    .line 893
    :cond_0
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$1;

    .line 894
    .line 895
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$1;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->c2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 58
    .line 59
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 74
    .line 75
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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->E0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->F0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingSwipe;->D0()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingSwipe;->N1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

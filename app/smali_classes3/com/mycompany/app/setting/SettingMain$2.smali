.class Lcom/mycompany/app/setting/SettingMain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$2;->a:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_f

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMain$2;->a:Lcom/mycompany/app/setting/SettingMain;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->q2:Z

    .line 12
    .line 13
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingActivity;->H0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingMain$2$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingMain$2$1;-><init>(Lcom/mycompany/app/setting/SettingMain$2;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->t2:Z

    .line 36
    .line 37
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 38
    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    iget v0, p1, Lcom/mycompany/app/setting/SettingMain;->u2:I

    .line 42
    .line 43
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 44
    .line 45
    if-eq v0, v1, :cond_4

    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 52
    .line 53
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g7(Landroid/view/Window;IZ)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v0, p1, Lcom/mycompany/app/setting/SettingMain;->v2:I

    .line 59
    .line 60
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-eq v0, v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainActivity;->q0(Z)V

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMain;->Q0()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->I0(IZ)V

    .line 77
    .line 78
    .line 79
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->r2:Z

    .line 80
    .line 81
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 82
    .line 83
    if-ne v0, v3, :cond_6

    .line 84
    .line 85
    iget v0, p1, Lcom/mycompany/app/setting/SettingMain;->s2:I

    .line 86
    .line 87
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 88
    .line 89
    if-eq v0, v3, :cond_8

    .line 90
    .line 91
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 92
    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    new-instance v3, Lcom/mycompany/app/setting/SettingMain$2$2;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_8
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->w2:Z

    .line 105
    .line 106
    sget-boolean v3, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 107
    .line 108
    if-eq v0, v3, :cond_9

    .line 109
    .line 110
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 111
    .line 112
    .line 113
    :cond_9
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->x2:Z

    .line 114
    .line 115
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 116
    .line 117
    if-eq v0, v3, :cond_a

    .line 118
    .line 119
    iput-boolean v3, p1, Lcom/mycompany/app/setting/SettingMain;->x2:Z

    .line 120
    .line 121
    iput-boolean v2, p1, Lcom/mycompany/app/setting/SettingMain;->Y1:Z

    .line 122
    .line 123
    iput-boolean v2, p1, Lcom/mycompany/app/setting/SettingMain;->Z1:Z

    .line 124
    .line 125
    :cond_a
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->y2:Z

    .line 126
    .line 127
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 128
    .line 129
    if-eq v0, v3, :cond_b

    .line 130
    .line 131
    iput-boolean v3, p1, Lcom/mycompany/app/setting/SettingMain;->y2:Z

    .line 132
    .line 133
    iput-boolean v2, p1, Lcom/mycompany/app/setting/SettingMain;->Y1:Z

    .line 134
    .line 135
    :cond_b
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->z2:Z

    .line 136
    .line 137
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 138
    .line 139
    if-eq v0, v2, :cond_c

    .line 140
    .line 141
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->W4(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v2, "net.kaki87.soul2.testing.ACTION_BACK_STOP"

    .line 149
    .line 150
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .line 162
    .line 163
    :cond_c
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->A2:Z

    .line 164
    .line 165
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 166
    .line 167
    if-eq v0, v2, :cond_f

    .line 168
    .line 169
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 170
    .line 171
    if-eqz v0, :cond_f

    .line 172
    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    iget-object v0, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 176
    .line 177
    const/4 v3, 0x5

    .line 178
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_d

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_d
    move v1, v2

    .line 186
    :goto_1
    if-eqz v1, :cond_e

    .line 187
    .line 188
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->d8(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_e
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 195
    .line 196
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    :cond_f
    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 11

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMain$2;->a:Lcom/mycompany/app/setting/SettingMain;

    .line 4
    .line 5
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->q2:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 8
    .line 9
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->r2:Z

    .line 10
    .line 11
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 12
    .line 13
    iput v0, v1, Lcom/mycompany/app/setting/SettingMain;->s2:I

    .line 14
    .line 15
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 16
    .line 17
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->t2:Z

    .line 18
    .line 19
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->o:I

    .line 20
    .line 21
    iput v0, v1, Lcom/mycompany/app/setting/SettingMain;->u2:I

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->m:I

    .line 24
    .line 25
    iput v0, v1, Lcom/mycompany/app/setting/SettingMain;->v2:I

    .line 26
    .line 27
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->t:Z

    .line 28
    .line 29
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->w2:Z

    .line 30
    .line 31
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 32
    .line 33
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->x2:Z

    .line 34
    .line 35
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 36
    .line 37
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->y2:Z

    .line 38
    .line 39
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 40
    .line 41
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->z2:Z

    .line 42
    .line 43
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 44
    .line 45
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingMain;->A2:Z

    .line 46
    .line 47
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2c

    .line 53
    .line 54
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingAdvanced;->O0(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    return v3

    .line 65
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingClean;->P0(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v3, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    move v3, v5

    .line 78
    :goto_1
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    return v3

    .line 85
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingCustom;->O0(Landroid/content/Context;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    move v3, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_6
    :goto_2
    move v3, v5

    .line 97
    :goto_3
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_7

    .line 102
    .line 103
    return v3

    .line 104
    :cond_7
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingDisplay;->P0(Landroid/content/Context;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_9

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_8
    move v3, v2

    .line 114
    goto :goto_5

    .line 115
    :cond_9
    :goto_4
    move v3, v5

    .line 116
    :goto_5
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_a

    .line 121
    .line 122
    return v3

    .line 123
    :cond_a
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingDown;->O0(Landroid/content/Context;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_c

    .line 128
    .line 129
    if-eqz v3, :cond_b

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_b
    move v3, v2

    .line 133
    goto :goto_7

    .line 134
    :cond_c
    :goto_6
    move v3, v5

    .line 135
    :goto_7
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_d

    .line 140
    .line 141
    return v3

    .line 142
    :cond_d
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingGeneral;->P0(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_f

    .line 147
    .line 148
    if-eqz v3, :cond_e

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_e
    move v3, v2

    .line 152
    goto :goto_9

    .line 153
    :cond_f
    :goto_8
    move v3, v5

    .line 154
    :goto_9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_10

    .line 159
    .line 160
    return v3

    .line 161
    :cond_10
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingGesture;->P0(Landroid/content/Context;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_12

    .line 166
    .line 167
    if-eqz v3, :cond_11

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_11
    move v3, v2

    .line 171
    goto :goto_b

    .line 172
    :cond_12
    :goto_a
    move v3, v5

    .line 173
    :goto_b
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_13

    .line 178
    .line 179
    return v3

    .line 180
    :cond_13
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingImage;->O0(Landroid/content/Context;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_15

    .line 185
    .line 186
    if-eqz v3, :cond_14

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_14
    move v3, v2

    .line 190
    goto :goto_d

    .line 191
    :cond_15
    :goto_c
    move v3, v5

    .line 192
    :goto_d
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_16

    .line 197
    .line 198
    return v3

    .line 199
    :cond_16
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingMedia;->O0(Landroid/content/Context;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_18

    .line 204
    .line 205
    if-eqz v3, :cond_17

    .line 206
    .line 207
    goto :goto_e

    .line 208
    :cond_17
    move v3, v2

    .line 209
    goto :goto_f

    .line 210
    :cond_18
    :goto_e
    move v3, v5

    .line 211
    :goto_f
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_19

    .line 216
    .line 217
    return v3

    .line 218
    :cond_19
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingMemory;->P0(Landroid/content/Context;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_1b

    .line 223
    .line 224
    if-eqz v3, :cond_1a

    .line 225
    .line 226
    goto :goto_10

    .line 227
    :cond_1a
    move v3, v2

    .line 228
    goto :goto_11

    .line 229
    :cond_1b
    :goto_10
    move v3, v5

    .line 230
    :goto_11
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_1c

    .line 235
    .line 236
    return v3

    .line 237
    :cond_1c
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingNews;->P0(Landroid/content/Context;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_1e

    .line 242
    .line 243
    if-eqz v3, :cond_1d

    .line 244
    .line 245
    goto :goto_12

    .line 246
    :cond_1d
    move v3, v2

    .line 247
    goto :goto_13

    .line 248
    :cond_1e
    :goto_12
    move v3, v5

    .line 249
    :goto_13
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_1f

    .line 254
    .line 255
    return v3

    .line 256
    :cond_1f
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingPassword;->O0(Landroid/content/Context;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-nez v4, :cond_21

    .line 261
    .line 262
    if-eqz v3, :cond_20

    .line 263
    .line 264
    goto :goto_14

    .line 265
    :cond_20
    move v3, v2

    .line 266
    goto :goto_15

    .line 267
    :cond_21
    :goto_14
    move v3, v5

    .line 268
    :goto_15
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_22

    .line 273
    .line 274
    return v3

    .line 275
    :cond_22
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingPrivacy;->O0(Landroid/content/Context;)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-nez v4, :cond_24

    .line 280
    .line 281
    if-eqz v3, :cond_23

    .line 282
    .line 283
    goto :goto_16

    .line 284
    :cond_23
    move v3, v2

    .line 285
    goto :goto_17

    .line 286
    :cond_24
    :goto_16
    move v3, v5

    .line 287
    :goto_17
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_25

    .line 292
    .line 293
    return v3

    .line 294
    :cond_25
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingQuick;->O0(Landroid/content/Context;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-nez v4, :cond_27

    .line 299
    .line 300
    if-eqz v3, :cond_26

    .line 301
    .line 302
    goto :goto_18

    .line 303
    :cond_26
    move v3, v2

    .line 304
    goto :goto_19

    .line 305
    :cond_27
    :goto_18
    move v3, v5

    .line 306
    :goto_19
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_28

    .line 311
    .line 312
    goto/16 :goto_1c

    .line 313
    .line 314
    :cond_28
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    sget-object v6, Lcom/mycompany/app/pref/PrefMain;->D:Ljava/lang/String;

    .line 319
    .line 320
    const-string v7, "63,1,31,35"

    .line 321
    .line 322
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-nez v6, :cond_29

    .line 327
    .line 328
    sput-object v7, Lcom/mycompany/app/pref/PrefMain;->D:Ljava/lang/String;

    .line 329
    .line 330
    const-string v6, "mTopItems"

    .line 331
    .line 332
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    move v6, v5

    .line 336
    goto :goto_1a

    .line 337
    :cond_29
    move v6, v2

    .line 338
    :goto_1a
    sget-object v7, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 339
    .line 340
    const-string v8, "26,27,28,29,30,2"

    .line 341
    .line 342
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-nez v7, :cond_2a

    .line 347
    .line 348
    sput-object v8, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 349
    .line 350
    const-string v6, "mBotItems"

    .line 351
    .line 352
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    move v6, v5

    .line 356
    :cond_2a
    sget-object v7, Lcom/mycompany/app/pref/PrefMain;->F:Ljava/lang/String;

    .line 357
    .line 358
    const-string v8, "3,3,44,45,70,65"

    .line 359
    .line 360
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-nez v7, :cond_2b

    .line 365
    .line 366
    sput-object v8, Lcom/mycompany/app/pref/PrefMain;->F:Ljava/lang/String;

    .line 367
    .line 368
    const-string v6, "mBotLongs"

    .line 369
    .line 370
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    move v6, v5

    .line 374
    :cond_2b
    sget-object v7, Lcom/mycompany/app/pref/PrefMain;->G:Ljava/lang/String;

    .line 375
    .line 376
    const-string v8, "0,0,0,0,0,0"

    .line 377
    .line 378
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-nez v7, :cond_2c

    .line 383
    .line 384
    sput-object v8, Lcom/mycompany/app/pref/PrefMain;->G:Ljava/lang/String;

    .line 385
    .line 386
    const-string v6, "mBotSwipe"

    .line 387
    .line 388
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    move v6, v5

    .line 392
    :cond_2c
    if-eqz v6, :cond_2d

    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 395
    .line 396
    .line 397
    :cond_2d
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 398
    .line 399
    const/4 v6, 0x7

    .line 400
    if-eqz v4, :cond_2e

    .line 401
    .line 402
    sput-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 403
    .line 404
    const-string v4, "mTopToBot"

    .line 405
    .line 406
    invoke-static {v0, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :cond_2e
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 410
    .line 411
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 412
    .line 413
    if-eq v4, v7, :cond_2f

    .line 414
    .line 415
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 416
    .line 417
    const-string v4, "mTopHeight"

    .line 418
    .line 419
    invoke-static {v0, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :cond_2f
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 423
    .line 424
    if-eqz v4, :cond_30

    .line 425
    .line 426
    sput v2, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 427
    .line 428
    const-string v4, "mBotAlpha"

    .line 429
    .line 430
    invoke-static {v0, v5, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_30
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 434
    .line 435
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 436
    .line 437
    if-eq v4, v7, :cond_31

    .line 438
    .line 439
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 440
    .line 441
    const-string v4, "mBotHeight"

    .line 442
    .line 443
    invoke-static {v0, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_31
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-eqz v4, :cond_32

    .line 451
    .line 452
    goto :goto_1c

    .line 453
    :cond_32
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    sget-object v7, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 458
    .line 459
    const-string v8, "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,74,33,40"

    .line 460
    .line 461
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    if-nez v7, :cond_33

    .line 466
    .line 467
    sput-object v8, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 468
    .line 469
    const-string v7, "mMenuItems"

    .line 470
    .line 471
    invoke-virtual {v4, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    move v7, v5

    .line 475
    goto :goto_1b

    .line 476
    :cond_33
    move v7, v2

    .line 477
    :goto_1b
    sget-object v8, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 478
    .line 479
    const-string v9, "21,22,23,24,25"

    .line 480
    .line 481
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-nez v8, :cond_34

    .line 486
    .line 487
    sput-object v9, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 488
    .line 489
    const-string v7, "mMidItems"

    .line 490
    .line 491
    invoke-virtual {v4, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    move v7, v5

    .line 495
    :cond_34
    sget v8, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 496
    .line 497
    const/4 v9, 0x5

    .line 498
    if-eq v8, v9, :cond_35

    .line 499
    .line 500
    sput v9, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 501
    .line 502
    const-string v7, "mMenuPort"

    .line 503
    .line 504
    invoke-virtual {v4, v7}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    move v7, v5

    .line 508
    :cond_35
    if-eqz v7, :cond_36

    .line 509
    .line 510
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 511
    .line 512
    .line 513
    :cond_36
    sget v4, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 514
    .line 515
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 516
    .line 517
    if-eq v4, v7, :cond_37

    .line 518
    .line 519
    sput v7, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 520
    .line 521
    const-string v4, "mMidHeight"

    .line 522
    .line 523
    invoke-static {v0, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :cond_37
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    if-eqz v4, :cond_38

    .line 531
    .line 532
    :goto_1c
    return v3

    .line 533
    :cond_38
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingSecret;->O0(Landroid/content/Context;)Z

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    if-nez v4, :cond_3a

    .line 538
    .line 539
    if-eqz v3, :cond_39

    .line 540
    .line 541
    goto :goto_1d

    .line 542
    :cond_39
    move v3, v2

    .line 543
    goto :goto_1e

    .line 544
    :cond_3a
    :goto_1d
    move v3, v5

    .line 545
    :goto_1e
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-eqz v4, :cond_3b

    .line 550
    .line 551
    return v3

    .line 552
    :cond_3b
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingSecure;->O0(Landroid/content/Context;)Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-nez v4, :cond_3d

    .line 557
    .line 558
    if-eqz v3, :cond_3c

    .line 559
    .line 560
    goto :goto_1f

    .line 561
    :cond_3c
    move v3, v2

    .line 562
    goto :goto_20

    .line 563
    :cond_3d
    :goto_1f
    move v3, v5

    .line 564
    :goto_20
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-eqz v4, :cond_3e

    .line 569
    .line 570
    return v3

    .line 571
    :cond_3e
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingSite;->O0(Landroid/content/Context;)Z

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-nez v4, :cond_40

    .line 576
    .line 577
    if-eqz v3, :cond_3f

    .line 578
    .line 579
    goto :goto_21

    .line 580
    :cond_3f
    move v3, v2

    .line 581
    goto :goto_22

    .line 582
    :cond_40
    :goto_21
    move v3, v5

    .line 583
    :goto_22
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    if-eqz v4, :cond_41

    .line 588
    .line 589
    return v3

    .line 590
    :cond_41
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingTab;->P0(Landroid/content/Context;)Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-nez v4, :cond_43

    .line 595
    .line 596
    if-eqz v3, :cond_42

    .line 597
    .line 598
    goto :goto_23

    .line 599
    :cond_42
    move v3, v2

    .line 600
    goto :goto_24

    .line 601
    :cond_43
    :goto_23
    move v3, v5

    .line 602
    :goto_24
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    if-eqz v4, :cond_44

    .line 607
    .line 608
    return v3

    .line 609
    :cond_44
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingTrans;->P0(Landroid/content/Context;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-nez v4, :cond_46

    .line 614
    .line 615
    if-eqz v3, :cond_45

    .line 616
    .line 617
    goto :goto_25

    .line 618
    :cond_45
    move v3, v2

    .line 619
    goto :goto_26

    .line 620
    :cond_46
    :goto_25
    move v3, v5

    .line 621
    :goto_26
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    if-eqz v4, :cond_47

    .line 626
    .line 627
    return v3

    .line 628
    :cond_47
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingTts;->O0(Landroid/content/Context;)Z

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    if-nez v4, :cond_49

    .line 633
    .line 634
    if-eqz v3, :cond_48

    .line 635
    .line 636
    goto :goto_27

    .line 637
    :cond_48
    move v3, v2

    .line 638
    goto :goto_28

    .line 639
    :cond_49
    :goto_27
    move v3, v5

    .line 640
    :goto_28
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-eqz v4, :cond_4a

    .line 645
    .line 646
    return v3

    .line 647
    :cond_4a
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingVideo;->O0(Landroid/content/Context;)Z

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    if-nez v4, :cond_4c

    .line 652
    .line 653
    if-eqz v3, :cond_4b

    .line 654
    .line 655
    goto :goto_29

    .line 656
    :cond_4b
    move v3, v2

    .line 657
    goto :goto_2a

    .line 658
    :cond_4c
    :goto_29
    move v3, v5

    .line 659
    :goto_2a
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_4d

    .line 664
    .line 665
    goto/16 :goto_2b

    .line 666
    .line 667
    :cond_4d
    sget-object v4, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 668
    .line 669
    aget v4, v4, v6

    .line 670
    .line 671
    sget-object v7, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 672
    .line 673
    aget v6, v7, v6

    .line 674
    .line 675
    invoke-static {v4, v2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 676
    .line 677
    .line 678
    move-result v7

    .line 679
    sget v8, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 680
    .line 681
    const/16 v9, 0x14

    .line 682
    .line 683
    const/4 v10, 0x2

    .line 684
    if-ne v9, v8, :cond_4e

    .line 685
    .line 686
    sget v8, Lcom/mycompany/app/pref/PrefSub;->o:I

    .line 687
    .line 688
    if-ne v10, v8, :cond_4e

    .line 689
    .line 690
    sget v8, Lcom/mycompany/app/pref/PrefSub;->p:I

    .line 691
    .line 692
    if-nez v8, :cond_4e

    .line 693
    .line 694
    sget v8, Lcom/mycompany/app/pref/PrefSub;->q:I

    .line 695
    .line 696
    if-ne v4, v8, :cond_4e

    .line 697
    .line 698
    sget v8, Lcom/mycompany/app/pref/PrefSub;->r:F

    .line 699
    .line 700
    cmpl-float v8, v6, v8

    .line 701
    .line 702
    if-nez v8, :cond_4e

    .line 703
    .line 704
    sget v8, Lcom/mycompany/app/pref/PrefSub;->s:I

    .line 705
    .line 706
    if-ne v7, v8, :cond_4e

    .line 707
    .line 708
    sget-boolean v8, Lcom/mycompany/app/pref/PrefSub;->t:Z

    .line 709
    .line 710
    if-nez v8, :cond_4e

    .line 711
    .line 712
    sget v8, Lcom/mycompany/app/pref/PrefSub;->u:I

    .line 713
    .line 714
    if-nez v8, :cond_4e

    .line 715
    .line 716
    sget v8, Lcom/mycompany/app/pref/PrefSub;->v:I

    .line 717
    .line 718
    if-ne v4, v8, :cond_4e

    .line 719
    .line 720
    sget v8, Lcom/mycompany/app/pref/PrefSub;->w:F

    .line 721
    .line 722
    cmpl-float v8, v6, v8

    .line 723
    .line 724
    if-eqz v8, :cond_4f

    .line 725
    .line 726
    :cond_4e
    sput v9, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 727
    .line 728
    sput v10, Lcom/mycompany/app/pref/PrefSub;->o:I

    .line 729
    .line 730
    sput v2, Lcom/mycompany/app/pref/PrefSub;->p:I

    .line 731
    .line 732
    sput v4, Lcom/mycompany/app/pref/PrefSub;->q:I

    .line 733
    .line 734
    sput v6, Lcom/mycompany/app/pref/PrefSub;->r:F

    .line 735
    .line 736
    sput v7, Lcom/mycompany/app/pref/PrefSub;->s:I

    .line 737
    .line 738
    sput-boolean v2, Lcom/mycompany/app/pref/PrefSub;->t:Z

    .line 739
    .line 740
    sput v2, Lcom/mycompany/app/pref/PrefSub;->u:I

    .line 741
    .line 742
    sput v4, Lcom/mycompany/app/pref/PrefSub;->v:I

    .line 743
    .line 744
    sput v6, Lcom/mycompany/app/pref/PrefSub;->w:F

    .line 745
    .line 746
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSub;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefSub;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    const-string v6, "mTextSize"

    .line 751
    .line 752
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    const-string v6, "mLineSize"

    .line 756
    .line 757
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const-string v6, "mLineAlpha"

    .line 761
    .line 762
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string v6, "mLineColor"

    .line 766
    .line 767
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v6, "mLinePos"

    .line 771
    .line 772
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    const-string v6, "mBackShow"

    .line 776
    .line 777
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    const-string v6, "mBackAlpha"

    .line 781
    .line 782
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const-string v6, "mBackColor"

    .line 786
    .line 787
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    const-string v6, "mBackPos"

    .line 791
    .line 792
    invoke-virtual {v4, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 796
    .line 797
    .line 798
    :cond_4f
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingActivity;->G0()Z

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    if-eqz v1, :cond_50

    .line 803
    .line 804
    :goto_2b
    return v3

    .line 805
    :cond_50
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingWeb;->O0(Landroid/content/Context;)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-nez v0, :cond_52

    .line 810
    .line 811
    if-eqz v3, :cond_51

    .line 812
    .line 813
    goto :goto_2d

    .line 814
    :cond_51
    :goto_2c
    return v2

    .line 815
    :cond_52
    :goto_2d
    return v5
.end method

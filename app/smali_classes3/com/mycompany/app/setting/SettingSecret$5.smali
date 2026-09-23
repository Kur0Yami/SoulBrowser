.class Lcom/mycompany/app/setting/SettingSecret$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSecret;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecret;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$5;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 5

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingSecret;->d2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$5;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 4
    .line 5
    const/4 p4, 0x6

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_e

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-eq p2, v1, :cond_9

    .line 12
    .line 13
    const/16 v2, 0xb

    .line 14
    .line 15
    if-eq p2, v2, :cond_6

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    if-eq p2, v2, :cond_4

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-eq p2, v0, :cond_2

    .line 24
    .line 25
    if-eq p2, p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x7

    .line 28
    if-eq p2, p4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 33
    .line 34
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 35
    .line 36
    const-string p2, "mKeepLogin"

    .line 37
    .line 38
    invoke-static {v1, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 43
    .line 44
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 45
    .line 46
    const-string p2, "mKeepTab"

    .line 47
    .line 48
    invoke-static {v1, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const-string p2, "mSecretDown"

    .line 53
    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide p3

    .line 60
    sput-wide p3, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 61
    .line 62
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v1, p3, p4, p1, p2}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    sput-wide v3, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 69
    .line 70
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v1, v3, v4, p3, p2}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookDown;->m(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    const-string p2, "mSecretHist"

    .line 82
    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide p3

    .line 89
    sput-wide p3, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 90
    .line 91
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v1, p3, p4, p1, p2}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    sput-wide v3, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 98
    .line 99
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v1, v3, v4, p3, p2}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p1, v0}, Lcom/mycompany/app/db/book/DbBookHistory;->e(Landroid/content/Context;Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingSecret;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 111
    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingSecret;->c2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 116
    .line 117
    if-eqz p2, :cond_8

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSecret;->Q0()V

    .line 121
    .line 122
    .line 123
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 124
    .line 125
    sget p3, Lnet/kaki87/soul2/testing/R$string;->secret_reset_guide:I

    .line 126
    .line 127
    sget p4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 128
    .line 129
    new-instance v0, Lcom/mycompany/app/setting/SettingSecret$6;

    .line 130
    .line 131
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingSecret$6;-><init>(Lcom/mycompany/app/setting/SettingSecret;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p1, p3, p4, v0}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p1, Lcom/mycompany/app/setting/SettingSecret;->Y1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 138
    .line 139
    new-instance p3, Lcom/mycompany/app/setting/SettingSecret$7;

    .line 140
    .line 141
    invoke-direct {p3, p1}, Lcom/mycompany/app/setting/SettingSecret$7;-><init>(Lcom/mycompany/app/setting/SettingSecret;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_9
    sput-boolean p3, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 149
    .line 150
    iget-object p2, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 151
    .line 152
    const-string p4, "mSecretNoti"

    .line 153
    .line 154
    invoke-static {v1, p2, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 155
    .line 156
    .line 157
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 158
    .line 159
    if-eqz p2, :cond_b

    .line 160
    .line 161
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 162
    .line 163
    const/4 p4, 0x5

    .line 164
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->T5(Landroid/content/Context;I)Z

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    if-eqz p3, :cond_b

    .line 169
    .line 170
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->z4(Lcom/mycompany/app/main/MainActivity;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    iput-boolean p2, p1, Lcom/mycompany/app/setting/SettingSecret;->a2:Z

    .line 175
    .line 176
    if-eqz p2, :cond_a

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_a
    const/4 p2, 0x0

    .line 180
    :cond_b
    sget-boolean p3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 181
    .line 182
    if-nez p3, :cond_c

    .line 183
    .line 184
    :goto_0
    return-void

    .line 185
    :cond_c
    if-eqz p2, :cond_d

    .line 186
    .line 187
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->d8(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_d
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->Y4(Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_e
    new-instance p2, Landroid/content/Intent;

    .line 200
    .line 201
    iget-object p3, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 202
    .line 203
    const-class v1, Lcom/mycompany/app/setting/SettingSecure;

    .line 204
    .line 205
    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .line 207
    .line 208
    const-string p3, "EXTRA_NOTI"

    .line 209
    .line 210
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    const-string p3, "EXTRA_INDEX"

    .line 214
    .line 215
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

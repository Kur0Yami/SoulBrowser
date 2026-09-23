.class Lcom/mycompany/app/dialog/DialogViewRead$66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$66;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$66;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->S()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$66;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_c

    .line 5
    .line 6
    if-eq p2, v0, :cond_7

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_5

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-eq p2, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq p2, v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 22
    .line 23
    xor-int/2addr p2, v0

    .line 24
    sput-boolean p2, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 27
    .line 28
    const-string v3, "mAutoTrans"

    .line 29
    .line 30
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 34
    .line 35
    if-eqz p2, :cond_d

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->u(Lcom/mycompany/app/dialog/DialogViewRead;Z)V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_1
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->L:Z

    .line 42
    .line 43
    xor-int/2addr p2, v0

    .line 44
    sput-boolean p2, Lcom/mycompany/app/pref/PrefRead;->L:Z

    .line 45
    .line 46
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 47
    .line 48
    const-string v3, "mAutoSpeak"

    .line 49
    .line 50
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->L:Z

    .line 54
    .line 55
    if-eqz p2, :cond_d

    .line 56
    .line 57
    sget-boolean p2, Lcom/mycompany/app/pref/PrefRead;->E:Z

    .line 58
    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 64
    .line 65
    if-nez p2, :cond_3

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->a0()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->O()V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 80
    .line 81
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 82
    .line 83
    sget v2, Lnet/kaki87/soul2/testing/R$string;->auto_speak:I

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$string;->auto_speak_guide:I

    .line 86
    .line 87
    new-instance v4, Lcom/mycompany/app/dialog/DialogViewRead$77;

    .line 88
    .line 89
    invoke-direct {v4, p1}, Lcom/mycompany/app/dialog/DialogViewRead$77;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->M0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$78;

    .line 98
    .line 99
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead$78;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    .line 104
    .line 105
    return v0

    .line 106
    :cond_5
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtri;->j:Z

    .line 107
    .line 108
    if-eqz p2, :cond_6

    .line 109
    .line 110
    sget p2, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->h0()V

    .line 113
    .line 114
    .line 115
    :cond_6
    sget-boolean p2, Lcom/mycompany/app/pref/PrefZtri;->j:Z

    .line 116
    .line 117
    xor-int/2addr p2, v0

    .line 118
    sput-boolean p2, Lcom/mycompany/app/pref/PrefZtri;->j:Z

    .line 119
    .line 120
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 121
    .line 122
    const/16 v1, 0x11

    .line 123
    .line 124
    const-string v2, "mReadAccent"

    .line 125
    .line 126
    invoke-static {v1, p1, v2, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    return v0

    .line 130
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 131
    .line 132
    if-nez p2, :cond_8

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_8
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->a0()Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_9

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->L0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 143
    .line 144
    if-eqz p2, :cond_a

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetTts;->dismiss()V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->L0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 151
    .line 152
    :cond_a
    iget p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->r0:I

    .line 153
    .line 154
    if-ne p2, v0, :cond_b

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->d0(Z)V

    .line 157
    .line 158
    .line 159
    :cond_b
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTts;

    .line 160
    .line 161
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 162
    .line 163
    invoke-direct {p2, v1}, Lcom/mycompany/app/dialog/DialogSetTts;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 164
    .line 165
    .line 166
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->L0:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 167
    .line 168
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$76;

    .line 169
    .line 170
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewRead$76;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    .line 175
    .line 176
    return v0

    .line 177
    :cond_c
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 178
    .line 179
    if-nez p2, :cond_e

    .line 180
    .line 181
    :cond_d
    :goto_0
    return v0

    .line 182
    :cond_e
    new-instance p2, Landroid/content/Intent;

    .line 183
    .line 184
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 185
    .line 186
    const-class v2, Lcom/mycompany/app/setting/SettingFont;

    .line 187
    .line 188
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .line 190
    .line 191
    const-string v1, "EXTRA_PAGE"

    .line 192
    .line 193
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    .line 200
    .line 201
    return v0
.end method

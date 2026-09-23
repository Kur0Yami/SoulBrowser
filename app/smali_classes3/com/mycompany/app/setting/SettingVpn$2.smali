.class Lcom/mycompany/app/setting/SettingVpn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVpn$2;->a:Lcom/mycompany/app/setting/SettingVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingVpn;->j2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingVpn$2;->a:Lcom/mycompany/app/setting/SettingVpn;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p2, v2, :cond_a

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-eq p2, v0, :cond_5

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq p2, p1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingVpn;->Q0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingVpn;->e2:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_3
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 45
    .line 46
    .line 47
    iput-object p3, v1, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 48
    .line 49
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView;

    .line 50
    .line 51
    new-instance v6, Lcom/mycompany/app/setting/SettingVpn$9;

    .line 52
    .line 53
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingVpn$9;-><init>(Lcom/mycompany/app/setting/SettingVpn;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x2

    .line 58
    move-object v3, v2

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVpn;->f2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/setting/SettingVpn$10;

    .line 65
    .line 66
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingVpn$10;-><init>(Lcom/mycompany/app/setting/SettingVpn;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 74
    .line 75
    if-eqz p2, :cond_6

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_6
    if-eqz p2, :cond_7

    .line 80
    .line 81
    iput-object p3, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 84
    .line 85
    .line 86
    iput-object p3, v1, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    :cond_7
    if-eqz p1, :cond_d

    .line 89
    .line 90
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 91
    .line 92
    if-nez p2, :cond_8

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_8
    sget p2, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 97
    .line 98
    const/4 p3, -0x1

    .line 99
    if-ne p2, p3, :cond_9

    .line 100
    .line 101
    sget-object p2, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_9

    .line 108
    .line 109
    sget-object p2, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-nez p2, :cond_9

    .line 116
    .line 117
    move p2, v2

    .line 118
    goto :goto_0

    .line 119
    :cond_9
    move p2, p4

    .line 120
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 126
    .line 127
    sget v0, Lnet/kaki87/soul2/testing/R$string;->allow_all_site:I

    .line 128
    .line 129
    invoke-direct {p3, p4, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 136
    .line 137
    sget p4, Lnet/kaki87/soul2/testing/R$string;->block_harm_site:I

    .line 138
    .line 139
    invoke-direct {p3, v2, p4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 146
    .line 147
    const/4 p4, 0x2

    .line 148
    sget v0, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 149
    .line 150
    invoke-direct {p3, p4, v0, p2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 157
    .line 158
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 159
    .line 160
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 161
    .line 162
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 163
    .line 164
    new-instance v6, Lcom/mycompany/app/setting/SettingVpn$5;

    .line 165
    .line 166
    invoke-direct {v6, v1, p1}, Lcom/mycompany/app/setting/SettingVpn$5;-><init>(Lcom/mycompany/app/setting/SettingVpn;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;)V

    .line 167
    .line 168
    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 170
    .line 171
    .line 172
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVpn;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 173
    .line 174
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    if-eqz p3, :cond_c

    .line 178
    iget-object v0, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    invoke-static {v0}, Lcom/mycompany/app/warp/WarpController;->disableIfNeeded(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v1, v2, v2}, Lcom/mycompany/app/setting/SettingVpn;->S0(IZ)V

    .line 180
    .line 181
    .line 182
    iput-boolean p4, v1, Lcom/mycompany/app/setting/SettingVpn;->h2:Z

    .line 183
    .line 184
    iput-boolean p4, v1, Lcom/mycompany/app/setting/SettingVpn;->i2:Z

    .line 185
    .line 186
    :try_start_0
    invoke-static {v1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    if-nez p1, :cond_b

    .line 191
    .line 192
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_d

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->T()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_b
    const/16 p2, 0x22

    .line 205
    .line 206
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 207
    .line 208
    .line 209
    iput-boolean v2, v1, Lcom/mycompany/app/setting/SettingVpn;->h2:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 213
    .line 214
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_c
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/setting/SettingVpn;->S0(IZ)V

    .line 219
    .line 220
    .line 221
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_d

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->U()V

    .line 230
    .line 231
    .line 232
    :catch_1
    :cond_d
    :goto_1
    return-void
.end method

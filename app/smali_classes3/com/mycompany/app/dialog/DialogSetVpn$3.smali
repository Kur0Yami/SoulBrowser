.class Lcom/mycompany/app/dialog/DialogSetVpn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetVpn$3;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    sget p4, Lcom/mycompany/app/dialog/DialogSetVpn;->p0:I

    .line 2
    .line 3
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogSetVpn$3;->a:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p2, :cond_c

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v1, :cond_6

    .line 12
    .line 13
    if-eq p2, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p4}, Lcom/mycompany/app/dialog/DialogSetVpn;->D()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_2
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->l0:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_3
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_4
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 50
    .line 51
    .line 52
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 53
    .line 54
    :cond_5
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView;

    .line 55
    .line 56
    iget-object v4, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 57
    .line 58
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetVpn$11;

    .line 59
    .line 60
    invoke-direct {v9, p4}, Lcom/mycompany/app/dialog/DialogSetVpn$11;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x2

    .line 65
    move-object v6, v5

    .line 66
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 70
    .line 71
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetVpn$12;

    .line 72
    .line 73
    invoke-direct {p1, p4}, Lcom/mycompany/app/dialog/DialogSetVpn$12;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 81
    .line 82
    if-nez p2, :cond_7

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_7
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    if-eqz p2, :cond_8

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_8
    if-eqz p2, :cond_9

    .line 93
    .line 94
    iput-object p3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 97
    .line 98
    .line 99
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 100
    .line 101
    :cond_9
    if-eqz p1, :cond_f

    .line 102
    .line 103
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 104
    .line 105
    if-nez p2, :cond_a

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_a
    sget p2, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 110
    .line 111
    const/4 p3, -0x1

    .line 112
    if-ne p2, p3, :cond_b

    .line 113
    .line 114
    sget-object p2, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_b

    .line 121
    .line 122
    sget-object p2, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_b

    .line 129
    .line 130
    move p2, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_b
    move p2, v0

    .line 133
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 139
    .line 140
    sget v3, Lnet/kaki87/soul2/testing/R$string;->allow_all_site:I

    .line 141
    .line 142
    invoke-direct {p3, v0, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 149
    .line 150
    sget v0, Lnet/kaki87/soul2/testing/R$string;->block_harm_site:I

    .line 151
    .line 152
    invoke-direct {p3, v1, v0}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 159
    .line 160
    sget v0, Lnet/kaki87/soul2/testing/R$string;->direct_input:I

    .line 161
    .line 162
    invoke-direct {p3, v2, v0, p2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 169
    .line 170
    iget-object v4, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 171
    .line 172
    iget-object v5, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 173
    .line 174
    iget-object v6, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 175
    .line 176
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 177
    .line 178
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetVpn$7;

    .line 179
    .line 180
    invoke-direct {v9, p4, p1}, Lcom/mycompany/app/dialog/DialogSetVpn$7;-><init>(Lcom/mycompany/app/dialog/DialogSetVpn;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;)V

    .line 181
    .line 182
    .line 183
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 184
    .line 185
    .line 186
    iput-object v3, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 187
    .line 188
    iput-object v3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 189
    .line 190
    return-void

    .line 191
    :cond_c
    if-eqz p3, :cond_e

    .line 192
    .line 193
    invoke-virtual {p4, v1, v1}, Lcom/mycompany/app/dialog/DialogSetVpn;->F(IZ)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 197
    .line 198
    iput-boolean v0, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->o0:Z

    .line 199
    .line 200
    :try_start_0
    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    if-nez p2, :cond_d

    .line 205
    .line 206
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_f

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->T()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_d
    const/16 p3, 0x22

    .line 219
    .line 220
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V

    .line 221
    .line 222
    .line 223
    iput-boolean v1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->o0:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :catch_0
    sget p2, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 227
    .line 228
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_e
    const/4 p1, 0x3

    .line 233
    invoke-virtual {p4, p1, v1}, Lcom/mycompany/app/dialog/DialogSetVpn;->F(IZ)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetVpn;->b0:Landroid/content/Context;

    .line 237
    .line 238
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_f

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainApp;->U()V

    .line 245
    .line 246
    .line 247
    :catch_1
    :cond_f
    :goto_1
    return-void
.end method

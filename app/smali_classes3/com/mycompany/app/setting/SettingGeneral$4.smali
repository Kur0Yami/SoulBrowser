.class Lcom/mycompany/app/setting/SettingGeneral$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingGeneral;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGeneral;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGeneral$4;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 7

    .line 1
    sget p4, Lcom/mycompany/app/setting/SettingGeneral;->c2:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingGeneral$4;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    if-eq p2, p4, :cond_10

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_f

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq p2, v2, :cond_8

    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    if-eq p2, p1, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x7

    .line 19
    if-eq p2, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-eq p2, v2, :cond_2

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    if-eq p2, p1, :cond_1

    .line 28
    .line 29
    const/16 p1, 0xb

    .line 30
    .line 31
    if-eq p2, p1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingGeneral;->R0(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1, p4}, Lcom/mycompany/app/setting/SettingGeneral;->R0(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    sput-boolean p3, Lcom/mycompany/app/pref/PrefMain;->m:Z

    .line 44
    .line 45
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    const-string p4, "mDoubleBack"

    .line 48
    .line 49
    invoke-static {p1, p2, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    sput-boolean p3, Lcom/mycompany/app/pref/PrefTts;->w:Z

    .line 54
    .line 55
    iget-object p1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 56
    .line 57
    const/16 p2, 0xc

    .line 58
    .line 59
    const-string p4, "mAppKeypad"

    .line 60
    .line 61
    invoke-static {p2, p1, p4, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_5
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingGeneral;->Z1:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_6
    if-eqz p1, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 80
    .line 81
    .line 82
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 83
    .line 84
    :cond_7
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView;

    .line 85
    .line 86
    new-instance v6, Lcom/mycompany/app/setting/SettingGeneral$7;

    .line 87
    .line 88
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingGeneral$7;-><init>(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "https://github.com/KaKi87/soul-browser-i18n/tree/master/Language"

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x2

    .line 95
    move-object v3, v2

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 100
    .line 101
    new-instance p1, Lcom/mycompany/app/setting/SettingGeneral$8;

    .line 102
    .line 103
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingGeneral$8;-><init>(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingGeneral;->Y1:Lcom/mycompany/app/dialog/DialogWebView;

    .line 110
    .line 111
    iput-boolean p4, p1, Lcom/mycompany/app/dialog/DialogWebView;->h0:Z

    .line 112
    .line 113
    return-void

    .line 114
    :cond_8
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 115
    .line 116
    if-eqz p2, :cond_9

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    if-eqz p2, :cond_a

    .line 120
    .line 121
    iput-object v3, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 124
    .line 125
    .line 126
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 127
    .line 128
    :cond_a
    if-eqz p1, :cond_12

    .line 129
    .line 130
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 131
    .line 132
    if-nez p2, :cond_b

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_b
    iget-boolean p2, v1, Lcom/mycompany/app/setting/SettingGeneral;->b2:Z

    .line 136
    .line 137
    if-eqz p2, :cond_c

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingGeneral;->S0()[[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    array-length p2, p2

    .line 148
    const/4 p3, 0x0

    .line 149
    move v0, p3

    .line 150
    :goto_0
    if-ge v0, p2, :cond_e

    .line 151
    .line 152
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingGeneral;->Q0(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget v5, v1, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 159
    .line 160
    if-ne v5, v0, :cond_d

    .line 161
    .line 162
    move v5, p4

    .line 163
    goto :goto_1

    .line 164
    :cond_d
    move v5, p3

    .line 165
    :goto_1
    invoke-direct {v2, v3, v0, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_e
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 175
    .line 176
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 177
    .line 178
    iget-object v3, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 179
    .line 180
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 181
    .line 182
    new-instance v6, Lcom/mycompany/app/setting/SettingGeneral$5;

    .line 183
    .line 184
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingGeneral$5;-><init>(Lcom/mycompany/app/setting/SettingGeneral;)V

    .line 185
    .line 186
    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingGeneral;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 191
    .line 192
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 193
    .line 194
    return-void

    .line 195
    :cond_f
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->z4(Lcom/mycompany/app/main/MainActivity;)Z

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    .line 201
    const/16 p2, 0x18

    .line 202
    .line 203
    if-ge p1, p2, :cond_11

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_11
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 207
    .line 208
    const-string p2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 209
    .line 210
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    :catch_0
    :cond_12
    :goto_2
    return-void
.end method

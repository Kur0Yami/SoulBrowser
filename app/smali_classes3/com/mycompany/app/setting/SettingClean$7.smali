.class Lcom/mycompany/app/setting/SettingClean$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$7;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$7;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingClean;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingClean$7;->a:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    if-ne p2, p1, :cond_2

    .line 6
    .line 7
    sget-object p1, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingClean;->S0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 22
    .line 23
    .line 24
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 25
    .line 26
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {p1, v1, v2, p2}, Lcom/mycompany/app/dialog/DialogGuideArea;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogGuideArea$DialogAreaListener;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingClean;->c2:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 33
    .line 34
    new-instance p2, Lcom/mycompany/app/setting/SettingClean$10;

    .line 35
    .line 36
    invoke-direct {p2, v1}, Lcom/mycompany/app/setting/SettingClean$10;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    sget-object p1, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingClean;->S0()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingClean;->R0()V

    .line 53
    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "\n"

    .line 61
    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    sget p2, Lnet/kaki87/soul2/testing/R$string;->filter_guide_1:I

    .line 65
    .line 66
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget p2, Lnet/kaki87/soul2/testing/R$string;->filter_guide_2:I

    .line 77
    .line 78
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    sget p2, Lnet/kaki87/soul2/testing/R$string;->filter_guide_3:I

    .line 89
    .line 90
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    if-ne p2, v0, :cond_5

    .line 99
    .line 100
    sget p2, Lnet/kaki87/soul2/testing/R$string;->check_ele_info_1:I

    .line 101
    .line 102
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget p2, Lnet/kaki87/soul2/testing/R$string;->show_thumb_info:I

    .line 113
    .line 114
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    sget p2, Lnet/kaki87/soul2/testing/R$string;->over_block_guide_1:I

    .line 123
    .line 124
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    sget p2, Lnet/kaki87/soul2/testing/R$string;->over_block_guide_2:I

    .line 135
    .line 136
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    sget p2, Lnet/kaki87/soul2/testing/R$string;->over_block_guide_3:I

    .line 147
    .line 148
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :goto_1
    sget p2, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 156
    .line 157
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 167
    .line 168
    sget v5, Lnet/kaki87/soul2/testing/R$string;->area_recom_1:I

    .line 169
    .line 170
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    new-array v6, v0, [Ljava/lang/Object;

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    aput-object p2, v6, v7

    .line 178
    .line 179
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    sget v2, Lnet/kaki87/soul2/testing/R$string;->area_recom_2:I

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-array v5, v0, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object p2, v5, v7

    .line 198
    .line 199
    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Lcom/mycompany/app/setting/SettingClean$8;

    .line 217
    .line 218
    invoke-direct {v3, v1}, Lcom/mycompany/app/setting/SettingClean$8;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {p2, v1, p1, v2, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfBtnListener;)V

    .line 222
    .line 223
    .line 224
    iput-object p2, v1, Lcom/mycompany/app/setting/SettingClean;->b2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 225
    .line 226
    new-instance p1, Lcom/mycompany/app/setting/SettingClean$9;

    .line 227
    .line 228
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingClean$9;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    .line 233
    .line 234
    return v0
.end method

.class public Lcom/mycompany/app/setting/SettingPay;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingPay$PayItem;
    }
.end annotation


# static fields
.field public static final synthetic m2:I


# instance fields
.field public X1:Ljava/lang/String;

.field public Y1:Z

.field public Z1:Z

.field public a2:Lcom/mycompany/app/help/PayHelper;

.field public b2:Z

.field public c2:Z

.field public d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

.field public e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

.field public f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

.field public g2:Lcom/mycompany/app/view/MyPopupMenu;

.field public h2:Lcom/mycompany/app/dialog/DialogGuideAds;

.field public i2:Lcom/mycompany/app/dialog/DialogGreeting;

.field public j2:Lcom/mycompany/app/dialog/DialogPayQuiz;

.field public k2:I

.field public l2:Lcom/android/billingclient/api/ProductDetails;


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

.method public static O0(Ljava/util/HashMap;Ljava/lang/String;)Lcom/mycompany/app/setting/SettingPay$PayItem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/billingclient/api/ProductDetails;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->a()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :goto_0
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance v0, Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p0, v0, Lcom/mycompany/app/setting/SettingPay$PayItem;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 37
    .line 38
    iput-object p1, v0, Lcom/mycompany/app/setting/SettingPay$PayItem;->b:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget v2, Lnet/kaki87/soul2/testing/R$string;->remove_ads_info_1:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "\n"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$string;->remove_ads_info_2:I

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    sget v4, Lnet/kaki87/soul2/testing/R$string;->remove_ads_info_3:I

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget v4, Lnet/kaki87/soul2/testing/R$string;->remove_ads_info_4:I

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    sget v5, Lnet/kaki87/soul2/testing/R$string;->donate_info_1:I

    .line 63
    .line 64
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget v2, Lnet/kaki87/soul2/testing/R$string;->donate_info_2:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    sget v2, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 102
    .line 103
    if-eqz v3, :cond_0

    .line 104
    .line 105
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_favorite_dark_20:I

    .line 106
    .line 107
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_dark_24:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_favorite_black_20:I

    .line 111
    .line 112
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_black_24:I

    .line 113
    .line 114
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    const/4 v14, 0x0

    .line 123
    invoke-direct {v5, v14, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 130
    .line 131
    sget v7, Lnet/kaki87/soul2/testing/R$string;->remove_ads:I

    .line 132
    .line 133
    const/4 v10, 0x1

    .line 134
    const/4 v11, 0x0

    .line 135
    const/4 v8, 0x0

    .line 136
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 143
    .line 144
    move v5, v14

    .line 145
    const/4 v15, 0x0

    .line 146
    const/4 v11, 0x2

    .line 147
    move-object v6, v13

    .line 148
    const/4 v13, 0x0

    .line 149
    move-object/from16 v19, v6

    .line 150
    .line 151
    move v6, v5

    .line 152
    move-object/from16 v5, v19

    .line 153
    .line 154
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 161
    .line 162
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    const/16 v8, 0x10

    .line 166
    .line 167
    iput v8, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 168
    .line 169
    const/4 v8, 0x3

    .line 170
    iput v8, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 171
    .line 172
    iput-object v1, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->d:Ljava/lang/String;

    .line 173
    .line 174
    const/4 v1, 0x2

    .line 175
    iput v1, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 176
    .line 177
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 181
    .line 182
    const/4 v8, 0x4

    .line 183
    invoke-direct {v7, v8, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 190
    .line 191
    sget v8, Lnet/kaki87/soul2/testing/R$string;->donation:I

    .line 192
    .line 193
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    const/16 v10, 0x15

    .line 197
    .line 198
    iput v10, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 199
    .line 200
    const/4 v10, 0x5

    .line 201
    iput v10, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 202
    .line 203
    iput v8, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->c:I

    .line 204
    .line 205
    iput v3, v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->e:I

    .line 206
    .line 207
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-object v3, v5

    .line 211
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 212
    .line 213
    sget v7, Lnet/kaki87/soul2/testing/R$string;->donate_1:I

    .line 214
    .line 215
    const/4 v10, 0x1

    .line 216
    const/4 v11, 0x0

    .line 217
    move v8, v6

    .line 218
    const/4 v6, 0x6

    .line 219
    move/from16 v19, v8

    .line 220
    .line 221
    move v8, v4

    .line 222
    move/from16 v4, v19

    .line 223
    .line 224
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;II)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 231
    .line 232
    sget v7, Lnet/kaki87/soul2/testing/R$string;->donate_2:I

    .line 233
    .line 234
    const/4 v10, 0x0

    .line 235
    const/4 v6, 0x7

    .line 236
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIILjava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/16 v14, 0x8

    .line 249
    .line 250
    const/16 v16, 0x0

    .line 251
    .line 252
    move-object v15, v2

    .line 253
    invoke-direct/range {v13 .. v18}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(ILjava/lang/String;III)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->dev_cat:I

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    const/16 v6, 0xc

    .line 267
    .line 268
    iput v6, v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->a:I

    .line 269
    .line 270
    const/16 v6, 0x9

    .line 271
    .line 272
    iput v6, v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->b:I

    .line 273
    .line 274
    iput v5, v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->v:I

    .line 275
    .line 276
    iput v1, v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;->u:I

    .line 277
    .line 278
    const/16 v1, 0xa

    .line 279
    .line 280
    invoke-static {v3, v2, v1, v4}, Lcom/mycompany/app/dialog/a;->u(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;IZ)V

    .line 281
    .line 282
    .line 283
    return-object v3
.end method

.method public final P0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->j2:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPayQuiz;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->j2:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final Q0(Lcom/mycompany/app/setting/SettingPay$PayItem;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->h2:Lcom/mycompany/app/dialog/DialogGuideAds;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->i2:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->j2:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPay;->P0()V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_4

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingPay;->b2:Z

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    sget p1, Lnet/kaki87/soul2/testing/R$string;->pay_fail:I

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_4
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-boolean p2, p0, Lcom/mycompany/app/setting/SettingPay;->c2:Z

    .line 40
    .line 41
    if-eqz p2, :cond_5

    .line 42
    .line 43
    sget p1, Lnet/kaki87/soul2/testing/R$string;->already_paid:I

    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_5
    new-instance p2, Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingPay$PayItem;->a:Lcom/android/billingclient/api/ProductDetails;

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/setting/SettingPay$14;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPay$14;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p0, p1, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz;-><init>(Lcom/mycompany/app/setting/SettingPay;Lcom/android/billingclient/api/ProductDetails;Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingPay;->j2:Lcom/mycompany/app/dialog/DialogPayQuiz;

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/setting/SettingPay$15;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingPay$15;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final finish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingPay;->Y1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "EXTRA_FILTER"

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/mycompany/app/setting/SettingPay;->Z1:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-ne p2, p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingPay;->Y1:Z

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/mycompany/app/setting/SettingPay;->Z1:Z

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const-string p2, "EXTRA_FILTER"

    .line 18
    .line 19
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingPay;->Z1:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingPay;->Z1:Z

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "EXTRA_PATH"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPay;->X1:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 20
    .line 21
    .line 22
    sget p1, Lnet/kaki87/soul2/testing/R$string;->purchase:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 27
    .line 28
    .line 29
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingPay$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPay$1;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->X1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->d2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->e2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->f2:Lcom/mycompany/app/setting/SettingPay$PayItem;

    .line 12
    .line 13
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->a2:Lcom/mycompany/app/help/PayHelper;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingPay$6;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPay$6;-><init>(Lcom/mycompany/app/setting/SettingPay;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPay;->g2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->h2:Lcom/mycompany/app/dialog/DialogGuideAds;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGuideAds;->dismiss()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPay;->h2:Lcom/mycompany/app/dialog/DialogGuideAds;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->i2:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGreeting;->dismiss()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPay;->i2:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPay;->P0()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->i2:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 66
    .line 67
    .line 68
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 73
    .line 74
    .line 75
    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPay;->i2:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

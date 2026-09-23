.class public Lcom/mycompany/app/help/PayHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/help/PayHelper$PayListener;
    }
.end annotation


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/android/billingclient/api/BillingClient;

.field public c:Lcom/mycompany/app/help/PayHelper$PayListener;

.field public d:I

.field public e:I

.field public f:Ljava/util/concurrent/ExecutorService;

.field public g:J

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "soul_donation_1"

    .line 2
    .line 3
    const-string v1, "soul_donation_2"

    .line 4
    .line 5
    const-string v2, "soul_remove_ads"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/mycompany/app/help/PayHelper;->i:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/mycompany/app/help/PayHelper$PayListener;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    iput p3, p0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 10
    .line 11
    iput p3, p0, Lcom/mycompany/app/help/PayHelper;->e:I

    return-void

    .line 12
    .line 13
    sget-object v0, Lcom/mycompany/app/db/book/DbBookPay;->c:Lcom/mycompany/app/db/book/DbBookPay;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookPay;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPay;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "DbBookPay_table"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const-string v2, "_time"

    .line 47
    .line 48
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const-string v3, "_paid"

    .line 53
    .line 54
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    new-instance v4, Lcom/mycompany/app/db/book/DbBookPay$DbPayItem;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, v4, Lcom/mycompany/app/db/book/DbBookPay$DbPayItem;->a:J

    .line 68
    .line 69
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ne v1, v0, :cond_1

    .line 74
    .line 75
    move v1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v1, p3

    .line 78
    :goto_0
    iput-boolean v1, v4, Lcom/mycompany/app/db/book/DbBookPay$DbPayItem;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .line 80
    :catch_0
    move-object v1, v4

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-object p1, v1

    .line 83
    :catch_2
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    iget-wide v2, v1, Lcom/mycompany/app/db/book/DbBookPay$DbPayItem;->a:J

    .line 92
    .line 93
    iput-wide v2, p0, Lcom/mycompany/app/help/PayHelper;->g:J

    .line 94
    .line 95
    iget-boolean p1, v1, Lcom/mycompany/app/db/book/DbBookPay$DbPayItem;->b:Z

    .line 96
    .line 97
    iput-boolean p1, p0, Lcom/mycompany/app/help/PayHelper;->h:Z

    .line 98
    .line 99
    sget-wide v4, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 100
    .line 101
    invoke-static {v2, v3, v4, v5}, Lcom/mycompany/app/help/PayHelper;->f(JJ)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    iget-wide v1, p0, Lcom/mycompany/app/help/PayHelper;->g:J

    .line 108
    .line 109
    sput-wide v1, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 110
    .line 111
    move p3, v0

    .line 112
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/help/PayHelper;->h:Z

    .line 113
    .line 114
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    sput-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move v0, p3

    .line 124
    :goto_3
    if-nez v0, :cond_7

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    new-instance p1, Lcom/mycompany/app/help/PayHelper$3;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Lcom/mycompany/app/help/PayHelper$3;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 133
    .line 134
    .line 135
    :goto_4
    :try_start_3
    new-instance p1, Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object p3, p0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 141
    .line 142
    new-instance v0, Lcom/android/billingclient/api/BillingClient$Builder;

    .line 143
    .line 144
    invoke-direct {v0, p3}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    iput-object p1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 148
    .line 149
    iput-object p0, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/mycompany/app/help/PayHelper;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Lcom/android/billingclient/api/BillingClient;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 156
    .line 157
    :catch_3
    iget-object p1, p0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 158
    .line 159
    if-nez p1, :cond_8

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_9

    .line 167
    .line 168
    iget-object p1, p0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient;->h(Lcom/mycompany/app/help/PayHelper;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 171
    .line 172
    .line 173
    :catch_4
    :cond_9
    :goto_5
    invoke-virtual {p0, p2}, Lcom/mycompany/app/help/PayHelper;->g(Z)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public static a(Lcom/mycompany/app/help/PayHelper;Ljava/util/List;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    if-ne v2, v5, :cond_0

    .line 11
    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    const-string v6, "mPayConfirm"

    .line 16
    .line 17
    const-string v9, "mPayTime"

    .line 18
    .line 19
    const/4 v10, 0x7

    .line 20
    if-eqz p1, :cond_11

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    if-nez v11, :cond_11

    .line 27
    .line 28
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    :catch_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    if-eqz v12, :cond_11

    .line 37
    .line 38
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    check-cast v12, Lcom/android/billingclient/api/Purchase;

    .line 43
    .line 44
    if-nez v12, :cond_2

    .line 45
    .line 46
    :cond_1
    const-wide/32 v16, 0xa4cb800

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v12, v12, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 51
    .line 52
    const-string v13, "purchaseState"

    .line 53
    .line 54
    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    const/4 v14, 0x4

    .line 59
    if-eq v13, v14, :cond_1

    .line 60
    .line 61
    new-instance v13, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v14, "productIds"

    .line 67
    .line 68
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    if-eqz v15, :cond_4

    .line 73
    .line 74
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    if-eqz v14, :cond_3

    .line 79
    .line 80
    move v15, v3

    .line 81
    const-wide/32 v16, 0xa4cb800

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-ge v15, v7, :cond_5

    .line 89
    .line 90
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 v15, v15, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-wide/32 v16, 0xa4cb800

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const-wide/32 v16, 0xa4cb800

    .line 105
    .line 106
    .line 107
    const-string v7, "productId"

    .line 108
    .line 109
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_5

    .line 114
    .line 115
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_a

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    move v8, v3

    .line 133
    :cond_6
    if-ge v8, v7, :cond_a

    .line 134
    .line 135
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    check-cast v14, Ljava/lang/String;

    .line 142
    .line 143
    const-string v15, "soul_remove_ads"

    .line 144
    .line 145
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-eqz v14, :cond_6

    .line 150
    .line 151
    const-string v2, "purchaseTime"

    .line 152
    .line 153
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v7

    .line 157
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 158
    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    sget-wide v13, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 163
    .line 164
    invoke-static {v7, v8, v13, v14}, Lcom/mycompany/app/help/PayHelper;->f(JJ)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_8

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    sput-wide v7, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 172
    .line 173
    invoke-static {v10, v7, v8, v1, v9}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    move-result-wide v7

    .line 180
    sget-wide v13, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 181
    .line 182
    sub-long/2addr v7, v13

    .line 183
    cmp-long v2, v7, v16

    .line 184
    .line 185
    if-lez v2, :cond_9

    .line 186
    .line 187
    sput-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 188
    .line 189
    invoke-static {v10, v1, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lcom/mycompany/app/help/PayHelper;->i()V

    .line 193
    .line 194
    .line 195
    move v2, v4

    .line 196
    move v7, v2

    .line 197
    goto :goto_5

    .line 198
    :cond_a
    move v7, v3

    .line 199
    :goto_5
    const-string v8, "token"

    .line 200
    .line 201
    const-string v13, "purchaseToken"

    .line 202
    .line 203
    const-string v14, "Purchase token must be set"

    .line 204
    .line 205
    if-eqz v7, :cond_e

    .line 206
    .line 207
    iget-object v7, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 208
    .line 209
    if-nez v7, :cond_b

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_b
    :try_start_0
    const-string v7, "acknowledged"

    .line 214
    .line 215
    invoke-virtual {v12, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-eqz v7, :cond_c

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_c
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v12, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    if-eqz v7, :cond_d

    .line 232
    .line 233
    new-instance v8, Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    .line 234
    .line 235
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    iput-object v7, v8, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->a:Ljava/lang/String;

    .line 239
    .line 240
    iget-object v7, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 241
    .line 242
    new-instance v12, Lcom/mycompany/app/help/PayHelper$6;

    .line 243
    .line 244
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v8, v12}, Lcom/android/billingclient/api/BillingClient;->a(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    invoke-direct {v7, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_e
    iget-object v7, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 259
    .line 260
    if-nez v7, :cond_f

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_f
    :try_start_1
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v12, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    if-eqz v7, :cond_10

    .line 273
    .line 274
    new-instance v8, Lcom/android/billingclient/api/ConsumeParams;

    .line 275
    .line 276
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 277
    .line 278
    .line 279
    iput-object v7, v8, Lcom/android/billingclient/api/ConsumeParams;->a:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v7, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 282
    .line 283
    new-instance v12, Lcom/mycompany/app/help/PayHelper$7;

    .line 284
    .line 285
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v8, v12}, Lcom/android/billingclient/api/BillingClient;->b(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_10
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    invoke-direct {v7, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :cond_11
    const-wide/32 v16, 0xa4cb800

    .line 300
    .line 301
    .line 302
    iget v7, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 303
    .line 304
    if-ne v7, v5, :cond_12

    .line 305
    .line 306
    move v2, v4

    .line 307
    :cond_12
    sget-boolean v7, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 308
    .line 309
    if-eqz v7, :cond_13

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_13
    const-wide/16 v7, 0x0

    .line 313
    .line 314
    if-nez v2, :cond_14

    .line 315
    .line 316
    sget-wide v11, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 317
    .line 318
    cmp-long v6, v11, v7

    .line 319
    .line 320
    if-eqz v6, :cond_16

    .line 321
    .line 322
    sput-wide v7, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 323
    .line 324
    invoke-static {v10, v7, v8, v1, v9}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 329
    .line 330
    .line 331
    move-result-wide v11

    .line 332
    sget-wide v13, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 333
    .line 334
    cmp-long v7, v13, v7

    .line 335
    .line 336
    if-gtz v7, :cond_15

    .line 337
    .line 338
    sput-wide v11, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 339
    .line 340
    invoke-static {v10, v11, v12, v1, v9}, Lcom/mycompany/app/pref/PrefSet;->b(IJLandroid/content/Context;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_15
    sub-long/2addr v11, v13

    .line 345
    cmp-long v7, v11, v16

    .line 346
    .line 347
    if-lez v7, :cond_16

    .line 348
    .line 349
    sput-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 350
    .line 351
    invoke-static {v10, v1, v6, v4}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 352
    .line 353
    .line 354
    :cond_16
    :goto_6
    invoke-virtual {v0}, Lcom/mycompany/app/help/PayHelper;->i()V

    .line 355
    .line 356
    .line 357
    sget-boolean v6, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 358
    .line 359
    if-nez v6, :cond_18

    .line 360
    .line 361
    if-eqz v2, :cond_17

    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_17
    iput v4, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_18
    :goto_7
    iput v5, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 368
    .line 369
    :goto_8
    iput v3, v0, Lcom/mycompany/app/help/PayHelper;->e:I

    .line 370
    .line 371
    iget v2, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 372
    .line 373
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    if-nez v1, :cond_19

    .line 378
    .line 379
    goto :goto_9

    .line 380
    :cond_19
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 381
    .line 382
    if-eqz v4, :cond_1a

    .line 383
    .line 384
    iput v5, v1, Lcom/mycompany/app/main/MainApp;->f:I

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_1a
    iput v2, v1, Lcom/mycompany/app/main/MainApp;->f:I

    .line 388
    .line 389
    :goto_9
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 390
    .line 391
    if-nez v1, :cond_1b

    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_1b
    iget v2, v0, Lcom/mycompany/app/help/PayHelper;->d:I

    .line 395
    .line 396
    invoke-interface {v1, v2}, Lcom/mycompany/app/help/PayHelper$PayListener;->b(I)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_1e

    .line 401
    .line 402
    if-eqz p2, :cond_1e

    .line 403
    .line 404
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .line 408
    .line 409
    sget-object v2, Lcom/mycompany/app/help/PayHelper;->i:[Ljava/lang/String;

    .line 410
    .line 411
    :goto_a
    const/4 v4, 0x3

    .line 412
    if-ge v3, v4, :cond_1c

    .line 413
    .line 414
    aget-object v4, v2, v3

    .line 415
    .line 416
    new-instance v5, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 417
    .line 418
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 419
    .line 420
    .line 421
    iput-object v4, v5, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->a:Ljava/lang/String;

    .line 422
    .line 423
    const-string v4, "inapp"

    .line 424
    .line 425
    iput-object v4, v5, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->b:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->a()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    add-int/lit8 v3, v3, 0x1

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_1c
    new-instance v2, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 438
    .line 439
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->a(Ljava/util/ArrayList;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v2, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->a:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 446
    .line 447
    if-eqz v1, :cond_1d

    .line 448
    .line 449
    new-instance v1, Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 450
    .line 451
    invoke-direct {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams;-><init>(Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;)V

    .line 452
    .line 453
    .line 454
    iget-object v2, v0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 455
    .line 456
    new-instance v3, Lcom/mycompany/app/help/PayHelper$5;

    .line 457
    .line 458
    invoke-direct {v3, v0}, Lcom/mycompany/app/help/PayHelper$5;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->f(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 462
    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 466
    .line 467
    const-string v1, "Product list must be set to a non empty list."

    .line 468
    .line 469
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :catch_1
    :cond_1e
    :goto_b
    return-void
.end method

.method public static f(JJ)Z
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    cmp-long p0, p0, p2

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    cmp-long p1, p2, v0

    .line 14
    .line 15
    if-gtz p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    if-gez p0, :cond_3

    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Lcom/mycompany/app/help/PayHelper$9;

    .line 9
    .line 10
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/help/PayHelper$9;-><init>(Lcom/mycompany/app/help/PayHelper;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 p2, 0x7

    .line 18
    if-ne p1, p2, :cond_2

    .line 19
    .line 20
    new-instance p1, Lcom/mycompany/app/help/PayHelper$10;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/mycompany/app/help/PayHelper$10;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const/4 p2, -0x1

    .line 30
    if-ne p1, p2, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/mycompany/app/help/PayHelper$PayListener;->a()V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Landroid/os/Handler;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/mycompany/app/help/PayHelper;->e:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/mycompany/app/help/PayHelper;->e:I

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-le v0, v1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/mycompany/app/help/PayHelper$PayListener;->d()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v0, Lcom/mycompany/app/help/PayHelper$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/mycompany/app/help/PayHelper$1;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x1388

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final d(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Lcom/mycompany/app/help/PayHelper$8;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/mycompany/app/help/PayHelper$8;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper;->c:Lcom/mycompany/app/help/PayHelper$PayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/mycompany/app/help/PayHelper$PayListener;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 0

    return-void
.end method

.method public final g_disabled(Z)V
    .locals 3

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "inapp"

    .line 18
    .line 19
    iput-object v1, v0, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->a:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Lcom/android/billingclient/api/QueryPurchasesParams;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/QueryPurchasesParams;-><init>(Lcom/android/billingclient/api/QueryPurchasesParams$Builder;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper;->b:Lcom/android/billingclient/api/BillingClient;

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/help/PayHelper$2;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/mycompany/app/help/PayHelper$2;-><init>(Lcom/mycompany/app/help/PayHelper;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->g(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper;->f:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/help/PayHelper;->f:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final i_disabled()V
    .locals 4

    .line 1
    sget-wide v0, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/mycompany/app/help/PayHelper;->g:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/help/PayHelper;->f(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-wide v2, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/mycompany/app/help/PayHelper;->g:J

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/mycompany/app/help/PayHelper;->h:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/mycompany/app/help/PayHelper;->h:Z

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v0

    .line 31
    :goto_1
    if-nez v1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance v0, Lcom/mycompany/app/help/PayHelper$4;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/help/PayHelper$4;-><init>(Lcom/mycompany/app/help/PayHelper;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/mycompany/app/help/PayHelper;->h(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

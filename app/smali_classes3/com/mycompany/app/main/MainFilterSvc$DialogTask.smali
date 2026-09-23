.class Lcom/mycompany/app/main/MainFilterSvc$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainFilterSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainFilterSvc;Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/MainFilterSvc;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput p3, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->g:I

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lt p3, p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->h:I

    .line 47
    .line 48
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->i:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->j:Ljava/lang/String;

    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/main/MainFilterSvc;

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iget v3, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->g:I

    .line 25
    .line 26
    iget-object v4, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->j:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .line 34
    .line 35
    iget v7, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->h:I

    .line 36
    .line 37
    if-lt v6, v7, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-wide v10, v0, Lcom/mycompany/app/main/MainFilterSvc;->h:J

    .line 46
    .line 47
    sub-long v10, v8, v10

    .line 48
    .line 49
    const-wide/16 v12, 0x3e8

    .line 50
    .line 51
    cmp-long v10, v10, v12

    .line 52
    .line 53
    if-gez v10, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iput-wide v8, v0, Lcom/mycompany/app/main/MainFilterSvc;->h:J

    .line 57
    .line 58
    iget-object v8, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 59
    .line 60
    if-nez v8, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    invoke-static {v8}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    if-nez v8, :cond_6

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v10, " / "

    .line 79
    .line 80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    iput-object v10, v1, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    iput-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-virtual {v1, v7, v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 103
    .line 104
    .line 105
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainFilterSvc;->i:Z

    .line 106
    .line 107
    if-nez v6, :cond_7

    .line 108
    .line 109
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainFilterSvc;->i:Z

    .line 110
    .line 111
    new-instance v6, Landroid/content/Intent;

    .line 112
    .line 113
    const-string v7, "net.kaki87.soul2.testing.ACTION_FILTER_CANCEL"

    .line 114
    .line 115
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v7, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    iget-object v7, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 128
    .line 129
    const/16 v9, 0xb

    .line 130
    .line 131
    const/high16 v10, 0xc000000

    .line 132
    .line 133
    invoke-static {v7, v9, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    .line 138
    .line 139
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 140
    .line 141
    iget-object v10, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 142
    .line 143
    sget v11, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 144
    .line 145
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-direct {v7, v9, v10, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v7}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const v6, 0x7ffffff7

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->i:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_b

    .line 172
    .line 173
    iget-object v6, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 174
    .line 175
    iget-object v7, v0, Lcom/mycompany/app/main/MainFilterSvc;->k:Lcom/mycompany/app/main/MainFilterDown;

    .line 176
    .line 177
    if-nez v7, :cond_8

    .line 178
    .line 179
    move v8, v2

    .line 180
    goto :goto_2

    .line 181
    :cond_8
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->z1(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-nez v9, :cond_9

    .line 190
    .line 191
    invoke-virtual {v7, v6, v8, v1}, Lcom/mycompany/app/main/MainFilterDown;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    goto :goto_1

    .line 196
    :cond_9
    move v8, v2

    .line 197
    :goto_1
    if-nez v8, :cond_a

    .line 198
    .line 199
    invoke-virtual {v7, v6, v1, v1}, Lcom/mycompany/app/main/MainFilterDown;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    :cond_a
    :goto_2
    iput-boolean v8, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->k:Z

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    iput-boolean v5, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->k:Z

    .line 207
    .line 208
    :goto_3
    iget-boolean v6, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->k:Z

    .line 209
    .line 210
    if-eqz v6, :cond_c

    .line 211
    .line 212
    iget-object v6, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 213
    .line 214
    invoke-static {v6, v1, v4}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 215
    .line 216
    .line 217
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainFilterSvc;->f:Z

    .line 218
    .line 219
    :cond_c
    if-nez v3, :cond_f

    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/mycompany/app/main/MainFilterSvc;->k:Lcom/mycompany/app/main/MainFilterDown;

    .line 224
    .line 225
    if-nez v0, :cond_d

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_d
    const-string v3, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt"

    .line 229
    .line 230
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->z1(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_e

    .line 239
    .line 240
    invoke-virtual {v0, v1, v4, v3}, Lcom/mycompany/app/main/MainFilterDown;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    :cond_e
    if-nez v2, :cond_f

    .line 245
    .line 246
    invoke-virtual {v0, v1, v3, v3}, Lcom/mycompany/app/main/MainFilterDown;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    :cond_f
    :goto_4
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/main/MainFilterSvc;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterSvc;->c()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/main/MainFilterSvc;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->d:Lcom/mycompany/app/main/MainFilterSvc$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->e:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterSvc;->c()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->c:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;

    .line 39
    .line 40
    invoke-direct {v2, p0, v0}, Lcom/mycompany/app/main/MainFilterSvc$DialogTask$1;-><init>(Lcom/mycompany/app/main/MainFilterSvc$DialogTask;Lcom/mycompany/app/main/MainFilterSvc;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

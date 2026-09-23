.class Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobInfoConverter"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    .line 9
    .line 10
    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->a:Landroid/content/ComponentName;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;
    .locals 12

    .line 1
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 2
    .line 3
    new-instance v1, Landroid/os/PersistableBundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "EXTRA_WORK_SPEC_ID"

    .line 9
    .line 10
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "EXTRA_IS_PERIODIC"

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->a:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, v0, Landroidx/work/Constraints;->b:Z

    .line 32
    .line 33
    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-boolean v2, v0, Landroidx/work/Constraints;->c:Z

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v1, v0, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 48
    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v3, 0x1e

    .line 52
    .line 53
    const/16 v4, 0x18

    .line 54
    .line 55
    const/16 v5, 0x1a

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x1

    .line 59
    if-lt v2, v3, :cond_0

    .line 60
    .line 61
    sget-object v3, Landroidx/work/NetworkType;->j:Landroidx/work/NetworkType;

    .line 62
    .line 63
    if-ne v1, v3, :cond_0

    .line 64
    .line 65
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x19

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    if-eq v3, v7, :cond_4

    .line 91
    .line 92
    const/4 v8, 0x2

    .line 93
    if-eq v3, v8, :cond_6

    .line 94
    .line 95
    const/4 v8, 0x3

    .line 96
    if-eq v3, v8, :cond_2

    .line 97
    .line 98
    const/4 v8, 0x4

    .line 99
    if-eq v3, v8, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    if-lt v2, v5, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    if-lt v2, v4, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v9, "API version too low. Cannot convert network type value "

    .line 115
    .line 116
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-array v8, v6, [Ljava/lang/Throwable;

    .line 127
    .line 128
    sget-object v9, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v9, v1, v8}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    move v8, v7

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move v8, v6

    .line 136
    :cond_6
    :goto_1
    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 137
    .line 138
    .line 139
    :goto_2
    iget-boolean v1, v0, Landroidx/work/Constraints;->c:Z

    .line 140
    .line 141
    if-nez v1, :cond_8

    .line 142
    .line 143
    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 144
    .line 145
    sget-object v3, Landroidx/work/BackoffPolicy;->f:Landroidx/work/BackoffPolicy;

    .line 146
    .line 147
    if-ne v1, v3, :cond_7

    .line 148
    .line 149
    move v1, v6

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move v1, v7

    .line 152
    :goto_3
    iget-wide v8, p1, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 153
    .line 154
    invoke-virtual {p2, v8, v9, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v10

    .line 165
    sub-long/2addr v8, v10

    .line 166
    const-wide/16 v10, 0x0

    .line 167
    .line 168
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    const/16 v1, 0x1c

    .line 173
    .line 174
    if-gt v2, v1, :cond_9

    .line 175
    .line 176
    invoke-virtual {p2, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    cmp-long v1, v8, v10

    .line 181
    .line 182
    if-lez v1, :cond_a

    .line 183
    .line 184
    invoke-virtual {p2, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_a
    iget-boolean v1, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 189
    .line 190
    if-nez v1, :cond_b

    .line 191
    .line 192
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 193
    .line 194
    .line 195
    :cond_b
    :goto_4
    if-lt v2, v4, :cond_d

    .line 196
    .line 197
    iget-object v1, v0, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 198
    .line 199
    iget-object v1, v1, Landroidx/work/ContentUriTriggers;->a:Ljava/util/HashSet;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-lez v1, :cond_d

    .line 206
    .line 207
    iget-object v1, v0, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 208
    .line 209
    iget-object v1, v1, Landroidx/work/ContentUriTriggers;->a:Ljava/util/HashSet;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_c

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroidx/work/ContentUriTriggers$Trigger;

    .line 226
    .line 227
    iget-boolean v3, v2, Landroidx/work/ContentUriTriggers$Trigger;->b:Z

    .line 228
    .line 229
    new-instance v4, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 230
    .line 231
    iget-object v2, v2, Landroidx/work/ContentUriTriggers$Trigger;->a:Landroid/net/Uri;

    .line 232
    .line 233
    new-instance v4, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 234
    .line 235
    invoke-direct {v4, v2, v3}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v4}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_c
    iget-wide v1, v0, Landroidx/work/Constraints;->f:J

    .line 243
    .line 244
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 245
    .line 246
    .line 247
    iget-wide v1, v0, Landroidx/work/Constraints;->g:J

    .line 248
    .line 249
    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 250
    .line 251
    .line 252
    :cond_d
    invoke-virtual {p2, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 253
    .line 254
    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 256
    .line 257
    if-lt v1, v5, :cond_e

    .line 258
    .line 259
    iget-boolean v1, v0, Landroidx/work/Constraints;->d:Z

    .line 260
    .line 261
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 262
    .line 263
    .line 264
    iget-boolean v0, v0, Landroidx/work/Constraints;->e:Z

    .line 265
    .line 266
    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 267
    .line 268
    .line 269
    :cond_e
    iget v0, p1, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 270
    .line 271
    if-lez v0, :cond_f

    .line 272
    .line 273
    move v6, v7

    .line 274
    :cond_f
    invoke-static {}, Landroidx/core/os/BuildCompat;->b()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    iget-boolean p1, p1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 281
    .line 282
    if-eqz p1, :cond_10

    .line 283
    .line 284
    if-nez v6, :cond_10

    .line 285
    .line 286
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 287
    .line 288
    .line 289
    :cond_10
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    return-object p1
.end method

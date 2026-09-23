.class final synthetic Lcom/google/android/gms/internal/cast/zzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzq;->c:Lcom/google/android/gms/internal/cast/zzr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzq;->c:Lcom/google/android/gms/internal/cast/zzr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzr;->b:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzr;->f:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzr;->g:Ljava/util/HashSet;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eq v4, v5, :cond_1

    .line 22
    .line 23
    const-wide/32 v4, 0x5265c00

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-wide/32 v4, 0xa4cb800

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/cast/zzr;->h:Lcom/google/android/gms/common/util/Clock;

    .line 31
    .line 32
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/google/android/gms/common/util/Clock;

    .line 37
    .line 38
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    iget-wide v8, v0, Lcom/google/android/gms/internal/cast/zzr;->i:J

    .line 43
    .line 44
    const-wide/16 v10, 0x0

    .line 45
    .line 46
    cmp-long v12, v8, v10

    .line 47
    .line 48
    if-eqz v12, :cond_3

    .line 49
    .line 50
    sub-long v8, v6, v8

    .line 51
    .line 52
    cmp-long v4, v8, v4

    .line 53
    .line 54
    if-ltz v4, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    return-void

    .line 58
    :cond_3
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/cast/zzr;->j:Lcom/google/android/gms/cast/internal/Logger;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v8, "Upload the feature usage report."

    .line 64
    .line 65
    invoke-virtual {v4, v8, v5}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqc;->n()Lcom/google/android/gms/internal/cast/zzqb;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    sget-object v5, Lcom/google/android/gms/internal/cast/zzr;->k:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 75
    .line 76
    .line 77
    iget-object v8, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 78
    .line 79
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqc;

    .line 80
    .line 81
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/cast/zzqc;->p(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzr;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 87
    .line 88
    .line 89
    iget-object v8, v4, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 90
    .line 91
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqc;

    .line 92
    .line 93
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/cast/zzqc;->o(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqc;

    .line 101
    .line 102
    new-instance v5, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzpw;->n()Lcom/google/android/gms/internal/cast/zzpv;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 115
    .line 116
    .line 117
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 118
    .line 119
    check-cast v9, Lcom/google/android/gms/internal/cast/zzpw;

    .line 120
    .line 121
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/cast/zzpw;->p(Ljava/util/ArrayList;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 125
    .line 126
    .line 127
    iget-object v5, v8, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 128
    .line 129
    check-cast v5, Lcom/google/android/gms/internal/cast/zzpw;

    .line 130
    .line 131
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/zzpw;->o(Lcom/google/android/gms/internal/cast/zzqc;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lcom/google/android/gms/internal/cast/zzpw;

    .line 139
    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqr;->o()Lcom/google/android/gms/internal/cast/zzqq;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 145
    .line 146
    .line 147
    iget-object v8, v5, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 148
    .line 149
    check-cast v8, Lcom/google/android/gms/internal/cast/zzqr;

    .line 150
    .line 151
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/cast/zzqr;->A(Lcom/google/android/gms/internal/cast/zzpw;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Lcom/google/android/gms/internal/cast/zzqr;

    .line 159
    .line 160
    iget-object v5, v0, Lcom/google/android/gms/internal/cast/zzr;->a:Lcom/google/android/gms/internal/cast/zzj;

    .line 161
    .line 162
    const/16 v8, 0xf3

    .line 163
    .line 164
    invoke-virtual {v5, v8, v4}, Lcom/google/android/gms/internal/cast/zzj;->b(ILcom/google/android/gms/internal/cast/zzqr;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_6

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Lcom/google/android/gms/internal/cast/zzpm;

    .line 198
    .line 199
    iget v3, v3, Lcom/google/android/gms/internal/cast/zzpm;->c:I

    .line 200
    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const-string v5, "feature_usage_timestamp_reported_feature_"

    .line 206
    .line 207
    invoke-static {v5, v3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_5

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_5
    const-string v8, "feature_usage_timestamp_detected_feature_"

    .line 219
    .line 220
    invoke-static {v8, v3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    :goto_4
    invoke-static {v5, v3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-nez v5, :cond_4

    .line 233
    .line 234
    invoke-interface {v1, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v12

    .line 238
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    .line 241
    cmp-long v5, v12, v10

    .line 242
    .line 243
    if-eqz v5, :cond_4

    .line 244
    .line 245
    invoke-interface {v4, v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    iput-wide v6, v0, Lcom/google/android/gms/internal/cast/zzr;->i:J

    .line 250
    .line 251
    const-string v0, "feature_usage_last_report_time"

    .line 252
    .line 253
    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    .line 259
    .line 260
    return-void
.end method

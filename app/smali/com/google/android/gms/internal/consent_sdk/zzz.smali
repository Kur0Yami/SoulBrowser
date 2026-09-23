.class final Lcom/google/android/gms/internal/consent_sdk/zzz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zze;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zzao;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field public final d:Lcom/google/android/gms/internal/consent_sdk/zzcr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzao;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->a:Lcom/google/android/gms/internal/consent_sdk/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->b:Lcom/google/android/gms/internal/consent_sdk/zzao;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->c:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->d:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/consent_sdk/zzcn;)Lcom/google/android/gms/internal/consent_sdk/zzab;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->a:I

    .line 8
    .line 9
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->c:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 10
    .line 11
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 12
    .line 13
    iget v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->g:I

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    move v3, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v1

    .line 23
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->c:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 24
    .line 25
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;->b:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, "is_pub_misconfigured"

    .line 32
    .line 33
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v2, -0x1

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v2, :cond_b

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    const-string v7, "Invalid response from server."

    .line 47
    .line 48
    const/4 v8, 0x2

    .line 49
    packed-switch v3, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 53
    .line 54
    invoke-direct {p1, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v1, "Publisher misconfiguration: "

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v1, "Invalid response from server: "

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, v4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :pswitch_2
    iput v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->a:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_3
    iput v8, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->a:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :pswitch_4
    iput v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->a:I

    .line 101
    .line 102
    :goto_1
    iget v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->h:I

    .line 103
    .line 104
    add-int/lit8 v3, v2, -0x1

    .line 105
    .line 106
    if-eqz v2, :cond_a

    .line 107
    .line 108
    if-eq v3, v4, :cond_2

    .line 109
    .line 110
    if-ne v3, v8, :cond_1

    .line 111
    .line 112
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->f:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 113
    .line 114
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 118
    .line 119
    invoke-direct {p1, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_2
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->g:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 124
    .line 125
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 126
    .line 127
    :goto_2
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->a:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v2, :cond_3

    .line 130
    .line 131
    move-object v3, v6

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 134
    .line 135
    iget-object v7, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_3
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->f:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->d:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 143
    .line 144
    iget-object v7, v7, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    .line 146
    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/util/HashSet;

    .line 150
    .line 151
    iget-object v7, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->d:Ljava/util/List;

    .line 152
    .line 153
    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .line 155
    .line 156
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;->b:Landroid/content/SharedPreferences;

    .line 157
    .line 158
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    const-string v7, "stored_info"

    .line 163
    .line 164
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->e:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_9

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    .line 188
    .line 189
    iget v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->b:I

    .line 190
    .line 191
    add-int/lit8 v7, v5, -0x1

    .line 192
    .line 193
    if-eqz v5, :cond_8

    .line 194
    .line 195
    if-eqz v7, :cond_7

    .line 196
    .line 197
    if-eq v7, v4, :cond_6

    .line 198
    .line 199
    if-ne v7, v8, :cond_5

    .line 200
    .line 201
    const-string v5, "clear"

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 205
    .line 206
    invoke-direct {p1, v6, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_6
    const-string v5, "write"

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_7
    move-object v5, v6

    .line 214
    :goto_5
    if-eqz v5, :cond_4

    .line 215
    .line 216
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->a:Ljava/lang/String;

    .line 217
    .line 218
    new-array v7, v4, [Lcom/google/android/gms/internal/consent_sdk/zzd;

    .line 219
    .line 220
    iget-object v9, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->b:Lcom/google/android/gms/internal/consent_sdk/zzao;

    .line 221
    .line 222
    aput-object v9, v7, v1

    .line 223
    .line 224
    iget-object v9, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->a:Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 225
    .line 226
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v10, Lcom/google/android/gms/internal/consent_sdk/zzc;

    .line 230
    .line 231
    invoke-direct {v10, v5, v2, v7}, Lcom/google/android/gms/internal/consent_sdk/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzd;)V

    .line 232
    .line 233
    .line 234
    iget-object v2, v9, Lcom/google/android/gms/internal/consent_sdk/zze;->a:Ljava/util/concurrent/Executor;

    .line 235
    .line 236
    invoke-interface {v2, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    throw v6

    .line 241
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 242
    .line 243
    iget v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->a:I

    .line 244
    .line 245
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzy;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 246
    .line 247
    invoke-direct {p1, v1, v0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzab;-><init>(ILcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;Lcom/google/android/gms/internal/consent_sdk/zzbs;)V

    .line 248
    .line 249
    .line 250
    return-object p1

    .line 251
    :cond_a
    throw v6

    .line 252
    :cond_b
    throw v6

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/consent_sdk/zzw;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lcom/google/android/ump/ConsentRequestParameters;

.field public final synthetic h:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

.field public final synthetic i:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->c:Lcom/google/android/gms/internal/consent_sdk/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->f:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->g:Lcom/google/android/ump/ConsentRequestParameters;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->h:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->i:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->c:Lcom/google/android/gms/internal/consent_sdk/zzw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->f:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->g:Lcom/google/android/ump/ConsentRequestParameters;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->h:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->i:Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;

    .line 10
    .line 11
    const-string v5, "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\""

    .line 12
    .line 13
    const/16 v6, 0x9

    .line 14
    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    :try_start_0
    iget-object v8, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->a:Landroid/app/Application;

    .line 18
    .line 19
    invoke-static {v8}, Lcom/google/android/gms/internal/consent_sdk/zzct;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, "\") to set this as a debug device."

    .line 32
    .line 33
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v8, "UserMessagingPlatform"

    .line 41
    .line 42
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->f:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 46
    .line 47
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->a(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;)Lcom/google/android/gms/internal/consent_sdk/zzcl;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzw;->a(Lcom/google/android/gms/internal/consent_sdk/zzcl;)Lcom/google/android/gms/internal/consent_sdk/zzcn;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->g:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzz;->a(Lcom/google/android/gms/internal/consent_sdk/zzcn;)Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->d:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 62
    .line 63
    iget v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzab;->a:I

    .line 64
    .line 65
    iget-object v8, v2, Lcom/google/android/gms/internal/consent_sdk/zzaq;->b:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const-string v9, "consent_status"

    .line 72
    .line 73
    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .line 79
    .line 80
    iget-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzab;->b:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzaq;->b:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v8, "privacy_options_requirement_status"

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->e:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 102
    .line 103
    iget-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzab;->c:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzbq;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->i:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 111
    .line 112
    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcr;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Ljava/util/Queue;

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    invoke-virtual {v2, v5, v7, v6, v8}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->h:Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zze;->a:Ljava/util/concurrent/Executor;

    .line 127
    .line 128
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzu;

    .line 129
    .line 130
    invoke-direct {v5, v0, v3, v1}, Lcom/google/android/gms/internal/consent_sdk/zzu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/gms/internal/consent_sdk/zzab;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    goto :goto_1

    .line 141
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->i:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const-string v5, "RequestConsentUpdate RuntimeException. "

    .line 152
    .line 153
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcr;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/util/Queue;

    .line 164
    .line 165
    invoke-virtual {v2, v5, v7, v6, v3}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 169
    .line 170
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v3, "Caught exception when trying to request consent info update: "

    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->b:Landroid/os/Handler;

    .line 189
    .line 190
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzs;

    .line 191
    .line 192
    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/consent_sdk/zzs;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->i:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    const-string v8, "RequestConsentUpdate exception. Error: "

    .line 214
    .line 215
    const-string v9, ", cause: "

    .line 216
    .line 217
    invoke-static {v8, v3, v9, v5}, Landroid/support/v4/media/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcr;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/util/Queue;

    .line 228
    .line 229
    invoke-virtual {v2, v5, v7, v6, v3}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->a(Ljava/util/Queue;IILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzw;->b:Landroid/os/Handler;

    .line 233
    .line 234
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzr;

    .line 235
    .line 236
    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/zzr;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    :goto_2
    return-void
.end method

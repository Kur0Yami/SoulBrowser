.class public abstract Lcom/google/android/gms/auth/api/signin/internal/zbo;
.super Lcom/google/android/gms/internal/auth-api/zbb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/zbp;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    if-eq p1, p3, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    move-object p1, p0

    .line 10
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->f2()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;->c:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->b()V

    .line 22
    .line 23
    .line 24
    return p3

    .line 25
    :cond_1
    move-object p1, p0

    .line 26
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->f2()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbt;->c:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->o:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    const-string v2, "defaultGoogleSignInAccount"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v4, "googleSignInOptions"

    .line 60
    .line 61
    invoke-static {v4, v2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->F(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    move-object v2, v0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    :cond_3
    :goto_0
    move-object v2, v3

    .line 78
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 85
    .line 86
    sget-object v4, Lcom/google/android/gms/auth/api/Auth;->a:Lcom/google/android/gms/common/api/Api;

    .line 87
    .line 88
    new-instance v5, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    .line 89
    .line 90
    invoke-direct {v5}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v6, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    .line 94
    .line 95
    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->setMapper(Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->build()Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-direct {v0, p1, v4, v2, v5}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x3

    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->g()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-ne v0, p1, :cond_5

    .line 125
    .line 126
    move p1, p3

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    move p1, p2

    .line 129
    :goto_2
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a:Lcom/google/android/gms/common/logging/Logger;

    .line 130
    .line 131
    const-string v4, "Revoking access"

    .line 132
    .line 133
    new-array p2, p2, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v0, v4, p2}, Lcom/google/android/gms/common/logging/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const-string v0, "refreshToken"

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    if-nez p2, :cond_6

    .line 154
    .line 155
    sget-object p1, Lcom/google/android/gms/auth/api/signin/internal/zbb;->g:Lcom/google/android/gms/common/logging/Logger;

    .line 156
    .line 157
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 158
    .line 159
    const/4 p2, 0x4

    .line 160
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v3}, Lcom/google/android/gms/common/api/PendingResults;->immediateFailedResult(Lcom/google/android/gms/common/api/Result;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_3

    .line 168
    :cond_6
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbb;

    .line 169
    .line 170
    invoke-direct {p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zbb;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance p2, Ljava/lang/Thread;

    .line 174
    .line 175
    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbb;->f:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbk;

    .line 185
    .line 186
    invoke-direct {p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toVoidTask(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    .line 194
    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->g()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-ne v0, p1, :cond_9

    .line 210
    .line 211
    move p1, p3

    .line 212
    goto :goto_4

    .line 213
    :cond_9
    move p1, p2

    .line 214
    :goto_4
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a:Lcom/google/android/gms/common/logging/Logger;

    .line 215
    .line 216
    const-string v3, "Signing out"

    .line 217
    .line 218
    new-array p2, p2, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/common/logging/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    .line 229
    .line 230
    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    goto :goto_5

    .line 235
    :cond_a
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbi;

    .line 236
    .line 237
    invoke-direct {p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zbl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->toVoidTask(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    .line 245
    .line 246
    .line 247
    :goto_6
    return p3
.end method

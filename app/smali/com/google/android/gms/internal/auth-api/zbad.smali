.class public final Lcom/google/android/gms/internal/auth-api/zbad;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/AuthorizationClient;


# static fields
.field public static final b:Lcom/google/android/gms/common/api/Api;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbw;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    .line 12
    .line 13
    const-string v3, "Auth.Api.Identity.Authorization.API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbad;->b:Lcom/google/android/gms/common/api/Api;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zba;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth-api/zbad;->b:Lcom/google/android/gms/common/api/Api;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbaw;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbad;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->values()[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    array-length v7, v6

    .line 51
    move v8, v2

    .line 52
    :goto_1
    if-ge v8, v7, :cond_2

    .line 53
    .line 54
    aget-object v9, v6, v8

    .line 55
    .line 56
    iget-object v10, v9, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v9, 0x0

    .line 69
    :goto_2
    if-eqz v5, :cond_0

    .line 70
    .line 71
    if-eqz v9, :cond_0

    .line 72
    .line 73
    const-string v4, "Resource parameter cannot be null"

    .line 74
    .line 75
    invoke-static {v9, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v4, "Resource parameter value cannot be null"

    .line 79
    .line 80
    invoke-static {v5, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v4, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->i:Landroid/os/Bundle;

    .line 84
    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    new-instance v4, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v4, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->i:Landroid/os/Bundle;

    .line 93
    .line 94
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->i:Landroid/os/Bundle;

    .line 95
    .line 96
    iget-object v6, v9, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-boolean v1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    .line 103
    .line 104
    iget-object v3, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v5, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    .line 109
    .line 110
    iget-object v6, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    iput-object v3, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->g:Ljava/lang/String;

    .line 115
    .line 116
    :cond_5
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->f:Ljava/lang/String;

    .line 123
    .line 124
    :cond_6
    if-eqz v5, :cond_7

    .line 125
    .line 126
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Landroid/accounts/Account;

    .line 131
    .line 132
    iput-object v3, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->e:Landroid/accounts/Account;

    .line 133
    .line 134
    :cond_7
    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    .line 135
    .line 136
    const-string v4, "two different server client ids provided"

    .line 137
    .line 138
    const/4 v5, 0x1

    .line 139
    if-eqz v3, :cond_a

    .line 140
    .line 141
    if-eqz v6, :cond_a

    .line 142
    .line 143
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object v3, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_9

    .line 155
    .line 156
    :cond_8
    move v3, v5

    .line 157
    goto :goto_3

    .line 158
    :cond_9
    move v3, v2

    .line 159
    :goto_3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iput-object v6, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b:Ljava/lang/String;

    .line 163
    .line 164
    iput-boolean v5, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->d:Z

    .line 165
    .line 166
    :cond_a
    iget-boolean v3, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    .line 167
    .line 168
    if-eqz v3, :cond_d

    .line 169
    .line 170
    if-eqz v6, :cond_d

    .line 171
    .line 172
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v3, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b:Ljava/lang/String;

    .line 176
    .line 177
    if-eqz v3, :cond_b

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_c

    .line 184
    .line 185
    :cond_b
    move v3, v5

    .line 186
    goto :goto_4

    .line 187
    :cond_c
    move v3, v2

    .line 188
    :goto_4
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iput-object v6, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->b:Ljava/lang/String;

    .line 192
    .line 193
    iput-boolean v5, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->c:Z

    .line 194
    .line 195
    iput-boolean v1, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->h:Z

    .line 196
    .line 197
    :cond_d
    iget-boolean p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    .line 198
    .line 199
    iput-boolean p1, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->j:Z

    .line 200
    .line 201
    iget-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbad;->a:Ljava/lang/String;

    .line 202
    .line 203
    iput-object p1, v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->g:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$Builder;->a()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-array v1, v5, [Lcom/google/android/gms/common/Feature;

    .line 214
    .line 215
    sget-object v3, Lcom/google/android/gms/internal/auth-api/zbav;->b:Lcom/google/android/gms/common/Feature;

    .line 216
    .line 217
    aput-object v3, v1, v2

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v1, Lcom/google/android/gms/internal/auth-api/zbac;

    .line 224
    .line 225
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbac;-><init>(Lcom/google/android/gms/internal/auth-api/zbad;Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const/16 v0, 0x5fe

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    return-object p1
.end method

.method public final h(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/AuthorizationResult;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, "status"

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v0, "authorization_result"

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationResult;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 35
    .line 36
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    .line 37
    .line 38
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 49
    .line 50
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    .line 57
    .line 58
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    .line 59
    .line 60
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

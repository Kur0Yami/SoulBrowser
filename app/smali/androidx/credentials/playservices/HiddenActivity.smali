.class public Landroidx/credentials/playservices/HiddenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/HiddenActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/credentials/playservices/HiddenActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "Companion",
        "credentials-play-services-auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public c:Landroid/os/ResultReceiver;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->a:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->c(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Landroid/os/ResultReceiver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->a:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 9
    .line 10
    invoke-static {v0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->d(Landroid/os/ResultReceiver;IILandroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/credentials/playservices/HiddenActivity;->f:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "TYPE"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "RESULT_RECEIVER"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/os/ResultReceiver;

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Landroid/os/ResultReceiver;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string v2, "androidx.credentials.playservices.AWAITING_RESULT"

    .line 40
    .line 41
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, p0, Landroidx/credentials/playservices/HiddenActivity;->f:Z

    .line 46
    .line 47
    :cond_1
    iget-boolean p1, p0, Landroidx/credentials/playservices/HiddenActivity;->f:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const-string p1, "HiddenActivity"

    .line 54
    .line 55
    if-eqz v1, :cond_c

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x3

    .line 62
    const/4 v4, 0x2

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    const-string v7, "ACTIVITY_REQUEST_CODE"

    .line 66
    .line 67
    const-string v8, "REQUEST_TYPE"

    .line 68
    .line 69
    sparse-switch v2, :sswitch_data_0

    .line 70
    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_0
    const-string v0, "SIGN_IN_INTENT"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbat;

    .line 105
    .line 106
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/app/Activity;

    .line 111
    .line 112
    new-instance v5, Lcom/google/android/gms/auth/api/identity/zbx;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/auth-api/zbat;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbx;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth-api/zbat;->h(Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)Lcom/google/android/gms/tasks/Task;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v2, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;

    .line 125
    .line 126
    invoke-direct {v2, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Landroidx/credentials/playservices/a;

    .line 130
    .line 131
    const/4 v3, 0x4

    .line 132
    invoke-direct {v1, v3, v2}, Landroidx/credentials/playservices/a;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    new-instance v0, Landroidx/credentials/playservices/e;

    .line 140
    .line 141
    invoke-direct {v0, p0, v4}, Landroidx/credentials/playservices/e;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 145
    .line 146
    .line 147
    :cond_4
    if-nez v5, :cond_b

    .line 148
    .line 149
    const-string v0, "During get sign-in intent, params is null, nothing to launch for get sign-in intent"

    .line 150
    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :sswitch_1
    const-string v0, "CREATE_PASSWORD"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_5

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbaj;

    .line 189
    .line 190
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Landroid/app/Activity;

    .line 195
    .line 196
    new-instance v5, Lcom/google/android/gms/auth/api/identity/zbk;

    .line 197
    .line 198
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/auth-api/zbaj;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbk;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth-api/zbaj;->g(Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)Lcom/google/android/gms/tasks/Task;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v2, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;

    .line 209
    .line 210
    invoke-direct {v2, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Landroidx/credentials/playservices/a;

    .line 214
    .line 215
    invoke-direct {v1, v3, v2}, Landroidx/credentials/playservices/a;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    new-instance v0, Landroidx/credentials/playservices/e;

    .line 223
    .line 224
    invoke-direct {v0, p0, v6}, Landroidx/credentials/playservices/e;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 228
    .line 229
    .line 230
    :cond_6
    if-nez v5, :cond_b

    .line 231
    .line 232
    const-string v0, "During save password, params is null, nothing to launch for create password"

    .line 233
    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :sswitch_2
    const-string v2, "CREATE_PUBLIC_KEY_CREDENTIAL"

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_7

    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    .line 260
    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v1, :cond_8

    .line 270
    .line 271
    sget v3, Lcom/google/android/gms/fido/Fido;->a:I

    .line 272
    .line 273
    new-instance v3, Lcom/google/android/gms/fido/fido2/Fido2ApiClient;

    .line 274
    .line 275
    sget-object v5, Lcom/google/android/gms/fido/fido2/Fido2ApiClient;->a:Lcom/google/android/gms/common/api/Api;

    .line 276
    .line 277
    sget-object v6, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 278
    .line 279
    new-instance v7, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    .line 280
    .line 281
    invoke-direct {v7}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-direct {v3, p0, v5, v6, v7}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    new-instance v6, Lcom/google/android/gms/fido/fido2/zza;

    .line 292
    .line 293
    invoke-direct {v6, v3, v1}, Lcom/google/android/gms/fido/fido2/zza;-><init>(Lcom/google/android/gms/fido/fido2/Fido2ApiClient;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    const/16 v5, 0x151f

    .line 301
    .line 302
    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    new-instance v3, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;

    .line 315
    .line 316
    invoke-direct {v3, p0, v2}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Landroidx/credentials/playservices/a;

    .line 320
    .line 321
    invoke-direct {v2, v4, v3}, Landroidx/credentials/playservices/a;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    new-instance v1, Landroidx/credentials/playservices/e;

    .line 329
    .line 330
    invoke-direct {v1, p0, v0}, Landroidx/credentials/playservices/e;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 334
    .line 335
    .line 336
    :cond_8
    if-nez v5, :cond_b

    .line 337
    .line 338
    const-string v0, "During create public key credential, request is null, so nothing to launch for public key credentials"

    .line 339
    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :sswitch_3
    const-string v0, "BEGIN_SIGN_IN"

    .line 348
    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_9

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    .line 365
    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v0, :cond_a

    .line 375
    .line 376
    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbat;

    .line 377
    .line 378
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Landroid/app/Activity;

    .line 383
    .line 384
    new-instance v5, Lcom/google/android/gms/auth/api/identity/zbx;

    .line 385
    .line 386
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/auth-api/zbat;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbx;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth-api/zbat;->g(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lcom/google/android/gms/tasks/Task;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    new-instance v2, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;

    .line 397
    .line 398
    invoke-direct {v2, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Landroidx/credentials/playservices/a;

    .line 402
    .line 403
    const/4 v4, 0x5

    .line 404
    invoke-direct {v1, v4, v2}, Landroidx/credentials/playservices/a;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->g(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    new-instance v0, Landroidx/credentials/playservices/e;

    .line 412
    .line 413
    invoke-direct {v0, p0, v3}, Landroidx/credentials/playservices/e;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 417
    .line 418
    .line 419
    :cond_a
    if-nez v5, :cond_b

    .line 420
    .line 421
    const-string v0, "During begin sign in, params is null, nothing to launch for begin sign in"

    .line 422
    .line 423
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 427
    .line 428
    .line 429
    :cond_b
    :goto_0
    return-void

    .line 430
    :cond_c
    :goto_1
    const-string v0, "Activity handed an unsupported type"

    .line 431
    .line 432
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :sswitch_data_0
    .sparse-switch
        -0x1a4a0ecf -> :sswitch_3
        0xed33ea -> :sswitch_2
        0x4a4e227e -> :sswitch_1
        0x760d02f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/credentials/playservices/HiddenActivity;->f:Z

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

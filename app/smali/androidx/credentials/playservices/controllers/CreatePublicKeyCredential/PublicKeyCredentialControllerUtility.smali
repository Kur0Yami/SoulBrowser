.class public final Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility$Companion;,
        Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility$GetGMSVersion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility;",
        "",
        "Companion",
        "GetGMSVersion",
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
.field public static final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Landroidx/credentials/exceptions/domerrors/UnknownError;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->m:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/credentials/exceptions/domerrors/AbortError;

    .line 13
    .line 14
    const-string v2, "androidx.credentials.TYPE_ABORT_ERROR"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->j:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 20
    .line 21
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NotReadableError;

    .line 26
    .line 27
    const-string v3, "androidx.credentials.TYPE_NOT_READABLE_ERROR"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->q:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 33
    .line 34
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Landroidx/credentials/exceptions/domerrors/ConstraintError;

    .line 39
    .line 40
    const-string v4, "androidx.credentials.TYPE_CONSTRAINT_ERROR"

    .line 41
    .line 42
    invoke-direct {v3, v4}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->n:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 46
    .line 47
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Landroidx/credentials/exceptions/domerrors/DataError;

    .line 52
    .line 53
    const-string v5, "androidx.credentials.TYPE_DATA_ERROR"

    .line 54
    .line 55
    invoke-direct {v4, v5}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v5, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->o:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 59
    .line 60
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v5, Landroidx/credentials/exceptions/domerrors/InvalidStateError;

    .line 65
    .line 66
    const-string v6, "androidx.credentials.TYPE_INVALID_STATE_ERROR"

    .line 67
    .line 68
    invoke-direct {v5, v6}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v6, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->g:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 72
    .line 73
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v6, Landroidx/credentials/exceptions/domerrors/EncodingError;

    .line 78
    .line 79
    invoke-direct {v6}, Landroidx/credentials/exceptions/domerrors/EncodingError;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v7, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->l:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 83
    .line 84
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v7, Landroidx/credentials/exceptions/domerrors/NetworkError;

    .line 89
    .line 90
    const-string v8, "androidx.credentials.TYPE_NETWORK_ERROR"

    .line 91
    .line 92
    invoke-direct {v7, v8}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v8, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->i:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 96
    .line 97
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-instance v8, Landroidx/credentials/exceptions/domerrors/NotAllowedError;

    .line 102
    .line 103
    const-string v9, "androidx.credentials.TYPE_NOT_ALLOWED_ERROR"

    .line 104
    .line 105
    invoke-direct {v8, v9}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v9, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->p:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 109
    .line 110
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    new-instance v9, Landroidx/credentials/exceptions/domerrors/NotSupportedError;

    .line 115
    .line 116
    const-string v10, "androidx.credentials.TYPE_NOT_SUPPORTED_ERROR"

    .line 117
    .line 118
    invoke-direct {v9, v10}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v10, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->f:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 122
    .line 123
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    new-instance v10, Landroidx/credentials/exceptions/domerrors/SecurityError;

    .line 128
    .line 129
    const-string v11, "androidx.credentials.TYPE_SECURITY_ERROR"

    .line 130
    .line 131
    invoke-direct {v10, v11}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v11, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->h:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 135
    .line 136
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    new-instance v11, Landroidx/credentials/exceptions/domerrors/TimeoutError;

    .line 141
    .line 142
    const-string v12, "androidx.credentials.TYPE_TIMEOUT_ERROR"

    .line 143
    .line 144
    invoke-direct {v11, v12}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v12, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->k:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 148
    .line 149
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    const/16 v12, 0xc

    .line 154
    .line 155
    new-array v12, v12, [Lkotlin/Pair;

    .line 156
    .line 157
    const/4 v13, 0x0

    .line 158
    aput-object v0, v12, v13

    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    aput-object v1, v12, v0

    .line 162
    .line 163
    const/4 v0, 0x2

    .line 164
    aput-object v2, v12, v0

    .line 165
    .line 166
    const/4 v0, 0x3

    .line 167
    aput-object v3, v12, v0

    .line 168
    .line 169
    const/4 v0, 0x4

    .line 170
    aput-object v4, v12, v0

    .line 171
    .line 172
    const/4 v0, 0x5

    .line 173
    aput-object v5, v12, v0

    .line 174
    .line 175
    const/4 v0, 0x6

    .line 176
    aput-object v6, v12, v0

    .line 177
    .line 178
    const/4 v0, 0x7

    .line 179
    aput-object v7, v12, v0

    .line 180
    .line 181
    const/16 v0, 0x8

    .line 182
    .line 183
    aput-object v8, v12, v0

    .line 184
    .line 185
    const/16 v0, 0x9

    .line 186
    .line 187
    aput-object v9, v12, v0

    .line 188
    .line 189
    const/16 v0, 0xa

    .line 190
    .line 191
    aput-object v10, v12, v0

    .line 192
    .line 193
    const/16 v0, 0xb

    .line 194
    .line 195
    aput-object v11, v12, v0

    .line 196
    .line 197
    invoke-static {v12}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/PublicKeyCredentialControllerUtility;->a:Ljava/util/LinkedHashMap;

    .line 202
    .line 203
    return-void
.end method

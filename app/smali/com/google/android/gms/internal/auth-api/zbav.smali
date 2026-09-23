.class public final Lcom/google/android/gms/internal/auth-api/zbav;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;

.field public static final e:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "auth_api_credentials_begin_sign_in"

    .line 4
    .line 5
    const-wide/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    const-string v2, "auth_api_credentials_sign_out"

    .line 13
    .line 14
    const-wide/16 v3, 0x2

    .line 15
    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbav;->a:Lcom/google/android/gms/common/Feature;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    const-string v3, "auth_api_credentials_authorize"

    .line 24
    .line 25
    const-wide/16 v4, 0x1

    .line 26
    .line 27
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/google/android/gms/internal/auth-api/zbav;->b:Lcom/google/android/gms/common/Feature;

    .line 31
    .line 32
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 33
    .line 34
    const-string v6, "auth_api_credentials_revoke_access"

    .line 35
    .line 36
    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 40
    .line 41
    const-string v7, "auth_api_credentials_clear_token"

    .line 42
    .line 43
    invoke-direct {v6, v7, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 47
    .line 48
    const-string v8, "auth_api_credentials_save_password"

    .line 49
    .line 50
    const-wide/16 v9, 0x4

    .line 51
    .line 52
    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lcom/google/android/gms/internal/auth-api/zbav;->c:Lcom/google/android/gms/common/Feature;

    .line 56
    .line 57
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    const-string v9, "auth_api_credentials_get_sign_in_intent"

    .line 60
    .line 61
    const-wide/16 v10, 0x6

    .line 62
    .line 63
    invoke-direct {v8, v9, v10, v11}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    sput-object v8, Lcom/google/android/gms/internal/auth-api/zbav;->d:Lcom/google/android/gms/common/Feature;

    .line 67
    .line 68
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 69
    .line 70
    const-string v10, "auth_api_credentials_save_account_linking_token"

    .line 71
    .line 72
    const-wide/16 v11, 0x3

    .line 73
    .line 74
    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 78
    .line 79
    const-string v13, "auth_api_credentials_get_phone_number_hint_intent"

    .line 80
    .line 81
    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 85
    .line 86
    const-string v12, "auth_api_credentials_verify_with_google"

    .line 87
    .line 88
    invoke-direct {v11, v12, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 89
    .line 90
    .line 91
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 92
    .line 93
    const-string v13, "auth_api_credentials_credential_provider"

    .line 94
    .line 95
    invoke-direct {v12, v13, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 99
    .line 100
    const-string v14, "auth_api_credentials_save_webauthn_credential_specifics"

    .line 101
    .line 102
    invoke-direct {v13, v14, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    new-instance v14, Lcom/google/android/gms/common/Feature;

    .line 106
    .line 107
    const-string v15, "auth_api_credentials_list_webauthn_credential_specifics"

    .line 108
    .line 109
    invoke-direct {v14, v15, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    new-instance v15, Lcom/google/android/gms/common/Feature;

    .line 113
    .line 114
    move-object/from16 v16, v0

    .line 115
    .line 116
    const-string v0, "auth_api_credentials_get_google_passkey_for_export"

    .line 117
    .line 118
    invoke-direct {v15, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 122
    .line 123
    move-object/from16 v17, v1

    .line 124
    .line 125
    const-string v1, "auth_api_credentials_get_authentication_intent"

    .line 126
    .line 127
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 131
    .line 132
    move-object/from16 v18, v0

    .line 133
    .line 134
    const-string v0, "auth_api_credentials_get_registration_intent"

    .line 135
    .line 136
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 140
    .line 141
    move-object/from16 v19, v1

    .line 142
    .line 143
    const-string v1, "auth_api_credentials_check_key_availability"

    .line 144
    .line 145
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 149
    .line 150
    move-object/from16 v20, v0

    .line 151
    .line 152
    const-string v0, "auth_api_credentials_has_discoverable_key"

    .line 153
    .line 154
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 158
    .line 159
    move-object/from16 v21, v1

    .line 160
    .line 161
    const-string v1, "auth_api_credentials_validate_calling_browser"

    .line 162
    .line 163
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 167
    .line 168
    move-object/from16 v22, v0

    .line 169
    .line 170
    const-string v0, "auth_api_credentials_validate_rp_id_and_calling_package"

    .line 171
    .line 172
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 176
    .line 177
    move-object/from16 v23, v1

    .line 178
    .line 179
    const-string v1, "auth_api_credentials_get_credential_list_for_browser"

    .line 180
    .line 181
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    const/16 v1, 0x15

    .line 185
    .line 186
    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    aput-object v16, v1, v4

    .line 190
    .line 191
    const/4 v4, 0x1

    .line 192
    aput-object v17, v1, v4

    .line 193
    .line 194
    const/4 v4, 0x2

    .line 195
    aput-object v2, v1, v4

    .line 196
    .line 197
    const/4 v2, 0x3

    .line 198
    aput-object v3, v1, v2

    .line 199
    .line 200
    const/4 v2, 0x4

    .line 201
    aput-object v6, v1, v2

    .line 202
    .line 203
    const/4 v2, 0x5

    .line 204
    aput-object v7, v1, v2

    .line 205
    .line 206
    const/4 v2, 0x6

    .line 207
    aput-object v8, v1, v2

    .line 208
    .line 209
    const/4 v2, 0x7

    .line 210
    aput-object v9, v1, v2

    .line 211
    .line 212
    const/16 v2, 0x8

    .line 213
    .line 214
    aput-object v10, v1, v2

    .line 215
    .line 216
    const/16 v2, 0x9

    .line 217
    .line 218
    aput-object v11, v1, v2

    .line 219
    .line 220
    const/16 v2, 0xa

    .line 221
    .line 222
    aput-object v12, v1, v2

    .line 223
    .line 224
    const/16 v2, 0xb

    .line 225
    .line 226
    aput-object v13, v1, v2

    .line 227
    .line 228
    const/16 v2, 0xc

    .line 229
    .line 230
    aput-object v14, v1, v2

    .line 231
    .line 232
    const/16 v2, 0xd

    .line 233
    .line 234
    aput-object v15, v1, v2

    .line 235
    .line 236
    const/16 v2, 0xe

    .line 237
    .line 238
    aput-object v18, v1, v2

    .line 239
    .line 240
    const/16 v2, 0xf

    .line 241
    .line 242
    aput-object v19, v1, v2

    .line 243
    .line 244
    const/16 v2, 0x10

    .line 245
    .line 246
    aput-object v20, v1, v2

    .line 247
    .line 248
    const/16 v2, 0x11

    .line 249
    .line 250
    aput-object v21, v1, v2

    .line 251
    .line 252
    const/16 v2, 0x12

    .line 253
    .line 254
    aput-object v22, v1, v2

    .line 255
    .line 256
    const/16 v2, 0x13

    .line 257
    .line 258
    aput-object v23, v1, v2

    .line 259
    .line 260
    const/16 v2, 0x14

    .line 261
    .line 262
    aput-object v0, v1, v2

    .line 263
    .line 264
    sput-object v1, Lcom/google/android/gms/internal/auth-api/zbav;->e:[Lcom/google/android/gms/common/Feature;

    .line 265
    .line 266
    return-void
.end method

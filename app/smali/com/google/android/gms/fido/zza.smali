.class public final Lcom/google/android/gms/fido/zza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "cancel_target_direct_transfer"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    const-string v1, "delete_credential"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 18
    .line 19
    const-string v1, "delete_device_public_key"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 25
    .line 26
    const-string v1, "get_or_generate_device_public_key"

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    const-string v1, "get_passkeys"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 39
    .line 40
    const-string v1, "update_passkey"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 46
    .line 47
    const-string v1, "is_user_verifying_platform_authenticator_available_for_credential"

    .line 48
    .line 49
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/android/gms/fido/zza;->a:Lcom/google/android/gms/common/Feature;

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 55
    .line 56
    const-string v1, "is_user_verifying_platform_authenticator_available"

    .line 57
    .line 58
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/google/android/gms/fido/zza;->b:Lcom/google/android/gms/common/Feature;

    .line 62
    .line 63
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 64
    .line 65
    const-string v1, "privileged_api_list_credentials"

    .line 66
    .line 67
    const-wide/16 v4, 0x2

    .line 68
    .line 69
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/google/android/gms/fido/zza;->c:Lcom/google/android/gms/common/Feature;

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 75
    .line 76
    const-string v1, "start_target_direct_transfer"

    .line 77
    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 82
    .line 83
    const-string v1, "first_party_api_get_link_info"

    .line 84
    .line 85
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 89
    .line 90
    const-string v1, "zero_party_api_register"

    .line 91
    .line 92
    const-wide/16 v6, 0x3

    .line 93
    .line 94
    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 98
    .line 99
    const-string v1, "zero_party_api_sign"

    .line 100
    .line 101
    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 105
    .line 106
    const-string v1, "zero_party_api_list_discoverable_credentials"

    .line 107
    .line 108
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 112
    .line 113
    const-string v1, "zero_party_api_authenticate_passkey"

    .line 114
    .line 115
    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 119
    .line 120
    const-string v1, "zero_party_api_register_passkey"

    .line 121
    .line 122
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 126
    .line 127
    const-string v1, "zero_party_api_register_passkey_with_sync_account"

    .line 128
    .line 129
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 133
    .line 134
    const-string v1, "zero_party_api_get_hybrid_client_registration_pending_intent"

    .line 135
    .line 136
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 140
    .line 141
    const-string v1, "zero_party_api_get_hybrid_client_sign_pending_intent"

    .line 142
    .line 143
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 147
    .line 148
    const-string v1, "get_browser_hybrid_client_sign_pending_intent"

    .line 149
    .line 150
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/google/android/gms/fido/zza;->d:Lcom/google/android/gms/common/Feature;

    .line 154
    .line 155
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 156
    .line 157
    const-string v1, "get_browser_hybrid_client_registration_pending_intent"

    .line 158
    .line 159
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 163
    .line 164
    const-string v1, "privileged_authenticate_passkey"

    .line 165
    .line 166
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 170
    .line 171
    const-string v1, "privileged_register_passkey_with_sync_account"

    .line 172
    .line 173
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 177
    .line 178
    const-string v1, "zero_party_api_get_privileged_hybrid_client_registration_pending_intent"

    .line 179
    .line 180
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 184
    .line 185
    const-string v1, "zero_party_api_get_privileged_hybrid_client_sign_pending_intent"

    .line 186
    .line 187
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 191
    .line 192
    const-string v1, "zero_party_api_get_fido_security_key_only_sign_pending_intent"

    .line 193
    .line 194
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 198
    .line 199
    const-string v1, "zero_party_api_get_fido_security_key_only_registration_pending_intent"

    .line 200
    .line 201
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 205
    .line 206
    const-string v1, "zero_party_api_get_privileged_fido_security_key_only_sign_pending_intent"

    .line 207
    .line 208
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 212
    .line 213
    const-string v1, "zero_party_api_get_privileged_fido_security_key_only_registration_pending_intent"

    .line 214
    .line 215
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.class public final Lcom/google/android/gms/auth/zze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "account_capability_api"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/auth/zze;->a:Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 13
    .line 14
    const-string v1, "account_data_service"

    .line 15
    .line 16
    const-wide/16 v4, 0x6

    .line 17
    .line 18
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    const-string v1, "account_data_service_legacy"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 29
    .line 30
    const-string v1, "account_data_service_token"

    .line 31
    .line 32
    const-wide/16 v4, 0x8

    .line 33
    .line 34
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 38
    .line 39
    const-string v1, "account_data_service_visibility"

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 45
    .line 46
    const-string v1, "config_sync"

    .line 47
    .line 48
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 52
    .line 53
    const-string v1, "device_account_api"

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 59
    .line 60
    const-string v1, "device_account_jwt_creation"

    .line 61
    .line 62
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 66
    .line 67
    const-string v1, "gaiaid_primary_email_api"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 73
    .line 74
    const-string v1, "get_restricted_accounts_api"

    .line 75
    .line 76
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    const-string v1, "google_auth_service_accounts"

    .line 82
    .line 83
    const-wide/16 v4, 0x2

    .line 84
    .line 85
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/google/android/gms/auth/zze;->b:Lcom/google/android/gms/common/Feature;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 91
    .line 92
    const-string v1, "google_auth_service_token"

    .line 93
    .line 94
    const-wide/16 v4, 0x3

    .line 95
    .line 96
    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/google/android/gms/auth/zze;->c:Lcom/google/android/gms/common/Feature;

    .line 100
    .line 101
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 102
    .line 103
    const-string v1, "hub_mode_api"

    .line 104
    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 109
    .line 110
    const-string v1, "work_account_client_is_whitelisted"

    .line 111
    .line 112
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/google/android/gms/auth/zze;->d:Lcom/google/android/gms/common/Feature;

    .line 116
    .line 117
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 118
    .line 119
    const-string v1, "factory_reset_protection_api"

    .line 120
    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 125
    .line 126
    const-string v1, "google_auth_api"

    .line 127
    .line 128
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

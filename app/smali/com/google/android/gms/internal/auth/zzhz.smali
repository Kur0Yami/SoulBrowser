.class public final Lcom/google/android/gms/internal/auth/zzhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzhx;


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final b:Lcom/google/android/gms/internal/auth/zzdc;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcr;->a()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->a()Lcom/google/android/gms/internal/auth/zzcz;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/auth/zzcz;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v0, v3, v3}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v4, Lcom/google/android/gms/internal/auth/zzcx;

    .line 30
    .line 31
    const-string v5, "getTokenRefactor__account_data_service_sample_percentage"

    .line 32
    .line 33
    invoke-direct {v4, v1, v5, v0}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const-string v4, "getTokenRefactor__account_data_service_tokenAPI_usable"

    .line 37
    .line 38
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 39
    .line 40
    .line 41
    const-wide/16 v4, 0x14

    .line 42
    .line 43
    const-string v6, "getTokenRefactor__account_manager_timeout_seconds"

    .line 44
    .line 45
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->b(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "getTokenRefactor__android_id_shift"

    .line 49
    .line 50
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    invoke-virtual {v1, v7, v8, v6}, Lcom/google/android/gms/internal/auth/zzcz;->b(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    const-string v6, "ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n"

    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6}, Lcom/google/android/gms/internal/auth/zzhs;->i([B)Lcom/google/android/gms/internal/auth/zzhs;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v7, Lcom/google/android/gms/internal/auth/zzcy;

    .line 67
    .line 68
    const-string v8, "getTokenRefactor__blocked_packages"

    .line 69
    .line 70
    invoke-direct {v7, v1, v8, v6}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lcom/google/android/gms/internal/auth/zzhz;->a:Lcom/google/android/gms/internal/auth/zzdc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    const-string v6, "getTokenRefactor__chimera_get_token_evolved"

    .line 76
    .line 77
    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 78
    .line 79
    .line 80
    const-string v6, "getTokenRefactor__clear_token_timeout_seconds"

    .line 81
    .line 82
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->b(JLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v6, "getTokenRefactor__default_task_timeout_seconds"

    .line 86
    .line 87
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->b(JLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v4, "getTokenRefactor__gaul_accounts_api_evolved"

    .line 91
    .line 92
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 93
    .line 94
    .line 95
    const-string v4, "getTokenRefactor__gaul_token_api_evolved"

    .line 96
    .line 97
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sput-object v2, Lcom/google/android/gms/internal/auth/zzhz;->b:Lcom/google/android/gms/internal/auth/zzdc;

    .line 102
    .line 103
    const-string v2, "getTokenRefactor__get_token_timeout_seconds"

    .line 104
    .line 105
    const-wide/16 v4, 0x78

    .line 106
    .line 107
    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/gms/internal/auth/zzcz;->b(JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "getTokenRefactor__gms_account_authenticator_evolved"

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcz;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    .line 113
    .line 114
    .line 115
    const-string v2, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    .line 116
    .line 117
    new-instance v3, Lcom/google/android/gms/internal/auth/zzcx;

    .line 118
    .line 119
    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/AssertionError;

    .line 125
    .line 126
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    throw v1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzhs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhz;->a:Lcom/google/android/gms/internal/auth/zzdc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/auth/zzhs;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhz;->b:Lcom/google/android/gms/internal/auth/zzdc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzcg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/google/android/gms/internal/consent_sdk/zzcg;

.field public static final synthetic f:[Lcom/google/android/gms/internal/consent_sdk/zzcg;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 2
    .line 3
    const-string v1, "DEBUG_PARAM_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 10
    .line 11
    const-string v3, "ALWAYS_SHOW"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 18
    .line 19
    const-string v5, "GEO_OVERRIDE_EEA"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 26
    .line 27
    const-string v7, "GEO_OVERRIDE_REGULATED_US_STATE"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 34
    .line 35
    const-string v9, "GEO_OVERRIDE_OTHER"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 42
    .line 43
    const-string v11, "GEO_OVERRIDE_NON_EEA"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 50
    .line 51
    const-string v13, "PREVIEWING_DEBUG_MESSAGES"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v11, Lcom/google/android/gms/internal/consent_sdk/zzcg;->c:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 58
    .line 59
    new-instance v13, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 60
    .line 61
    const-string v15, "GEO_OVERRIDE_USFL"

    .line 62
    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    const/4 v2, 0x7

    .line 66
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const/16 v15, 0x8

    .line 70
    .line 71
    new-array v15, v15, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 72
    .line 73
    aput-object v0, v15, v16

    .line 74
    .line 75
    aput-object v1, v15, v4

    .line 76
    .line 77
    aput-object v3, v15, v6

    .line 78
    .line 79
    aput-object v5, v15, v8

    .line 80
    .line 81
    aput-object v7, v15, v10

    .line 82
    .line 83
    aput-object v9, v15, v12

    .line 84
    .line 85
    aput-object v11, v15, v14

    .line 86
    .line 87
    aput-object v13, v15, v2

    .line 88
    .line 89
    sput-object v15, Lcom/google/android/gms/internal/consent_sdk/zzcg;->f:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 90
    .line 91
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzcg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcg;->f:[Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzcg;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 8
    .line 9
    return-object v0
.end method

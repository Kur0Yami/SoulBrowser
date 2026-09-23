.class public final Lcom/google/android/gms/internal/auth_blockstore/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "auth_blockstore"

    .line 4
    .line 5
    const-wide/16 v2, 0x3

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    const-string v4, "blockstore_data_transfer"

    .line 13
    .line 14
    const-wide/16 v5, 0x1

    .line 15
    .line 16
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 20
    .line 21
    const-string v7, "blockstore_notify_app_restore"

    .line 22
    .line 23
    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 27
    .line 28
    const-string v8, "blockstore_store_bytes_with_options"

    .line 29
    .line 30
    const-wide/16 v9, 0x2

    .line 31
    .line 32
    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 36
    .line 37
    const-string v11, "blockstore_is_end_to_end_encryption_available"

    .line 38
    .line 39
    invoke-direct {v8, v11, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 43
    .line 44
    const-string v12, "blockstore_enable_cloud_backup"

    .line 45
    .line 46
    invoke-direct {v11, v12, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 50
    .line 51
    const-string v13, "blockstore_delete_bytes"

    .line 52
    .line 53
    invoke-direct {v12, v13, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 57
    .line 58
    const-string v10, "blockstore_retrieve_bytes_with_options"

    .line 59
    .line 60
    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 64
    .line 65
    const-string v3, "auth_clear_restore_credential"

    .line 66
    .line 67
    invoke-direct {v2, v3, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    sput-object v2, Lcom/google/android/gms/internal/auth_blockstore/zzab;->a:Lcom/google/android/gms/common/Feature;

    .line 71
    .line 72
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 73
    .line 74
    const-string v10, "auth_create_restore_credential"

    .line 75
    .line 76
    invoke-direct {v3, v10, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    const-string v13, "auth_get_restore_credential"

    .line 82
    .line 83
    invoke-direct {v10, v13, v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    const/16 v5, 0xb

    .line 87
    .line 88
    new-array v5, v5, [Lcom/google/android/gms/common/Feature;

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    aput-object v0, v5, v6

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    aput-object v1, v5, v0

    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    aput-object v4, v5, v0

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    aput-object v7, v5, v0

    .line 101
    .line 102
    const/4 v0, 0x4

    .line 103
    aput-object v8, v5, v0

    .line 104
    .line 105
    const/4 v0, 0x5

    .line 106
    aput-object v11, v5, v0

    .line 107
    .line 108
    const/4 v0, 0x6

    .line 109
    aput-object v12, v5, v0

    .line 110
    .line 111
    const/4 v0, 0x7

    .line 112
    aput-object v9, v5, v0

    .line 113
    .line 114
    const/16 v0, 0x8

    .line 115
    .line 116
    aput-object v2, v5, v0

    .line 117
    .line 118
    const/16 v0, 0x9

    .line 119
    .line 120
    aput-object v3, v5, v0

    .line 121
    .line 122
    const/16 v0, 0xa

    .line 123
    .line 124
    aput-object v10, v5, v0

    .line 125
    .line 126
    sput-object v5, Lcom/google/android/gms/internal/auth_blockstore/zzab;->b:[Lcom/google/android/gms/common/Feature;

    .line 127
    .line 128
    return-void
.end method

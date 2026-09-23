.class public final Lcom/google/android/gms/cast/zzaq;
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
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "client_side_logging"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 12
    .line 13
    const-string v5, "cxless_client_minimal"

    .line 14
    .line 15
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcom/google/android/gms/cast/zzaq;->a:Lcom/google/android/gms/common/Feature;

    .line 19
    .line 20
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 21
    .line 22
    const-string v6, "cxless_caf_control"

    .line 23
    .line 24
    invoke-direct {v5, v6, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 28
    .line 29
    const-string v7, "module_flag_control"

    .line 30
    .line 31
    invoke-direct {v6, v7, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 32
    .line 33
    .line 34
    sput-object v6, Lcom/google/android/gms/cast/zzaq;->b:Lcom/google/android/gms/common/Feature;

    .line 35
    .line 36
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 37
    .line 38
    const-string v8, "discovery_hint_supply"

    .line 39
    .line 40
    invoke-direct {v7, v8, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 44
    .line 45
    const-string v9, "relay_casting_set_active_account"

    .line 46
    .line 47
    invoke-direct {v8, v9, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 48
    .line 49
    .line 50
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 51
    .line 52
    const-string v10, "analytics_proto_enum_translation"

    .line 53
    .line 54
    invoke-direct {v9, v10, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 55
    .line 56
    .line 57
    sput-object v9, Lcom/google/android/gms/cast/zzaq;->c:Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 60
    .line 61
    const-string v11, "integer_to_integer_map"

    .line 62
    .line 63
    invoke-direct {v10, v11, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 64
    .line 65
    .line 66
    sput-object v10, Lcom/google/android/gms/cast/zzaq;->d:Lcom/google/android/gms/common/Feature;

    .line 67
    .line 68
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 69
    .line 70
    const-string v12, "relay_casting_set_remote_casting_mode"

    .line 71
    .line 72
    invoke-direct {v11, v12, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 73
    .line 74
    .line 75
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 76
    .line 77
    const-string v13, "get_relay_access_token"

    .line 78
    .line 79
    invoke-direct {v12, v13, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 80
    .line 81
    .line 82
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 83
    .line 84
    const-string v14, "get_cast_settings"

    .line 85
    .line 86
    invoke-direct {v13, v14, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 87
    .line 88
    .line 89
    new-instance v14, Lcom/google/android/gms/common/Feature;

    .line 90
    .line 91
    const-string v15, "set_bundle_setting"

    .line 92
    .line 93
    invoke-direct {v14, v15, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 94
    .line 95
    .line 96
    new-instance v15, Lcom/google/android/gms/common/Feature;

    .line 97
    .line 98
    move-object/from16 v16, v0

    .line 99
    .line 100
    const-string v0, "get_client_updated_info"

    .line 101
    .line 102
    invoke-direct {v15, v0, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 106
    .line 107
    move-object/from16 v17, v1

    .line 108
    .line 109
    const-string v1, "device_suggestions"

    .line 110
    .line 111
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    .line 112
    .line 113
    .line 114
    const/16 v1, 0xe

    .line 115
    .line 116
    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    aput-object v16, v1, v2

    .line 120
    .line 121
    aput-object v17, v1, v4

    .line 122
    .line 123
    const/4 v2, 0x2

    .line 124
    aput-object v5, v1, v2

    .line 125
    .line 126
    const/4 v2, 0x3

    .line 127
    aput-object v6, v1, v2

    .line 128
    .line 129
    const/4 v2, 0x4

    .line 130
    aput-object v7, v1, v2

    .line 131
    .line 132
    const/4 v2, 0x5

    .line 133
    aput-object v8, v1, v2

    .line 134
    .line 135
    const/4 v2, 0x6

    .line 136
    aput-object v9, v1, v2

    .line 137
    .line 138
    const/4 v2, 0x7

    .line 139
    aput-object v10, v1, v2

    .line 140
    .line 141
    const/16 v2, 0x8

    .line 142
    .line 143
    aput-object v11, v1, v2

    .line 144
    .line 145
    const/16 v2, 0x9

    .line 146
    .line 147
    aput-object v12, v1, v2

    .line 148
    .line 149
    const/16 v2, 0xa

    .line 150
    .line 151
    aput-object v13, v1, v2

    .line 152
    .line 153
    const/16 v2, 0xb

    .line 154
    .line 155
    aput-object v14, v1, v2

    .line 156
    .line 157
    const/16 v2, 0xc

    .line 158
    .line 159
    aput-object v15, v1, v2

    .line 160
    .line 161
    const/16 v2, 0xd

    .line 162
    .line 163
    aput-object v0, v1, v2

    .line 164
    .line 165
    sput-object v1, Lcom/google/android/gms/cast/zzaq;->e:[Lcom/google/android/gms/common/Feature;

    .line 166
    .line 167
    return-void
.end method

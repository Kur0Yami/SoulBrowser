.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzna;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzba;


# static fields
.field public static final synthetic f:[Lcom/google/android/gms/internal/mlkit_common/zzna;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_STATUS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 10
    .line 11
    const-string v3, "EXPLICITLY_REQUESTED"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 18
    .line 19
    const-string v5, "IMPLICITLY_REQUESTED"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 26
    .line 27
    const-string v7, "MODEL_INFO_RETRIEVAL_SUCCEEDED"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 34
    .line 35
    const-string v9, "MODEL_INFO_RETRIEVAL_FAILED"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 42
    .line 43
    const-string v11, "SCHEDULED"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 50
    .line 51
    const-string v13, "DOWNLOADING"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 58
    .line 59
    const-string v15, "SUCCEEDED"

    .line 60
    .line 61
    move/from16 v16, v2

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    invoke-direct {v13, v15, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 68
    .line 69
    move/from16 v17, v2

    .line 70
    .line 71
    const-string v2, "FAILED"

    .line 72
    .line 73
    move/from16 v18, v4

    .line 74
    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v2, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 81
    .line 82
    move/from16 v19, v4

    .line 83
    .line 84
    const-string v4, "LIVE"

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v2, v4, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    const-string v6, "UPDATE_AVAILABLE"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v4, v6, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 107
    .line 108
    move/from16 v23, v8

    .line 109
    .line 110
    const-string v8, "DOWNLOADED"

    .line 111
    .line 112
    move/from16 v24, v10

    .line 113
    .line 114
    const/16 v10, 0xb

    .line 115
    .line 116
    invoke-direct {v6, v8, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 120
    .line 121
    move/from16 v25, v10

    .line 122
    .line 123
    const-string v10, "STARTED"

    .line 124
    .line 125
    move/from16 v26, v12

    .line 126
    .line 127
    const/16 v12, 0xc

    .line 128
    .line 129
    invoke-direct {v8, v10, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzna;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    const/16 v10, 0xd

    .line 133
    .line 134
    new-array v10, v10, [Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 135
    .line 136
    aput-object v0, v10, v16

    .line 137
    .line 138
    aput-object v1, v10, v18

    .line 139
    .line 140
    aput-object v3, v10, v20

    .line 141
    .line 142
    aput-object v5, v10, v22

    .line 143
    .line 144
    aput-object v7, v10, v24

    .line 145
    .line 146
    aput-object v9, v10, v26

    .line 147
    .line 148
    aput-object v11, v10, v14

    .line 149
    .line 150
    aput-object v13, v10, v17

    .line 151
    .line 152
    aput-object v15, v10, v19

    .line 153
    .line 154
    aput-object v2, v10, v21

    .line 155
    .line 156
    aput-object v4, v10, v23

    .line 157
    .line 158
    aput-object v6, v10, v25

    .line 159
    .line 160
    aput-object v8, v10, v12

    .line 161
    .line 162
    sput-object v10, Lcom/google/android/gms/internal/mlkit_common/zzna;->f:[Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 163
    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzna;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzna;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzna;->f:[Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzna;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzna;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzna;->c:I

    return v0
.end method

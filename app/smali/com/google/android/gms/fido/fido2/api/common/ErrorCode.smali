.class public final enum Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/ErrorCode$UnsupportedErrorCodeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum f:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum g:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum h:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum i:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum j:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum k:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum l:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum m:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum n:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum o:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum p:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final enum q:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

.field public static final synthetic r:[Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 2
    .line 3
    const-string v1, "NOT_SUPPORTED_ERR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->f:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 14
    .line 15
    const-string v4, "INVALID_STATE_ERR"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/16 v6, 0xb

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->g:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 24
    .line 25
    new-instance v4, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 26
    .line 27
    const/16 v7, 0x12

    .line 28
    .line 29
    const-string v8, "SECURITY_ERR"

    .line 30
    .line 31
    const/4 v9, 0x2

    .line 32
    invoke-direct {v4, v8, v9, v7}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->h:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 36
    .line 37
    new-instance v7, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 38
    .line 39
    const/16 v8, 0x13

    .line 40
    .line 41
    const-string v10, "NETWORK_ERR"

    .line 42
    .line 43
    const/4 v11, 0x3

    .line 44
    invoke-direct {v7, v10, v11, v8}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v7, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->i:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 48
    .line 49
    new-instance v8, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 50
    .line 51
    const/16 v10, 0x14

    .line 52
    .line 53
    const-string v12, "ABORT_ERR"

    .line 54
    .line 55
    const/4 v13, 0x4

    .line 56
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->j:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 60
    .line 61
    new-instance v10, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 62
    .line 63
    const/16 v12, 0x17

    .line 64
    .line 65
    const-string v14, "TIMEOUT_ERR"

    .line 66
    .line 67
    const/4 v15, 0x5

    .line 68
    invoke-direct {v10, v14, v15, v12}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->k:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 72
    .line 73
    new-instance v12, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 74
    .line 75
    const/16 v14, 0x1b

    .line 76
    .line 77
    move/from16 v16, v2

    .line 78
    .line 79
    const-string v2, "ENCODING_ERR"

    .line 80
    .line 81
    move/from16 v17, v5

    .line 82
    .line 83
    const/4 v5, 0x6

    .line 84
    invoke-direct {v12, v2, v5, v14}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v12, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->l:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 88
    .line 89
    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 90
    .line 91
    const/16 v14, 0x1c

    .line 92
    .line 93
    move/from16 v18, v5

    .line 94
    .line 95
    const-string v5, "UNKNOWN_ERR"

    .line 96
    .line 97
    move/from16 v19, v9

    .line 98
    .line 99
    const/4 v9, 0x7

    .line 100
    invoke-direct {v2, v5, v9, v14}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->m:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 104
    .line 105
    new-instance v5, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 106
    .line 107
    const/16 v14, 0x1d

    .line 108
    .line 109
    move/from16 v20, v9

    .line 110
    .line 111
    const-string v9, "CONSTRAINT_ERR"

    .line 112
    .line 113
    move/from16 v21, v11

    .line 114
    .line 115
    const/16 v11, 0x8

    .line 116
    .line 117
    invoke-direct {v5, v9, v11, v14}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    sput-object v5, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->n:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 121
    .line 122
    new-instance v9, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 123
    .line 124
    const-string v14, "DATA_ERR"

    .line 125
    .line 126
    move/from16 v22, v11

    .line 127
    .line 128
    const/16 v11, 0x1e

    .line 129
    .line 130
    invoke-direct {v9, v14, v3, v11}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 131
    .line 132
    .line 133
    sput-object v9, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->o:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 134
    .line 135
    new-instance v11, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 136
    .line 137
    const/16 v14, 0x23

    .line 138
    .line 139
    move/from16 v23, v3

    .line 140
    .line 141
    const-string v3, "NOT_ALLOWED_ERR"

    .line 142
    .line 143
    move/from16 v24, v13

    .line 144
    .line 145
    const/16 v13, 0xa

    .line 146
    .line 147
    invoke-direct {v11, v3, v13, v14}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 148
    .line 149
    .line 150
    sput-object v11, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->p:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 151
    .line 152
    new-instance v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 153
    .line 154
    const-string v14, "ATTESTATION_NOT_PRIVATE_ERR"

    .line 155
    .line 156
    move/from16 v25, v13

    .line 157
    .line 158
    const/16 v13, 0x24

    .line 159
    .line 160
    invoke-direct {v3, v14, v6, v13}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 161
    .line 162
    .line 163
    sput-object v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->q:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 164
    .line 165
    const/16 v13, 0xc

    .line 166
    .line 167
    new-array v13, v13, [Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 168
    .line 169
    aput-object v0, v13, v16

    .line 170
    .line 171
    aput-object v1, v13, v17

    .line 172
    .line 173
    aput-object v4, v13, v19

    .line 174
    .line 175
    aput-object v7, v13, v21

    .line 176
    .line 177
    aput-object v8, v13, v24

    .line 178
    .line 179
    aput-object v10, v13, v15

    .line 180
    .line 181
    aput-object v12, v13, v18

    .line 182
    .line 183
    aput-object v2, v13, v20

    .line 184
    .line 185
    aput-object v5, v13, v22

    .line 186
    .line 187
    aput-object v9, v13, v23

    .line 188
    .line 189
    aput-object v11, v13, v25

    .line 190
    .line 191
    aput-object v3, v13, v6

    .line 192
    .line 193
    sput-object v13, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->r:[Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 194
    .line 195
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzw;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 201
    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->values()[Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->c:I

    .line 12
    .line 13
    if-ne p0, v4, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode$UnsupportedErrorCodeException;

    .line 20
    .line 21
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    const-string v1, "Error code "

    .line 24
    .line 25
    const-string v2, " is not supported"

    .line 26
    .line 27
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->r:[Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->c:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

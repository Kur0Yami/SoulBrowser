.class public final Lcom/google/android/gms/location/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/location/LocationRequest;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x66

    .line 8
    .line 9
    const-wide/32 v3, 0x36ee80

    .line 10
    .line 11
    .line 12
    const-wide/32 v5, 0x927c0

    .line 13
    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide v8, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const v10, 0x7fffffff

    .line 22
    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    move-wide v13, v12

    .line 28
    move v12, v11

    .line 29
    move v11, v10

    .line 30
    move-wide v9, v8

    .line 31
    move v8, v7

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 33
    .line 34
    .line 35
    move-result v15

    .line 36
    if-ge v15, v1, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 39
    .line 40
    .line 41
    move-result v15

    .line 42
    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 43
    .line 44
    .line 45
    move-result v16

    .line 46
    packed-switch v16, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_0
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    goto :goto_0

    .line 63
    :pswitch_2
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Landroid/os/Parcel;I)F

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    goto :goto_0

    .line 68
    :pswitch_3
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    goto :goto_0

    .line 73
    :pswitch_4
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    goto :goto_0

    .line 78
    :pswitch_5
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    goto :goto_0

    .line 83
    :pswitch_6
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    goto :goto_0

    .line 88
    :pswitch_7
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    goto :goto_0

    .line 93
    :pswitch_8
    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 104
    .line 105
    .line 106
    iput v2, v0, Lcom/google/android/gms/location/LocationRequest;->c:I

    .line 107
    .line 108
    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->f:J

    .line 109
    .line 110
    iput-wide v5, v0, Lcom/google/android/gms/location/LocationRequest;->g:J

    .line 111
    .line 112
    iput-boolean v7, v0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    .line 113
    .line 114
    iput-wide v9, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    .line 115
    .line 116
    iput v11, v0, Lcom/google/android/gms/location/LocationRequest;->j:I

    .line 117
    .line 118
    iput v12, v0, Lcom/google/android/gms/location/LocationRequest;->k:F

    .line 119
    .line 120
    iput-wide v13, v0, Lcom/google/android/gms/location/LocationRequest;->l:J

    .line 121
    .line 122
    iput-boolean v8, v0, Lcom/google/android/gms/location/LocationRequest;->m:Z

    .line 123
    .line 124
    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/location/LocationRequest;

    .line 2
    .line 3
    return-object p1
.end method

.class public abstract Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;
.super Lcom/google/android/gms/internal/identity_credentials/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# virtual methods
.method public final I1(ILandroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    const-string v1, "status"

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/identitycredentials/RegisterExportResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/identitycredentials/RegisterExportResponse;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/android/gms/internal/identity_credentials/zzb;->f2(Landroid/os/Parcel;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    .line 50
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/identitycredentials/PendingImportCredentialsHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/android/gms/identitycredentials/PendingImportCredentialsHandle;

    .line 63
    .line 64
    invoke-static {p2}, Lcom/google/android/gms/internal/identity_credentials/zzb;->f2(Landroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    .line 78
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 83
    .line 84
    sget-object v1, Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    .line 86
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/google/android/gms/internal/identity_credentials/zzb;->f2(Landroid/os/Parcel;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;->Y1(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;)V

    .line 96
    .line 97
    .line 98
    return v0

    .line 99
    :cond_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    .line 101
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 106
    .line 107
    sget-object v1, Lcom/google/android/gms/identitycredentials/RegistrationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 108
    .line 109
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/google/android/gms/identitycredentials/RegistrationResponse;

    .line 114
    .line 115
    invoke-static {p2}, Lcom/google/android/gms/internal/identity_credentials/zzb;->f2(Landroid/os/Parcel;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;->l4(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/RegistrationResponse;)V

    .line 119
    .line 120
    .line 121
    return v0

    .line 122
    :cond_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    .line 124
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 129
    .line 130
    sget-object v1, Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    .line 132
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/identity_credentials/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;

    .line 137
    .line 138
    invoke-static {p2}, Lcom/google/android/gms/internal/identity_credentials/zzb;->f2(Landroid/os/Parcel;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;->s3(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;)V

    .line 142
    .line 143
    .line 144
    return v0
.end method

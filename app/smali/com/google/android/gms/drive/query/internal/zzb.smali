.class public final Lcom/google/android/gms/drive/query/internal/zzb;
.super Lcom/google/android/gms/drive/query/internal/zza;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ComparisonFilterCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/drive/query/internal/zza;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;


# instance fields
.field public final c:Lcom/google/android/gms/drive/query/internal/zzx;

.field public final f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field public final g:Lcom/google/android/gms/drive/metadata/MetadataField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzc;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzb;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->c:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/zzi;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->g:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final u(Lcom/google/android/gms/drive/query/zzd;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzb;->g:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/metadata/MetadataField;->b(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->c:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/android/gms/drive/query/internal/zzx;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v1, v2, v3

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object v0, v2, v1

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const-string p1, "cmp(%s,%s,%s)"

    .line 32
    .line 33
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->c:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

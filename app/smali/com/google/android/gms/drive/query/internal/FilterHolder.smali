.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "FilterHolderCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/google/android/gms/drive/query/internal/zzb;

.field public final f:Lcom/google/android/gms/drive/query/internal/zzd;

.field public final g:Lcom/google/android/gms/drive/query/internal/zzr;

.field public final h:Lcom/google/android/gms/drive/query/internal/zzv;

.field public final i:Lcom/google/android/gms/drive/query/internal/zzp;

.field public final j:Lcom/google/android/gms/drive/query/internal/zzt;

.field public final k:Lcom/google/android/gms/drive/query/internal/zzn;

.field public final l:Lcom/google/android/gms/drive/query/internal/zzl;

.field public final m:Lcom/google/android/gms/drive/query/internal/zzz;

.field public final n:Lcom/google/android/gms/drive/query/internal/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzh;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/zzb;Lcom/google/android/gms/drive/query/internal/zzd;Lcom/google/android/gms/drive/query/internal/zzr;Lcom/google/android/gms/drive/query/internal/zzv;Lcom/google/android/gms/drive/query/internal/zzp;Lcom/google/android/gms/drive/query/internal/zzt;Lcom/google/android/gms/drive/query/internal/zzn;Lcom/google/android/gms/drive/query/internal/zzl;Lcom/google/android/gms/drive/query/internal/zzz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/zzb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/zzd;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/zzr;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->h:Lcom/google/android/gms/drive/query/internal/zzv;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/internal/zzp;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->j:Lcom/google/android/gms/drive/query/internal/zzt;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->k:Lcom/google/android/gms/drive/query/internal/zzn;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->l:Lcom/google/android/gms/drive/query/internal/zzl;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->m:Lcom/google/android/gms/drive/query/internal/zzz;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-eqz p3, :cond_2

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    if-eqz p4, :cond_3

    .line 38
    .line 39
    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    if-eqz p5, :cond_4

    .line 43
    .line 44
    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    if-eqz p6, :cond_5

    .line 48
    .line 49
    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    if-eqz p7, :cond_6

    .line 53
    .line 54
    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_6
    if-eqz p8, :cond_7

    .line 58
    .line 59
    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_7
    if-eqz p9, :cond_8

    .line 63
    .line 64
    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->n:Lcom/google/android/gms/drive/query/internal/zza;

    .line 65
    .line 66
    return-void

    .line 67
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string p2, "At least one filter must be set."

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method


# virtual methods
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
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/zzb;

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
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/zzd;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/zzr;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->h:Lcom/google/android/gms/drive/query/internal/zzv;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/internal/zzp;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->j:Lcom/google/android/gms/drive/query/internal/zzt;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->k:Lcom/google/android/gms/drive/query/internal/zzn;

    .line 44
    .line 45
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->l:Lcom/google/android/gms/drive/query/internal/zzl;

    .line 51
    .line 52
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x9

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->m:Lcom/google/android/gms/drive/query/internal/zzz;

    .line 58
    .line 59
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.class public Lcom/google/android/gms/drive/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ChangeSequenceNumberCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:J

.field public final f:J

.field public final g:J

.field public volatile h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/zzb;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->h:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    cmp-long v2, p3, v0

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    move v2, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 29
    .line 30
    .line 31
    cmp-long v0, p5, v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    move v3, v4

    .line 36
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 37
    .line 38
    .line 39
    iput-wide p1, p0, Lcom/google/android/gms/drive/zza;->c:J

    .line 40
    .line 41
    iput-wide p3, p0, Lcom/google/android/gms/drive/zza;->f:J

    .line 42
    .line 43
    iput-wide p5, p0, Lcom/google/android/gms/drive/zza;->g:J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Lcom/google/android/gms/drive/zza;

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/zza;

    .line 14
    .line 15
    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->f:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->f:J

    .line 18
    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->g:J

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->g:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->c:J

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->c:J

    .line 34
    .line 35
    cmp-long p1, v1, v3

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->f:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->g:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3, v1}, Landroidx/work/impl/workers/a;->e(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v3, v2}, Landroidx/work/impl/workers/a;->e(ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzez;->o()Lcom/google/android/gms/internal/drive/zzez$zza;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/drive/zzez;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzez;->m(Lcom/google/android/gms/internal/drive/zzez;)V

    .line 17
    .line 18
    .line 19
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->c:J

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/internal/drive/zzez;

    .line 27
    .line 28
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzez;->n(Lcom/google/android/gms/internal/drive/zzez;J)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->f:J

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 37
    .line 38
    check-cast v3, Lcom/google/android/gms/internal/drive/zzez;

    .line 39
    .line 40
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzez;->p(Lcom/google/android/gms/internal/drive/zzez;J)V

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->g:J

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 49
    .line 50
    check-cast v3, Lcom/google/android/gms/internal/drive/zzez;

    .line 51
    .line 52
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzez;->q(Lcom/google/android/gms/internal/drive/zzez;J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->G()Lcom/google/android/gms/internal/drive/zzkk;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->f()[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-string v2, "ChangeSequenceNumber:"

    .line 80
    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->h:Ljava/lang/String;

    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->h:Ljava/lang/String;

    .line 96
    .line 97
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x2

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->c:J

    .line 7
    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->f:J

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->g:J

    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

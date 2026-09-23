.class public Lcom/google/android/gms/drive/DriveId;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DriveIdCreator"
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
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:J

.field public final g:J

.field public final h:I

.field public volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/zzk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->i:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-wide/16 v2, -0x1

    .line 23
    .line 24
    cmp-long p1, p2, v2

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 31
    .line 32
    .line 33
    iput-wide p2, p0, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 34
    .line 35
    iput-wide p4, p0, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 36
    .line 37
    iput p6, p0, Lcom/google/android/gms/drive/DriveId;->h:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Lcom/google/android/gms/drive/DriveId;

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 18
    .line 19
    iget-wide v4, p0, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 20
    .line 21
    cmp-long v2, v2, v4

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 27
    .line 28
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    cmp-long p1, v2, v4

    .line 31
    .line 32
    iget-object v6, p0, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-wide v7, p0, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    cmp-long p1, v7, v4

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_2
    const/4 p1, 0x1

    .line 48
    if-eqz v6, :cond_5

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    cmp-long v2, v2, v7

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    return p1

    .line 64
    :cond_4
    return v0

    .line 65
    :cond_5
    :goto_0
    cmp-long v1, v2, v7

    .line 66
    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    return p1

    .line 70
    :cond_6
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v0, v1

    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->i:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfb;->p()Lcom/google/android/gms/internal/drive/zzfb$zza;

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
    check-cast v1, Lcom/google/android/gms/internal/drive/zzfb;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzfb;->m(Lcom/google/android/gms/internal/drive/zzfb;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/drive/zzfb;

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzfb;->o(Lcom/google/android/gms/internal/drive/zzfb;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 41
    .line 42
    check-cast v3, Lcom/google/android/gms/internal/drive/zzfb;

    .line 43
    .line 44
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb;->n(Lcom/google/android/gms/internal/drive/zzfb;J)V

    .line 45
    .line 46
    .line 47
    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 53
    .line 54
    check-cast v3, Lcom/google/android/gms/internal/drive/zzfb;

    .line 55
    .line 56
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb;->r(Lcom/google/android/gms/internal/drive/zzfb;J)V

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->h:I

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->h()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/google/android/gms/internal/drive/zzkk$zza;->f:Lcom/google/android/gms/internal/drive/zzkk;

    .line 65
    .line 66
    check-cast v2, Lcom/google/android/gms/internal/drive/zzfb;

    .line 67
    .line 68
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzfb;->q(Lcom/google/android/gms/internal/drive/zzfb;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->G()Lcom/google/android/gms/internal/drive/zzkk;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->f()[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v1, 0xa

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const-string v2, "DriveId:"

    .line 96
    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->i:Ljava/lang/String;

    .line 110
    .line 111
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->i:Ljava/lang/String;

    .line 112
    .line 113
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
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->f:J

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->g:J

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->h:I

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

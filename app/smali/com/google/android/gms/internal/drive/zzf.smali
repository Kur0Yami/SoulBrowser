.class public final Lcom/google/android/gms/internal/drive/zzf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/drive/DriveId;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzh;->f:Lcom/google/android/gms/drive/DriveId;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 7
    .line 8
    iget v0, p1, Lcom/google/android/gms/internal/drive/zzh;->c:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 11
    .line 12
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzh;->g:I

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Lcom/google/android/gms/internal/drive/zzf;

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    if-ne p1, p0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzf;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 30
    .line 31
    iget v3, p1, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    .line 36
    .line 37
    iget p1, p1, Lcom/google/android/gms/internal/drive/zzf;->c:I

    .line 38
    .line 39
    if-ne v2, p1, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 18
    .line 19
    aput-object v4, v2, v3

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v0, v2, v3

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v1, v2, v0

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzf;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzf;->c:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzf;->a:Lcom/google/android/gms/drive/DriveId;

    .line 21
    .line 22
    aput-object v3, v2, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v1, v2, v0

    .line 26
    .line 27
    const-string v0, "FileTransferState[TransferType: %d, DriveId: %s, status: %d]"

    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

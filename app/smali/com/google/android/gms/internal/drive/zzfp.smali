.class public final Lcom/google/android/gms/internal/drive/zzfp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "OnEventResponseCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1,
        0x4,
        0x8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/drive/zzfp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final f:Lcom/google/android/gms/drive/events/ChangeEvent;

.field public final g:Lcom/google/android/gms/drive/events/CompletionEvent;

.field public final h:Lcom/google/android/gms/drive/events/zzo;

.field public final i:Lcom/google/android/gms/drive/events/zzb;

.field public final j:Lcom/google/android/gms/drive/events/zzv;

.field public final k:Lcom/google/android/gms/drive/events/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfq;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/drive/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzo;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzv;Lcom/google/android/gms/drive/events/zzr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfp;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzfp;->f:Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzfp;->g:Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzfp;->h:Lcom/google/android/gms/drive/events/zzo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzfp;->i:Lcom/google/android/gms/drive/events/zzb;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzfp;->j:Lcom/google/android/gms/drive/events/zzv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/drive/zzfp;->k:Lcom/google/android/gms/drive/events/zzr;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final F()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzfp;->c:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq v1, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq v1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq v1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq v1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->k:Lcom/google/android/gms/drive/events/zzr;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v3, 0x21

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v3, "Unexpected event type "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->j:Lcom/google/android/gms/drive/events/zzv;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->i:Lcom/google/android/gms/drive/events/zzb;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->h:Lcom/google/android/gms/drive/events/zzo;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->g:Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzfp;->f:Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 63
    .line 64
    return-object v0
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
    const/4 v1, 0x2

    .line 6
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->c:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->f:Lcom/google/android/gms/drive/events/ChangeEvent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->g:Lcom/google/android/gms/drive/events/CompletionEvent;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->h:Lcom/google/android/gms/drive/events/zzo;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->i:Lcom/google/android/gms/drive/events/zzb;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->j:Lcom/google/android/gms/drive/events/zzv;

    .line 39
    .line 40
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0xa

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzfp;->k:Lcom/google/android/gms/drive/events/zzr;

    .line 46
    .line 47
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

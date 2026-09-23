.class public final Lcom/google/android/gms/drive/events/zzo;
.super Lcom/google/android/gms/drive/zzu;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "QueryResultEventParcelableCreator"
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
            "Lcom/google/android/gms/drive/events/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Lcom/google/android/gms/common/data/DataHolder;

.field public final g:Z

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/events/zzp;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/drive/events/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/zzu;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/events/zzo;->f:Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/drive/events/zzo;->g:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/drive/events/zzo;->h:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final F(ILandroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/drive/events/zzo;->f:Lcom/google/android/gms/common/data/DataHolder;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {p2, v3, v1, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    iget-boolean v1, p0, Lcom/google/android/gms/drive/events/zzo;->g:Z

    .line 14
    .line 15
    invoke-static {p2, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    iget v1, p0, Lcom/google/android/gms/drive/events/zzo;->h:I

    .line 20
    .line 21
    invoke-static {p2, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

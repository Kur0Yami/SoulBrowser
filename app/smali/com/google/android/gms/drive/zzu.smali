.class public abstract Lcom/google/android/gms/drive/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# instance fields
.field public volatile transient c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract F(ILandroid/os/Parcel;)V
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/drive/zzu;->c:Z

    .line 9
    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/drive/zzu;->F(ILandroid/os/Parcel;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

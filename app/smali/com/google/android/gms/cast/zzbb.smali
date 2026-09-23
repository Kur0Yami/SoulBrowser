.class final synthetic Lcom/google/android/gms/cast/zzbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/zzbm;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbm;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbb;->a:Lcom/google/android/gms/cast/zzbm;

    iput-boolean p2, p0, Lcom/google/android/gms/cast/zzbb;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/cast/internal/zzy;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbb;->a:Lcom/google/android/gms/cast/zzbm;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/android/gms/cast/internal/zzah;

    .line 15
    .line 16
    iget-wide v2, v0, Lcom/google/android/gms/cast/zzbm;->l:D

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/google/android/gms/cast/zzbm;->m:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget v5, Lcom/google/android/gms/internal/cast/zzc;->a:I

    .line 33
    .line 34
    iget-boolean v5, p0, Lcom/google/android/gms/cast/zzbb;->b:Z

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    const/16 p1, 0x8

    .line 49
    .line 50
    invoke-virtual {v1, p1, v4}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

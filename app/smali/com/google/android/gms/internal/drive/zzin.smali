.class public final Lcom/google/android/gms/internal/drive/zzin;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/internal/zzh;

.field public static final b:Lcom/google/android/gms/drive/metadata/internal/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzh;

    .line 2
    .line 3
    const-string v1, "contentAvailability"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/drive/zzin;->a:Lcom/google/android/gms/drive/metadata/internal/zzh;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 11
    .line 12
    const-string v1, "isPinnable"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/zza;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/drive/zzin;->b:Lcom/google/android/gms/drive/metadata/internal/zzb;

    .line 18
    .line 19
    return-void
.end method

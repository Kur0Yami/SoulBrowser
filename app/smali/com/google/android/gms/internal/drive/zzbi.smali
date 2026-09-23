.class public final Lcom/google/android/gms/internal/drive/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveContents;


# static fields
.field public static final b:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Lcom/google/android/gms/drive/Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    .line 3
    const-string v1, "DriveContentsImpl"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/drive/zzbi;->b:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/drive/Contents;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzbi;->a:Lcom/google/android/gms/drive/Contents;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/drive/Contents;->c:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

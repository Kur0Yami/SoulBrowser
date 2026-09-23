.class final Lcom/google/android/gms/internal/drive/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;


# instance fields
.field public final c:Lcom/google/android/gms/common/api/Status;

.field public final f:Lcom/google/android/gms/drive/FileUploadPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzcf;->c:Lcom/google/android/gms/common/api/Status;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcf;->f:Lcom/google/android/gms/drive/FileUploadPreferences;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcf;->c:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    return-object v0
.end method

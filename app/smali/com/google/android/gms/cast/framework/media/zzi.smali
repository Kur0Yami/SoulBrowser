.class final Lcom/google/android/gms/cast/framework/media/zzi;
.super Lcom/google/android/gms/cast/framework/media/zzc;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/framework/media/ImagePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/ImagePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzi;->c:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.cast.framework.media.IImagePicker"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzb;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzi;->c:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

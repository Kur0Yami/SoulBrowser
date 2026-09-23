.class public final Lcom/google/android/gms/cast/framework/media/internal/zzt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/cast/internal/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaSessionUtils"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Lcom/google/android/gms/cast/MediaMetadata;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->f:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->g:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eq v0, v3, :cond_5

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v0, v3, :cond_4

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    const-string v4, "com.google.android.gms.cast.metadata.ARTIST"

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    move-object v2, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :goto_1
    move-object v2, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const-string v0, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    .line 62
    .line 63
    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static b(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/cast/framework/media/zzg;->zzf()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "getNotificationActions"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const-string v1, "zzg"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "Unable to call %s on %s."

    .line 25
    .line 26
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

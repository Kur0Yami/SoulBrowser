.class public final Lcom/google/android/gms/internal/cast/zzda;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "SourceFile"


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Landroid/view/View;

.field public final f:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field public final g:Lcom/google/android/gms/internal/cast/zzcz;

.field public final h:Lcom/google/android/gms/cast/framework/media/internal/zzb;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;Lcom/google/android/gms/internal/cast/zzcz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzda;->b:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzda;->c:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/cast/zzda;->g:Lcom/google/android/gms/internal/cast/zzcz;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p3, p1

    .line 23
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzda;->d:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzda;->e:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->h(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    const-string p4, "Must be called from the main thread."

    .line 34
    .line 35
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->F()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzda;->f:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzda;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->d(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzcy;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/zzcy;-><init>(Lcom/google/android/gms/internal/cast/zzda;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzda;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 10
    .line 11
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->g()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->f()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzda;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->g()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 13
    .line 14
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzda;->f:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzda;->c:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->b(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:Ljava/util/List;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->g()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzda;->h:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzda;->g()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzda;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzda;->e:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzda;->d:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

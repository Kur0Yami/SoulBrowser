.class final Lcom/google/android/gms/cast/framework/zzq;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzq;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzq;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->j:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzr;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzr;->b(Lcom/google/android/gms/cast/MediaStatus;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;JIJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzq;->a:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/CastSession;->m:Lcom/google/android/gms/cast/framework/zzr;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move v5, p4

    .line 10
    move-wide v6, p5

    .line 11
    move-wide/from16 v8, p7

    .line 12
    .line 13
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/cast/framework/zzr;->a(Ljava/lang/String;JIJJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

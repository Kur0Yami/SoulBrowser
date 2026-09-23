.class Lcom/mycompany/app/video/VideoActivity$VideoCastListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/CastActivity$MyCastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoCastListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$VideoCastListener;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->s3:Z

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/setting/CastActivity;->i1:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->d2:Landroid/net/Uri;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->c()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoActivity;->L1(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;

    .line 40
    .line 41
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/video/VideoActivity$VideoCastListener$1;-><init>(Lcom/mycompany/app/video/VideoActivity$VideoCastListener;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->u(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->q4:Lcom/mycompany/app/cast/CastUtil;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    new-instance v2, Lcom/mycompany/app/cast/CastUtil;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v5, Lcom/mycompany/app/video/VideoActivity$85;

    .line 64
    .line 65
    invoke-direct {v5, v0}, Lcom/mycompany/app/video/VideoActivity$85;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/mycompany/app/cast/CastUtil;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastSession;Landroid/os/Handler;Lcom/mycompany/app/cast/CastUtil$CastSendListener;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->q4:Lcom/mycompany/app/cast/CastUtil;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->f()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->q4:Lcom/mycompany/app/cast/CastUtil;

    .line 88
    .line 89
    iget-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->p2:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v6, v0, Lcom/mycompany/app/video/VideoActivity;->e2:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v7, v0, Lcom/mycompany/app/video/VideoActivity;->q2:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v8, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 96
    .line 97
    int-to-long v9, v1

    .line 98
    int-to-long v11, v2

    .line 99
    invoke-virtual/range {v4 .. v13}, Lcom/mycompany/app/cast/CastUtil;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_0
    return-void
.end method

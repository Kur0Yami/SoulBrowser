.class public final Lcom/google/android/gms/internal/cast/zzct;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field public final b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public final c:Lcom/google/android/gms/cast/framework/media/uicontroller/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/google/android/gms/cast/framework/media/uicontroller/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzct;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzct;->c:Lcom/google/android/gms/cast/framework/media/uicontroller/zza;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a(Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:Lcom/google/android/gms/cast/framework/media/widget/zzb;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->d(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->f()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->v(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->f()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzct;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_6

    .line 30
    .line 31
    if-eqz v2, :cond_6

    .line 32
    .line 33
    iget-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    move-object v0, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget-wide v4, v2, Lcom/google/android/gms/cast/AdBreakInfo;->c:J

    .line 70
    .line 71
    const-wide/16 v6, -0x3e8

    .line 72
    .line 73
    cmp-long v6, v4, v6

    .line 74
    .line 75
    iget-object v7, p0, Lcom/google/android/gms/internal/cast/zzct;->c:Lcom/google/android/gms/cast/framework/media/uicontroller/zza;

    .line 76
    .line 77
    if-nez v6, :cond_4

    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->a()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->f()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    sub-long/2addr v4, v8

    .line 89
    long-to-int v4, v4

    .line 90
    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->a()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    :goto_3
    if-ltz v4, :cond_3

    .line 99
    .line 100
    new-instance v5, Lcom/google/android/gms/cast/framework/media/widget/zza;

    .line 101
    .line 102
    iget-wide v6, v2, Lcom/google/android/gms/cast/AdBreakInfo;->g:J

    .line 103
    .line 104
    long-to-int v6, v6

    .line 105
    iget-boolean v2, v2, Lcom/google/android/gms/cast/AdBreakInfo;->k:Z

    .line 106
    .line 107
    invoke-direct {v5, v4, v6, v2}, Lcom/google/android/gms/cast/framework/media/widget/zza;-><init>(IIZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    :goto_4
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a(Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a(Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzct;->g()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzct;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    long-to-int v3, v3

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->F()Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_1
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-wide v4, v2, Lcom/google/android/gms/cast/AdBreakClipInfo;->g:J

    .line 33
    .line 34
    long-to-int v0, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v3

    .line 37
    :goto_0
    if-gez v3, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :cond_3
    if-gez v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_4
    if-le v3, v0, :cond_5

    .line 44
    .line 45
    move v0, v3

    .line 46
    :cond_5
    new-instance v2, Lcom/google/android/gms/cast/framework/media/widget/zzb;

    .line 47
    .line 48
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/cast/framework/media/widget/zzb;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:Lcom/google/android/gms/cast/framework/media/widget/zzb;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_6
    :goto_1
    iput-object v2, v1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:Lcom/google/android/gms/cast/framework/media/widget/zzb;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzct;->b:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    :goto_1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzct;->c:Lcom/google/android/gms/cast/framework/media/uicontroller/zza;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->b()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->a:I

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->a()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->f()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    neg-long v5, v5

    .line 53
    long-to-int v5, v5

    .line 54
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->c:I

    .line 55
    .line 56
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->E()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->d()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->b()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    :goto_3
    iput v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 83
    .line 84
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 85
    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->E()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_4

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->e()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;->b()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    :goto_5
    iput v4, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 111
    .line 112
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 113
    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->E()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_6
    move v1, v3

    .line 130
    :goto_6
    iput-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 131
    .line 132
    iget-boolean v4, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Z

    .line 133
    .line 134
    if-nez v4, :cond_8

    .line 135
    .line 136
    new-instance v4, Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    iget v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->a:I

    .line 142
    .line 143
    iput v5, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->a:I

    .line 144
    .line 145
    iget v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 146
    .line 147
    iput v5, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 148
    .line 149
    iget v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->c:I

    .line 150
    .line 151
    iput v5, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->c:I

    .line 152
    .line 153
    iget v5, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 154
    .line 155
    iput v5, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 156
    .line 157
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 158
    .line 159
    iput v0, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 160
    .line 161
    iput-boolean v1, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 162
    .line 163
    iput-object v4, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    iput-object v0, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:Ljava/lang/Integer;

    .line 167
    .line 168
    iget-object v0, v2, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->c(IZ)V

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 180
    .line 181
    .line 182
    :cond_8
    return-void
.end method

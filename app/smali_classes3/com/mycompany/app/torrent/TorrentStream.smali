.class public final Lcom/mycompany/app/torrent/TorrentStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;,
        Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/concurrent/CountDownLatch;

.field public h:Lcom/frostwire/jlibtorrent/SessionManager;

.field public i:Lcom/mycompany/app/torrent/Torrent;

.field public j:Landroid/os/HandlerThread;

.field public k:Landroid/os/Handler;

.field public l:Landroid/os/HandlerThread;

.field public m:Landroid/os/Handler;

.field public final n:Lcom/mycompany/app/torrent/TorAlertDhtListener;

.field public final o:Lcom/mycompany/app/torrent/TorAlertAddListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/torrent/TorrentStream$7;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->n:Lcom/mycompany/app/torrent/TorAlertDhtListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/torrent/TorrentStream$8;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/torrent/TorrentStream$8;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->o:Lcom/mycompany/app/torrent/TorAlertAddListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/torrent/TorrentStream;->a()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->j:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 8
    .line 9
    if-eqz v3, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iput-boolean v2, p0, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 35
    .line 36
    iget-wide v2, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 37
    .line 38
    invoke-static {v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_is_paused(JLcom/frostwire/jlibtorrent/swig/session_handle;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 47
    .line 48
    new-instance v2, Lcom/mycompany/app/torrent/TorrentStream$4;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/mycompany/app/torrent/TorrentStream$4;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 63
    .line 64
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 65
    .line 66
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_is_dht_running(JLcom/frostwire/jlibtorrent/swig/session_handle;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    :cond_3
    if-nez v1, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/torrent/TorrentStream$5;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/mycompany/app/torrent/TorrentStream$5;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    return-void

    .line 83
    :cond_5
    iget-boolean v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->c:Z

    .line 84
    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    iget-boolean v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->d:Z

    .line 88
    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    :cond_6
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    .line 95
    .line 96
    :cond_7
    iput-boolean v2, p0, Lcom/mycompany/app/torrent/TorrentStream;->c:Z

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->d:Z

    .line 99
    .line 100
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 101
    .line 102
    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;

    .line 106
    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    .line 108
    .line 109
    const-string v1, "TORRENT_THREAD"

    .line 110
    .line 111
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->j:Landroid/os/HandlerThread;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    .line 118
    .line 119
    new-instance v0, Landroid/os/Handler;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->j:Landroid/os/HandlerThread;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 131
    .line 132
    new-instance v1, Lcom/mycompany/app/torrent/TorrentStream$1;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/mycompany/app/torrent/TorrentStream$1;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/torrent/TorrentStream$6;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/torrent/TorrentStream$6;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/torrent/TorrentStream;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 26
    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    .line 28
    .line 29
    const-string v1, "STREAM_THREAD"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->l:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->l:Landroid/os/HandlerThread;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->m:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/torrent/TorrentStream$2;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mycompany/app/torrent/TorrentStream$2;-><init>(Lcom/mycompany/app/torrent/TorrentStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->k:Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->m:Landroid/os/Handler;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->i:Lcom/mycompany/app/torrent/Torrent;

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    iget-object v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 32
    .line 33
    if-eqz v3, :cond_6

    .line 34
    .line 35
    iget-object v1, v1, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v1, v1, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 40
    .line 41
    iget-wide v3, v1, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 42
    .line 43
    invoke-static {v3, v4, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_pause__SWIG_1(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/torrent/TorrentStream;->i:Lcom/mycompany/app/torrent/Torrent;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v3}, Lcom/frostwire/jlibtorrent/SessionManager;->e(ZLcom/frostwire/jlibtorrent/AlertListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream;->i:Lcom/mycompany/app/torrent/Torrent;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 60
    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    iget-object v3, v1, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 64
    .line 65
    iget-wide v4, v3, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 66
    .line 67
    invoke-static {v4, v5, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_is_valid(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    iget-object v6, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 74
    .line 75
    iget-object v9, v1, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 76
    .line 77
    iget-wide v4, v6, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 78
    .line 79
    if-nez v9, :cond_4

    .line 80
    .line 81
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->c:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    :goto_0
    move-wide v7, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iget-wide v0, v9, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    invoke-static/range {v4 .. v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_remove_torrent__SWIG_1(JLcom/frostwire/jlibtorrent/swig/session_handle;JLcom/frostwire/jlibtorrent/swig/torrent_handle;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    iput-object v2, p0, Lcom/mycompany/app/torrent/TorrentStream;->i:Lcom/mycompany/app/torrent/Torrent;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/Thread;

    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/torrent/TorrentStream$3;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/mycompany/app/torrent/TorrentStream$3;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->l:Landroid/os/HandlerThread;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 113
    .line 114
    .line 115
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 116
    .line 117
    invoke-interface {v0}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->e()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

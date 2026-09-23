.class public Lcom/mycompany/app/torrent/Torrent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/AlertListener;


# instance fields
.field public a:Lcom/frostwire/jlibtorrent/TorrentHandle;

.field public b:Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

.field public c:I


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/alerts/Alert;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/Torrent;->b:Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/frostwire/jlibtorrent/alerts/Alert;->type()Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    if-eq p1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget v2, p0, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-wide v3, p1, Lcom/frostwire/jlibtorrent/TorrentHandle;->b:J

    .line 34
    .line 35
    sub-long v3, v1, v3

    .line 36
    .line 37
    const-wide/16 v5, 0x1f4

    .line 38
    .line 39
    cmp-long v3, v3, v5

    .line 40
    .line 41
    if-ltz v3, :cond_4

    .line 42
    .line 43
    iput-wide v1, p1, Lcom/frostwire/jlibtorrent/TorrentHandle;->b:J

    .line 44
    .line 45
    new-instance v1, Lcom/frostwire/jlibtorrent/TorrentStatus;

    .line 46
    .line 47
    iget-object v4, p1, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 48
    .line 49
    sget-object v7, Lcom/frostwire/jlibtorrent/TorrentHandle;->d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v8, Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 55
    .line 56
    iget-wide v2, v4, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 57
    .line 58
    if-nez v7, :cond_3

    .line 59
    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-wide v5, v7, Lcom/frostwire/jlibtorrent/swig/status_flags_t;->a:J

    .line 64
    .line 65
    :goto_0
    invoke-static/range {v2 .. v7}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_status__SWIG_0(JLcom/frostwire/jlibtorrent/swig/torrent_handle;JLcom/frostwire/jlibtorrent/swig/status_flags_t;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-direct {v8, v2, v3}, Lcom/frostwire/jlibtorrent/swig/torrent_status;-><init>(J)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v8}, Lcom/frostwire/jlibtorrent/TorrentStatus;-><init>(Lcom/frostwire/jlibtorrent/swig/torrent_status;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p1, Lcom/frostwire/jlibtorrent/TorrentHandle;->c:Lcom/frostwire/jlibtorrent/TorrentStatus;

    .line 76
    .line 77
    :cond_4
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/TorrentHandle;->c:Lcom/frostwire/jlibtorrent/TorrentStatus;

    .line 78
    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/TorrentStatus;->c:Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 83
    .line 84
    iget-wide v1, p1, Lcom/frostwire/jlibtorrent/swig/torrent_status;->a:J

    .line 85
    .line 86
    invoke-static {v1, v2, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_status_progress_get(JLcom/frostwire/jlibtorrent/swig/torrent_status;)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/4 v1, 0x0

    .line 91
    cmpl-float v1, p1, v1

    .line 92
    .line 93
    if-lez v1, :cond_8

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-virtual {v0, p0, p1}, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->d(Lcom/mycompany/app/torrent/Torrent;F)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    iget p1, p0, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 102
    .line 103
    if-ne p1, v1, :cond_7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    iput v1, p0, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->b(Lcom/mycompany/app/torrent/Torrent;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_1
    return-void
.end method

.method public final b()[I
    .locals 2

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->h:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    iget v0, v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 4
    .line 5
    sget-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->f:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 6
    .line 7
    iget v1, v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 8
    .line 9
    filled-new-array {v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

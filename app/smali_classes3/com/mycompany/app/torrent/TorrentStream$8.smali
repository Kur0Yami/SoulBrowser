.class Lcom/mycompany/app/torrent/TorrentStream$8;
.super Lcom/mycompany/app/torrent/TorAlertAddListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/torrent/TorrentStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/torrent/TorrentStream;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/torrent/TorrentStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$8;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/frostwire/jlibtorrent/alerts/AddTorrentAlert;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$8;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 14
    .line 15
    check-cast p1, Lcom/frostwire/jlibtorrent/swig/torrent_alert;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->e()Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v2, Lcom/frostwire/jlibtorrent/Sha1Hash;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 27
    .line 28
    iget-wide v4, p1, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 29
    .line 30
    invoke-static {v4, v5, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_info_hash(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-direct {v3, v4, v5, p1}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;-><init>(JZ)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/frostwire/jlibtorrent/Sha1Hash;-><init>(Lcom/frostwire/jlibtorrent/swig/sha1_hash;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/frostwire/jlibtorrent/SessionManager;->c(Lcom/frostwire/jlibtorrent/Sha1Hash;)Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/mycompany/app/torrent/Torrent;

    .line 46
    .line 47
    new-instance v3, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;-><init>(Lcom/mycompany/app/torrent/TorrentStream;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    iput v4, v2, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 57
    .line 58
    iput-object v1, v2, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 59
    .line 60
    iput-object v3, v2, Lcom/mycompany/app/torrent/Torrent;->b:Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    iget-object v1, v1, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 66
    .line 67
    iget-wide v5, v1, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 68
    .line 69
    invoke-static {v5, v6, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_is_valid(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a()Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    new-instance v5, Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 83
    .line 84
    invoke-direct {v5, v3}, Lcom/frostwire/jlibtorrent/TorrentInfo;-><init>(Lcom/frostwire/jlibtorrent/swig/torrent_info;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    const/4 v5, 0x0

    .line 89
    :goto_1
    invoke-virtual {v5}, Lcom/frostwire/jlibtorrent/TorrentInfo;->b()Lcom/frostwire/jlibtorrent/FileStorage;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v3, v3, Lcom/frostwire/jlibtorrent/FileStorage;->a:Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 94
    .line 95
    iget-wide v5, v3, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 96
    .line 97
    invoke-static {v5, v6, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_num_files(JLcom/frostwire/jlibtorrent/swig/file_storage;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    :goto_2
    if-ge v4, v3, :cond_4

    .line 102
    .line 103
    iget-wide v5, v1, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 104
    .line 105
    invoke-static {v5, v6, v1, v4, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_file_priority2__SWIG_1(JLcom/frostwire/jlibtorrent/swig/torrent_handle;II)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    :goto_3
    iget-object v1, v2, Lcom/mycompany/app/torrent/Torrent;->b:Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a(Lcom/mycompany/app/torrent/Torrent;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iput-object v2, v0, Lcom/mycompany/app/torrent/TorrentStream;->i:Lcom/mycompany/app/torrent/Torrent;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 121
    .line 122
    invoke-virtual {v0, p1, v2}, Lcom/frostwire/jlibtorrent/SessionManager;->e(ZLcom/frostwire/jlibtorrent/AlertListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

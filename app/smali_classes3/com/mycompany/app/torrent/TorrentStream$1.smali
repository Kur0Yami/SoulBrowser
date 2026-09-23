.class Lcom/mycompany/app/torrent/TorrentStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/torrent/TorrentStream;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/torrent/TorrentStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/frostwire/jlibtorrent/SettingsPack;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/frostwire/jlibtorrent/SettingsPack;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 8
    .line 9
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->c:Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 10
    .line 11
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->a:I

    .line 12
    .line 13
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 14
    .line 15
    invoke-static {v4, v5, v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_set_bool(JLcom/frostwire/jlibtorrent/swig/settings_pack;IZ)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 19
    .line 20
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->f:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 21
    .line 22
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    .line 23
    .line 24
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 25
    .line 26
    const/16 v6, 0xc8

    .line 27
    .line 28
    invoke-static {v4, v5, v2, v3, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_set_int(JLcom/frostwire/jlibtorrent/swig/settings_pack;II)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 32
    .line 33
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->e:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 34
    .line 35
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    .line 36
    .line 37
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 38
    .line 39
    invoke-static {v4, v5, v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_set_int(JLcom/frostwire/jlibtorrent/swig/settings_pack;II)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 43
    .line 44
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->d:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 45
    .line 46
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    .line 47
    .line 48
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 49
    .line 50
    invoke-static {v4, v5, v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_set_int(JLcom/frostwire/jlibtorrent/swig/settings_pack;II)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 54
    .line 55
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->c:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 56
    .line 57
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    .line 58
    .line 59
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 60
    .line 61
    const/16 v6, 0x58

    .line 62
    .line 63
    invoke-static {v4, v5, v2, v3, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_set_int(JLcom/frostwire/jlibtorrent/swig/settings_pack;II)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 67
    .line 68
    new-instance v3, Lcom/frostwire/jlibtorrent/SessionManager;

    .line 69
    .line 70
    invoke-direct {v3}, Lcom/frostwire/jlibtorrent/SessionManager;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v3, v2, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 86
    .line 87
    iget-object v3, v2, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    iget-object v6, v2, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 92
    .line 93
    iget-object v9, v1, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 94
    .line 95
    iget-wide v4, v6, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 96
    .line 97
    if-nez v9, :cond_0

    .line 98
    .line 99
    const-wide/16 v1, 0x0

    .line 100
    .line 101
    :goto_0
    move-wide v7, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    iget-wide v1, v9, Lcom/frostwire/jlibtorrent/swig/settings_pack;->a:J

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_1
    invoke-static/range {v4 .. v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_apply_settings(JLcom/frostwire/jlibtorrent/swig/session_handle;JLcom/frostwire/jlibtorrent/swig/settings_pack;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 113
    .line 114
    new-instance v3, Lcom/frostwire/jlibtorrent/SessionParams;

    .line 115
    .line 116
    invoke-direct {v3, v1}, Lcom/frostwire/jlibtorrent/SessionParams;-><init>(Lcom/frostwire/jlibtorrent/SettingsPack;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lcom/frostwire/jlibtorrent/SessionManager;->g(Lcom/frostwire/jlibtorrent/SessionParams;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 123
    .line 124
    iget-object v2, v1, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->n:Lcom/mycompany/app/torrent/TorAlertDhtListener;

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3, v1}, Lcom/frostwire/jlibtorrent/SessionManager;->e(ZLcom/frostwire/jlibtorrent/AlertListener;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/frostwire/jlibtorrent/SessionManager;->h()V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 140
    .line 141
    iput-boolean v0, v1, Lcom/mycompany/app/torrent/TorrentStream;->c:Z

    .line 142
    .line 143
    iput-boolean v3, v1, Lcom/mycompany/app/torrent/TorrentStream;->d:Z

    .line 144
    .line 145
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :catch_0
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;

    .line 154
    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    iput-object v2, v1, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    :catch_1
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/torrent/TorrentStream$1;->c:Lcom/mycompany/app/torrent/TorrentStream;

    .line 166
    .line 167
    iput-boolean v0, v1, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 168
    .line 169
    iget-object v0, v1, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 170
    .line 171
    invoke-interface {v0}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->c()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

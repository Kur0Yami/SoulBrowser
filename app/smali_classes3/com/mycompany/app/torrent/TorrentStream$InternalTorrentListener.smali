.class public Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/torrent/TorrentStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalTorrentListener"
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
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/torrent/Torrent;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 7
    .line 8
    iget v1, p1, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput v1, p1, Lcom/mycompany/app/torrent/Torrent;->c:I

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/int_vector;

    .line 20
    .line 21
    iget-wide v3, v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 22
    .line 23
    invoke-static {v3, v4, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_get_piece_priorities2(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-direct {v2, v3, v4}, Lcom/frostwire/jlibtorrent/swig/int_vector;-><init>(J)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/int_vector;->a:J

    .line 31
    .line 32
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->int_vector_size(JLcom/frostwire/jlibtorrent/swig/int_vector;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    long-to-int v3, v3

    .line 37
    new-array v4, v3, [Lcom/frostwire/jlibtorrent/Priority;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    if-ge v6, v3, :cond_4

    .line 42
    .line 43
    iget-wide v7, v2, Lcom/frostwire/jlibtorrent/swig/int_vector;->a:J

    .line 44
    .line 45
    invoke-static {v7, v8, v2, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->int_vector_get(JLcom/frostwire/jlibtorrent/swig/int_vector;I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const-class v8, Lcom/frostwire/jlibtorrent/Priority;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, [Lcom/frostwire/jlibtorrent/Priority;

    .line 56
    .line 57
    array-length v9, v8

    .line 58
    move v10, v5

    .line 59
    :goto_1
    if-ge v10, v9, :cond_3

    .line 60
    .line 61
    aget-object v11, v8, v10

    .line 62
    .line 63
    iget v12, v11, Lcom/frostwire/jlibtorrent/Priority;->c:I

    .line 64
    .line 65
    if-ne v12, v7, :cond_2

    .line 66
    .line 67
    aput-object v11, v4, v6

    .line 68
    .line 69
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v0, "Invalid native value"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    :goto_2
    if-ge v5, v3, :cond_5

    .line 84
    .line 85
    iget-wide v6, v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 86
    .line 87
    invoke-static {v6, v7, v0, v5, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_piece_priority2__SWIG_1(JLcom/frostwire/jlibtorrent/swig/torrent_handle;II)V

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x3e8

    .line 91
    .line 92
    iget-wide v6, v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 93
    .line 94
    invoke-static {v6, v7, v0, v5, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_set_piece_deadline__SWIG_1(JLcom/frostwire/jlibtorrent/swig/torrent_handle;II)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 101
    .line 102
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_resume(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lcom/mycompany/app/torrent/Torrent;->b:Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;

    .line 106
    .line 107
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 110
    .line 111
    invoke-interface {v0, p1}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->a(Lcom/mycompany/app/torrent/Torrent;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final b(Lcom/mycompany/app/torrent/Torrent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->b(Lcom/mycompany/app/torrent/Torrent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Lcom/mycompany/app/torrent/Torrent;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->d(Lcom/mycompany/app/torrent/Torrent;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/torrent/TorrentStream$InternalTorrentListener;->a:Lcom/mycompany/app/torrent/TorrentStream;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

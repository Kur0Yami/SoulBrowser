.class public final Lcom/frostwire/jlibtorrent/TorrentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/swig/torrent_info;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/torrent_info;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 5
    .line 6
    return-void
.end method

.method public static a([B)Lcom/frostwire/jlibtorrent/TorrentInfo;
    .locals 10

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 2
    .line 3
    new-instance v3, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 4
    .line 5
    invoke-direct {v3}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-byte v2, p0, v1

    .line 13
    .line 14
    iget-wide v4, v3, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 15
    .line 16
    invoke-static {v4, v5, v3, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->byte_vector_push_back(JLcom/frostwire/jlibtorrent/swig/byte_vector;B)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v6, Lcom/frostwire/jlibtorrent/swig/bdecode_node;

    .line 23
    .line 24
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_bdecode_node__SWIG_0()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-direct {v6, v1, v2, p0}, Lcom/frostwire/jlibtorrent/swig/bdecode_node;-><init>(JZ)V

    .line 30
    .line 31
    .line 32
    new-instance v9, Lcom/frostwire/jlibtorrent/swig/error_code;

    .line 33
    .line 34
    invoke-direct {v9}, Lcom/frostwire/jlibtorrent/swig/error_code;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-wide v1, v3, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 38
    .line 39
    iget-wide v4, v6, Lcom/frostwire/jlibtorrent/swig/bdecode_node;->a:J

    .line 40
    .line 41
    iget-wide v7, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 42
    .line 43
    invoke-static/range {v1 .. v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->bdecode_node_bdecode(JLcom/frostwire/jlibtorrent/swig/byte_vector;JLcom/frostwire/jlibtorrent/swig/bdecode_node;JLcom/frostwire/jlibtorrent/swig/error_code;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "Can\'t decode data: "

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-wide v4, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 52
    .line 53
    invoke-static {v4, v5, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_clear(JLcom/frostwire/jlibtorrent/swig/error_code;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 57
    .line 58
    iget-wide v4, v6, Lcom/frostwire/jlibtorrent/swig/bdecode_node;->a:J

    .line 59
    .line 60
    iget-wide v7, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 61
    .line 62
    invoke-static/range {v4 .. v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_torrent_info__SWIG_2(JLcom/frostwire/jlibtorrent/swig/bdecode_node;JLcom/frostwire/jlibtorrent/swig/error_code;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-direct {v1, v4, v5, p0}, Lcom/frostwire/jlibtorrent/swig/torrent_info;-><init>(JZ)V

    .line 67
    .line 68
    .line 69
    iget-wide v4, v3, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 70
    .line 71
    invoke-static {v4, v5, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->byte_vector_clear(JLcom/frostwire/jlibtorrent/swig/byte_vector;)V

    .line 72
    .line 73
    .line 74
    iget-wide v3, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 75
    .line 76
    invoke-static {v3, v4, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_value(JLcom/frostwire/jlibtorrent/swig/error_code;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/TorrentInfo;-><init>(Lcom/frostwire/jlibtorrent/swig/torrent_info;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-wide v1, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 94
    .line 95
    invoke-static {v1, v2, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_message(JLcom/frostwire/jlibtorrent/swig/error_code;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-wide v1, v9, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 118
    .line 119
    invoke-static {v1, v2, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_message(JLcom/frostwire/jlibtorrent/swig/error_code;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method


# virtual methods
.method public final b()Lcom/frostwire/jlibtorrent/FileStorage;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/FileStorage;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_files(JLcom/frostwire/jlibtorrent/swig/torrent_info;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-wide v3, v1, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/FileStorage;-><init>(Lcom/frostwire/jlibtorrent/swig/file_storage;Lcom/frostwire/jlibtorrent/swig/torrent_info;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

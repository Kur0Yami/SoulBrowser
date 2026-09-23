.class Lcom/mycompany/app/dialog/DialogDownUrl$49$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl$49;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl$49;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$49$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$49;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$49$1;->c:Lcom/mycompany/app/dialog/DialogDownUrl$49;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl$49;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->j1:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->W1:Z

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 23
    .line 24
    if-eqz v1, :cond_8

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->h1:Ljava/lang/String;

    .line 27
    .line 28
    iget v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q1:I

    .line 29
    .line 30
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v4, v1, v4

    .line 43
    .line 44
    if-lez v4, :cond_2

    .line 45
    .line 46
    iput-wide v1, v3, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 47
    .line 48
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i1:Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-static {}, Lcom/mycompany/app/torrent/TorrentUtil;->b()Lcom/mycompany/app/torrent/TorrentUtil;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->h1:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i1:Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    :try_start_0
    iget-object v5, v1, Lcom/mycompany/app/torrent/TorrentUtil;->a:Ljava/util/HashMap;

    .line 64
    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    new-instance v5, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v5, v1, Lcom/mycompany/app/torrent/TorrentUtil;->a:Ljava/util/HashMap;

    .line 73
    .line 74
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentUtil;->a:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_7

    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    const-string v4, "https://"

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "mix:"

    .line 112
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x6

    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, "<,>"

    .line 125
    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :cond_7
    :goto_0
    move-object v2, v1

    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q1:I

    .line 142
    .line 143
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->W1:Z

    .line 144
    .line 145
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_1
    return-void
.end method

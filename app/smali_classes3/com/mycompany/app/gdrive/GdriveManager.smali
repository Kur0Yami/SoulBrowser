.class public Lcom/mycompany/app/gdrive/GdriveManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/gdrive/GdriveManager$ServerListener;,
        Lcom/mycompany/app/gdrive/GdriveManager$ServerFile;,
        Lcom/mycompany/app/gdrive/GdriveManager$ShareListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/api/services/drive/Drive;

.field public c:J


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/gdrive/GdriveManager;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    new-instance v2, Lcom/google/api/services/drive/model/File;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Lcom/google/api/client/http/FileContent;

    .line 48
    .line 49
    const-string v3, "text/plain"

    .line 50
    .line 51
    new-instance v4, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v3, v4}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2, v0}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-instance v0, Lcom/mycompany/app/gdrive/GdriveManager$2;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :catch_0
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 80
    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/gdrive/GdriveManager;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-gez p1, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge p1, v2, :cond_5

    .line 74
    .line 75
    iget-object v2, v1, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-object v2, v1, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ge p1, v2, :cond_6

    .line 89
    .line 90
    iget-object v1, v1, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 96
    return p1

    .line 97
    :catch_0
    :goto_1
    return v0
.end method

.method public final c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    :cond_1
    :goto_0
    move-object v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-string v2, "/"

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string v0, "root"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ltz v2, :cond_1

    .line 52
    .line 53
    iget-object v3, v0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-lt v2, v3, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;

    .line 71
    .line 72
    if-nez v0, :cond_6

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    iget-object v0, v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->b:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_7

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_7
    const-string v0, "\'"

    .line 85
    .line 86
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x1

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/gdrive/GdriveManager;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_9

    .line 100
    .line 101
    :catch_0
    :cond_8
    :goto_2
    move-object p2, v1

    .line 102
    goto :goto_4

    .line 103
    :cond_9
    iget-object v4, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 104
    .line 105
    if-nez v4, :cond_a

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_a
    :try_start_0
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\' in parents and name=\'"

    .line 121
    .line 122
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    if-eqz p2, :cond_b

    .line 129
    .line 130
    const-string p2, "\' and mimeType=\'application/vnd.google-apps.folder\' and trashed=false"

    .line 131
    .line 132
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_b
    const-string p2, "\' and mimeType!=\'application/vnd.google-apps.folder\' and trashed=false"

    .line 137
    .line 138
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object p2, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    const-string v0, "nextPageToken, files(id, name, modifiedTime, size, mimeType)"

    .line 160
    .line 161
    invoke-virtual {p2, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Lcom/google/api/services/drive/model/FileList;

    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    if-eqz p2, :cond_8

    .line 176
    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eq v0, v3, :cond_c

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_c
    const/4 v0, 0x0

    .line 185
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Lcom/google/api/services/drive/model/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    :goto_4
    if-nez p2, :cond_d

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_d
    invoke-virtual {p2}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_e

    .line 203
    .line 204
    :goto_5
    return-object v1

    .line 205
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/gdrive/DataGdrive;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-object p2
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :catch_0
    move-object p1, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance p1, Lcom/google/auth/oauth2/AccessToken;

    .line 13
    .line 14
    invoke-direct {p1, p2, v0}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 15
    .line 16
    .line 17
    sget p2, Lcom/google/auth/oauth2/GoogleCredentials;->p:I

    .line 18
    .line 19
    new-instance p2, Lcom/google/auth/oauth2/GoogleCredentials$Builder;

    .line 20
    .line 21
    invoke-direct {p2}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p2, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 25
    .line 26
    new-instance p1, Lcom/google/auth/oauth2/GoogleCredentials;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/google/api/services/drive/Drive$Builder;

    .line 32
    .line 33
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/google/api/client/json/gson/GsonFactory;->getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lcom/google/auth/http/HttpCredentialsAdapter;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Lcom/google/auth/http/HttpCredentialsAdapter;-><init>(Lcom/google/auth/Credentials;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v1, v2, v3}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "Soul"

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    if-nez p1, :cond_1

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/gdrive/GdriveManager;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/mycompany/app/gdrive/DataGdrive;->b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object v0, p1, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    iput-object v0, p1, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    return p1

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/gdrive/GdriveManager;->b:Lcom/google/api/services/drive/Drive;

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    return p1
.end method

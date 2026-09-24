.class public Lcom/mycompany/app/script/WebViewXmlHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lorg/json/JSONObject;

.field public final f:Lorg/json/JSONObject;

.field public final g:Lorg/json/JSONObject;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->a:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->b:Landroid/webkit/WebView;

    .line 15
    .line 16
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "url"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    const-string p2, "method"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->d:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string p2, "context"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->e:Lorg/json/JSONObject;

    .line 59
    .line 60
    const-string p2, "headers"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->f:Lorg/json/JSONObject;

    .line 67
    .line 68
    const-string p2, "upload"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->g:Lorg/json/JSONObject;

    .line 75
    .line 76
    const-string p2, "data"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->h:Ljava/lang/String;

    .line 83
    .line 84
    const-string p2, "onload"

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->i:Ljava/lang/String;

    .line 91
    .line 92
    const-string p2, "onerror"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->j:Ljava/lang/String;

    .line 99
    .line 100
    const-string p2, "onprogress"

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->k:Ljava/lang/String;

    .line 107
    .line 108
    const-string p2, "onreadystatechange"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->l:Ljava/lang/String;

    .line 115
    .line 116
    const-string p2, "overrideMimeType"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->m:Ljava/lang/String;

    .line 123
    .line 124
    const-string p2, "user"

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->n:Ljava/lang/String;

    .line 131
    .line 132
    const-string p2, "password"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->o:Ljava/lang/String;

    .line 139
    .line 140
    const-string p2, "ontimeout"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->p:Ljava/lang/String;

    .line 147
    .line 148
    const-string p2, "timeout"

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iput p2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->q:I

    .line 155
    .line 156
    const-string p2, "synchronous"

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput-boolean p1, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->r:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    :catch_0
    :goto_0
    return-void
.end method

.method public static f(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    move-object v1, v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    if-nez v1, :cond_4

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, ": "

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x1

    .line 86
    if-ne v3, v5, :cond_5

    .line 87
    .line 88
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    :goto_1
    if-ge v4, v3, :cond_1

    .line 99
    .line 100
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    add-int/lit8 v5, v3, -0x1

    .line 110
    .line 111
    if-eq v4, v5, :cond_6

    .line 112
    .line 113
    const-string v5, "; "

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    if-nez v1, :cond_8

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object p0

    .line 129
    :catch_0
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/script/WebViewXmlHttpResponse;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->b()Lcom/mycompany/app/script/WebViewXmlHttpResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->e:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/mycompany/app/script/WebViewXmlHttpResponse;-><init>(Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->a:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    new-instance v2, Lcom/mycompany/app/script/WebViewXmlHttpRequest$1;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/mycompany/app/script/WebViewXmlHttpRequest$1;-><init>(Lcom/mycompany/app/script/WebViewXmlHttpRequest;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final b()Lcom/mycompany/app/script/WebViewXmlHttpResponse;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->m:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->l:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->e:Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpResponse;-><init>(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_15

    .line 21
    .line 22
    iget-object v5, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    goto/16 :goto_11

    .line 31
    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 34
    .line 35
    invoke-direct {v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-object v7, v6

    .line 40
    :goto_0
    iget-object v4, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->j:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :cond_1
    const/4 v8, 0x0

    .line 49
    :try_start_1
    invoke-static {v7}, Lcom/mycompany/app/warp/WarpAppProxy;->open(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    :try_start_2
    iput v9, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 57
    .line 58
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->e()[B

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    if-eqz v10, :cond_2

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 68
    .line 69
    .line 70
    const-string v11, "Content-Length"

    .line 71
    .line 72
    array-length v12, v10

    .line 73
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v7, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_6

    .line 81
    :catch_1
    move-object v1, v6

    .line 82
    move-object v9, v1

    .line 83
    :goto_1
    move-object v6, v7

    .line 84
    goto/16 :goto_b

    .line 85
    .line 86
    :catch_2
    move-object v1, v6

    .line 87
    :goto_2
    move-object v9, v1

    .line 88
    :goto_3
    move-object v6, v7

    .line 89
    goto/16 :goto_d

    .line 90
    .line 91
    :catch_3
    move-object v1, v6

    .line 92
    move-object v9, v1

    .line 93
    :goto_4
    move-object v6, v7

    .line 94
    goto/16 :goto_e

    .line 95
    .line 96
    :catch_4
    move-object v1, v6

    .line 97
    move-object v9, v1

    .line 98
    :goto_5
    move-object v6, v7

    .line 99
    goto/16 :goto_f

    .line 100
    .line 101
    :cond_2
    :goto_6
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v5, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->f:Lorg/json/JSONObject;

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, v7}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->h(Ljava/net/HttpURLConnection;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object v5, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->n:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    iget-object v5, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->o:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_4

    .line 126
    .line 127
    invoke-virtual {v0, v7}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->g(Ljava/net/HttpURLConnection;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_5

    .line 135
    .line 136
    const-string v5, "Content-Type"

    .line 137
    .line 138
    invoke-virtual {v7, v5, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .line 140
    .line 141
    :cond_5
    iget v1, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->q:I

    .line 142
    .line 143
    if-lez v1, :cond_6

    .line 144
    .line 145
    :try_start_3
    invoke-virtual {v7, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 152
    .line 153
    .line 154
    if-eqz v10, :cond_7

    .line 155
    .line 156
    :try_start_4
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 157
    .line 158
    .line 159
    move-result-object v1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 160
    :try_start_5
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 167
    .line 168
    .line 169
    :try_start_6
    invoke-virtual {v0, v3}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->d(Lcom/mycompany/app/script/WebViewXmlHttpResponse;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :catch_5
    move-object v1, v6

    .line 174
    move v8, v9

    .line 175
    goto :goto_2

    .line 176
    :catch_6
    move-object v9, v6

    .line 177
    goto :goto_1

    .line 178
    :catch_7
    move v8, v9

    .line 179
    move-object v9, v6

    .line 180
    goto :goto_3

    .line 181
    :catch_8
    move-object v9, v6

    .line 182
    goto :goto_4

    .line 183
    :catch_9
    move-object v9, v6

    .line 184
    goto :goto_5

    .line 185
    :cond_7
    :goto_7
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->d:I

    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    iput-object v5, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->e:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iput-object v5, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->g:Ljava/lang/String;

    .line 206
    .line 207
    const/4 v5, 0x2

    .line 208
    iput v5, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 209
    .line 210
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const/16 v5, 0xc8

    .line 214
    .line 215
    if-eq v1, v5, :cond_8

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 218
    .line 219
    .line 220
    :try_start_8
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 221
    .line 222
    .line 223
    goto/16 :goto_11

    .line 224
    .line 225
    :catch_a
    move-object v1, v6

    .line 226
    move-object v9, v1

    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :catch_b
    move-object v1, v6

    .line 230
    move-object v9, v1

    .line 231
    goto/16 :goto_d

    .line 232
    .line 233
    :catch_c
    move-object v1, v6

    .line 234
    move-object v9, v1

    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :catch_d
    move-object v1, v6

    .line 238
    move-object v9, v1

    .line 239
    goto/16 :goto_f

    .line 240
    .line 241
    :cond_8
    :try_start_9
    invoke-static {v7}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->f(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_9

    .line 246
    .line 247
    iput-object v1, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->b:Ljava/lang/String;

    .line 248
    .line 249
    :cond_9
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-lez v1, :cond_a

    .line 254
    .line 255
    iput-boolean v9, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->h:Z

    .line 256
    .line 257
    int-to-long v9, v1

    .line 258
    iput-wide v9, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->j:J

    .line 259
    .line 260
    :cond_a
    const/4 v5, 0x3

    .line 261
    iput v5, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 262
    .line 263
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    new-instance v9, Lcom/mycompany/app/script/UnicodeReader;

    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    iget-object v11, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->e:Lorg/json/JSONObject;

    if-eqz v11, :cond_soulbin_skip

    const-string v13, "__soulBin"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_soulbin_skip

    const-string v10, "ISO-8859-1"

    :cond_soulbin_skip
    .line 276
    invoke-direct {v9, v5, v10}, Lcom/mycompany/app/script/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 277
    .line 278
    .line 279
    const/16 v5, 0x1000

    .line 280
    .line 281
    :try_start_a
    new-array v10, v5, [C

    .line 282
    .line 283
    move-object v12, v6

    .line 284
    move v11, v8

    .line 285
    :goto_8
    iget-object v13, v9, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 286
    .line 287
    invoke-virtual {v13, v10, v8, v5}, Ljava/io/InputStreamReader;->read([CII)I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    const/4 v14, -0x1

    .line 292
    if-eq v13, v14, :cond_e

    .line 293
    .line 294
    if-gtz v13, :cond_b

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_b
    if-lez v11, :cond_c

    .line 298
    .line 299
    if-lez v1, :cond_c

    .line 300
    .line 301
    int-to-long v14, v11

    .line 302
    iput-wide v14, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->i:J

    .line 303
    .line 304
    iget-object v14, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->k:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v0, v3, v14}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :catch_e
    move-object v1, v6

    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :catch_f
    move-object v1, v6

    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :catch_10
    move-object v1, v6

    .line 317
    goto/16 :goto_4

    .line 318
    .line 319
    :catch_11
    move-object v1, v6

    .line 320
    goto/16 :goto_5

    .line 321
    .line 322
    :cond_c
    :goto_9
    if-nez v12, :cond_d

    .line 323
    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    :cond_d
    invoke-virtual {v12, v10, v8, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    add-int/2addr v11, v13

    .line 333
    goto :goto_8

    .line 334
    :cond_e
    :goto_a
    invoke-virtual {v9}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 335
    .line 336
    .line 337
    :try_start_b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 338
    .line 339
    .line 340
    if-eqz v12, :cond_f

    .line 341
    .line 342
    :try_start_c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iput-object v1, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->c:Ljava/lang/String;

    .line 347
    .line 348
    :cond_f
    const/4 v1, 0x4

    .line 349
    iput v1, v3, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 350
    .line 351
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->i:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 357
    .line 358
    .line 359
    move-object v1, v6

    .line 360
    move-object v9, v1

    .line 361
    goto :goto_10

    .line 362
    :goto_b
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_10
    :goto_c
    move-object/from16 v16, v6

    .line 366
    .line 367
    move-object v6, v1

    .line 368
    move-object/from16 v1, v16

    .line 369
    .line 370
    goto :goto_10

    .line 371
    :goto_d
    if-eqz v8, :cond_12

    .line 372
    .line 373
    iget-object v2, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->g:Lorg/json/JSONObject;

    .line 374
    .line 375
    if-eqz v2, :cond_10

    .line 376
    .line 377
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_11

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :cond_11
    const-string v4, "onerror"

    .line 385
    .line 386
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_c

    .line 394
    :cond_12
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto :goto_c

    .line 398
    :goto_e
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto :goto_c

    .line 402
    :goto_f
    iget-object v2, v0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->p:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_c

    .line 408
    :goto_10
    if-eqz v6, :cond_13

    .line 409
    .line 410
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12

    .line 411
    .line 412
    .line 413
    :catch_12
    :cond_13
    if-eqz v9, :cond_14

    .line 414
    .line 415
    :try_start_e
    invoke-virtual {v9}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    .line 416
    .line 417
    .line 418
    :catch_13
    :cond_14
    if-eqz v1, :cond_15

    .line 419
    .line 420
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    .line 421
    .line 422
    .line 423
    :catch_14
    :cond_15
    :goto_11
    return-object v3
.end method

.method public final c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->b:Landroid/webkit/WebView;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "(JSON.parse("

    .line 18
    .line 19
    const-string v2, "));})();"

    .line 20
    .line 21
    const-string v3, "(function(){unsafeWindow."

    .line 22
    .line 23
    invoke-static {v3, p2, v1, p1, v2}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final d(Lcom/mycompany/app/script/WebViewXmlHttpResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->g:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "onload"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->c(Lcom/mycompany/app/script/WebViewXmlHttpResponse;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    return-object v2
.end method

.method public final g(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 1
    const-string v0, "Basic "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ":"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->o:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "UTF-8"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "Authorization"

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    return-void
.end method

.method public final h(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpRequest;->f:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :cond_1
    return-void
.end method

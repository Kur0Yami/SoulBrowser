.class public Lcom/mycompany/app/script/WebViewXmlHttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public final f:Lorg/json/JSONObject;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->f:Lorg/json/JSONObject;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "readyState"

    .line 8
    .line 9
    iget v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "responseHeaders"

    .line 15
    .line 16
    iget-object v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v2, "responseText"

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v2, "status"

    .line 29
    .line 30
    iget v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->d:I

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v2, "statusText"

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v2, "finalUrl"

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string v2, "lengthComputable"

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->h:Z

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v2, "loaded"

    .line 57
    .line 58
    iget-wide v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->i:J

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v2, "total"

    .line 64
    .line 65
    iget-wide v3, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->j:J

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/mycompany/app/script/WebViewXmlHttpResponse;->f:Lorg/json/JSONObject;

    .line 71
    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    const-string v3, "context"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-object v0, v1

    .line 81
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    return-object v0

    .line 93
    :catch_1
    :goto_1
    const-string v0, ""

    .line 94
    .line 95
    return-object v0
.end method

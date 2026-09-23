.class final Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "SourceFile"


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestConfig:Lorg/apache/http/client/config/RequestConfig$Builder;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 7
    .line 8
    invoke-static {}, Lorg/apache/http/client/config/RequestConfig;->custom()Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setNormalizeUri(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 8
    .line 9
    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const-string v0, "Apache HTTP client does not support %s requests with content."

    .line 26
    .line 27
    invoke-static {v1, v0, v3}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/google/api/client/http/apache/v2/ContentEntity;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v3, v4, v1}, Lcom/google/api/client/http/apache/v2/ContentEntity;-><init>(JLcom/google/api/client/util/StreamingContent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentEncoding()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    const-wide/16 v5, -0x1

    .line 62
    .line 63
    cmp-long v1, v3, v5

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setChunked(Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 71
    .line 72
    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 73
    .line 74
    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setConfig(Lorg/apache/http/client/config/RequestConfig;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/google/api/client/http/apache/v2/ApacheHttpResponse;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 93
    .line 94
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/apache/v2/ApacheHttpResponse;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    .line 99
    .line 100
    .line 101
    return-object v0
.end method

.method public setTimeout(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.class Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;
.super Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->tokenRequestStatusCode:Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->tokenRequestStatusCode:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->c:I

    .line 21
    .line 22
    const-string v1, "Token Fetch Error"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const-string v0, "Metadata-Flavor"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->getFirstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Google"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/google/api/client/json/GenericJson;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->accessToken:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "access_token"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const v1, 0x36ee80

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "expires_in"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "token_type"

    .line 74
    .line 75
    const-string v2, "Bearer"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "application/json; charset=UTF-8"

    .line 90
    .line 91
    iput-object v2, v1, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 98
    .line 99
    const-string v1, "Metadata request header not found."

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.class public Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACCESS_TOKEN_INDEX:I = 0x2

.field protected static final GET_AUTH_TOKEN_REQUEST:Ljava/lang/String; = "2\n[]"

.field private static final READ_TIMEOUT_MS:I = 0x1388


# instance fields
.field private final authPort:I

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(ILcom/google/api/client/json/JsonFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->authPort:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 9

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    const-string v1, "localhost"

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->getAuthPort()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x1388

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 30
    .line 31
    .line 32
    const-string v3, "2\n[]"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/io/BufferedReader;

    .line 38
    .line 39
    new-instance v3, Ljava/io/InputStreamReader;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-class v3, Ljava/util/LinkedList;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-class v5, Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v6, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->S()Lcom/google/api/client/json/JsonToken;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    :goto_0
    sget-object v8, Lcom/google/api/client/json/JsonToken;->f:Lcom/google/api/client/json/JsonToken;

    .line 81
    .line 82
    if-eq v7, v8, :cond_0

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-virtual {v2, v7, v5, v6, v4}, Lcom/google/api/client/json/JsonParser;->F(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->v()Lcom/google/api/client/json/JsonToken;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 117
    .line 118
    .line 119
    throw v1
.end method

.method public getAuthPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->authPort:I

    .line 2
    .line 3
    return v0
.end method

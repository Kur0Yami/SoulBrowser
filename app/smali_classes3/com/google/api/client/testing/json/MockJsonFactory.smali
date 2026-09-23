.class public Lcom/google/api/client/testing/json/MockJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# virtual methods
.method public final createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/api/client/testing/json/MockJsonGenerator;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/testing/json/MockJsonFactory;)V

    return-object p1
.end method

.method public final createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    .line 2
    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/testing/json/MockJsonFactory;)V

    return-object p1
.end method

.method public final createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    .line 4
    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/testing/json/MockJsonFactory;)V

    return-object p1
.end method

.method public final createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    .line 3
    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/testing/json/MockJsonFactory;)V

    return-object p1
.end method

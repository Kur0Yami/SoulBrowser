.class public Lcom/google/api/client/json/gson/GsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonFactory$Builder;,
        Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;
    }
.end annotation


# instance fields
.field private readLeniency:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;Lcom/google/api/client/json/gson/GsonFactory$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/api/client/json/gson/GsonFactory;-><init>(Lcom/google/api/client/json/gson/GsonFactory$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/api/client/json/gson/GsonFactory$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;
    .locals 1
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/client/json/gson/GsonFactory$InstanceHolder;->a:Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/api/client/json/gson/GsonGenerator;

    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Lcom/google/api/client/json/gson/GsonGenerator;-><init>(Lcom/google/gson/stream/JsonWriter;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/client/json/gson/GsonParser;

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonParser;-><init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonReader;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    .line 4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public getReadLeniency()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/json/gson/GsonFactory;->readLeniency:Z

    .line 2
    .line 3
    return v0
.end method

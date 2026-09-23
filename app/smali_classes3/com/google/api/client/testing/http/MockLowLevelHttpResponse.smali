.class public Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field public a:Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->c:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->e:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->f:Ljava/util/ArrayList;

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->g:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iput-object v2, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a:Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->g:J

    .line 10
    .line 11
    invoke-static {v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iput-object v2, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a:Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->g:J

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a:Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    .line 35
    .line 36
    array-length p1, p1

    .line 37
    int-to-long v0, p1

    .line 38
    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->g:J

    .line 39
    .line 40
    const-wide/16 v4, -0x1

    .line 41
    .line 42
    cmp-long p1, v0, v4

    .line 43
    .line 44
    if-ltz p1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x0

    .line 48
    :goto_0
    invoke-static {v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->a:Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getHeaderName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getHeaderValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->c:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

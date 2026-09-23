.class public Lcom/google/auth/oauth2/ServiceAccountCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/ServiceAccountSigner;
.implements Lcom/google/auth/oauth2/IdTokenProvider;
.implements Lcom/google/auth/oauth2/JwtProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;
    }
.end annotation


# static fields
.field public static final y:Lcom/google/auth/oauth2/LoggerProvider;


# instance fields
.field public final q:Ljava/lang/String;

.field public final r:Ljava/security/PrivateKey;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/net/URI;

.field public final u:Lcom/google/common/collect/ImmutableSet;

.field public final v:Lcom/google/common/collect/ImmutableSet;

.field public final transient w:Lcom/google/auth/http/HttpTransportFactory;

.field public transient x:Lcom/google/auth/oauth2/JwtCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/LoggerProvider;

    .line 2
    .line 3
    const-class v1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/LoggerProvider;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->y:Lcom/google/auth/oauth2/LoggerProvider;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->x:Lcom/google/auth/oauth2/JwtCredentials;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->f:Ljava/security/PrivateKey;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/security/PrivateKey;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->h:Ljava/util/Collection;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->w()Lcom/google/common/collect/ImmutableSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->w()Lcom/google/common/collect/ImmutableSet;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->i:Lcom/google/auth/http/HttpTransportFactory;

    .line 49
    .line 50
    sget-object v1, Lcom/google/auth/oauth2/OAuth2Utils;->c:Lcom/google/auth/http/HttpTransportFactory;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/auth/http/HttpTransportFactory;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->s:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->g:Ljava/net/URI;

    .line 75
    .line 76
    if-nez p1, :cond_1

    .line 77
    .line 78
    sget-object p1, Lcom/google/auth/oauth2/OAuth2Utils;->a:Ljava/net/URI;

    .line 79
    .line 80
    :cond_1
    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 11
    .line 12
    const-string v0, "Scopes and uri are not configured for service account. Specify the scopes by calling createScoped or passing scopes to constructor or providing uri to getRequestMetadata."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "googleapis.com"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->a(Ljava/net/URI;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->p(Ljava/net/URI;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->p(Ljava/net/URI;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    instance-of v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->s:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->s:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 73
    .line 74
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-super {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/16 v3, 0xc

    .line 15
    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v4, v3, v0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iget-object v5, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 23
    .line 24
    aput-object v5, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    iget-object v5, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 28
    .line 29
    aput-object v5, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-object v4, v3, v0

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->s:Ljava/lang/String;

    .line 36
    .line 37
    aput-object v4, v3, v0

    .line 38
    .line 39
    const/4 v0, 0x5

    .line 40
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 41
    .line 42
    aput-object v4, v3, v0

    .line 43
    .line 44
    const/4 v0, 0x6

    .line 45
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 46
    .line 47
    aput-object v4, v3, v0

    .line 48
    .line 49
    const/4 v0, 0x7

    .line 50
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 51
    .line 52
    aput-object v4, v3, v0

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    aput-object v1, v3, v0

    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    const/16 v1, 0x9

    .line 61
    .line 62
    aput-object v0, v3, v1

    .line 63
    .line 64
    const/16 v1, 0xa

    .line 65
    .line 66
    aput-object v0, v3, v1

    .line 67
    .line 68
    const/16 v0, 0xb

    .line 69
    .line 70
    aput-object v2, v3, v0

    .line 71
    .line 72
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    return v0
.end method

.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 15

    .line 1
    const-string v0, ", iss: "

    .line 2
    .line 3
    const-string v1, "Error getting access token for service account: "

    .line 4
    .line 5
    sget-object v2, Lcom/google/auth/oauth2/OAuth2Utils;->d:Lcom/google/api/client/json/gson/GsonFactory;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    new-instance v6, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 14
    .line 15
    invoke-direct {v6}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->g()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->c()V

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual {v6, v7}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->h(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v8, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 29
    .line 30
    invoke-direct {v8}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v9, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v8, v9}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 36
    .line 37
    .line 38
    const-wide/16 v10, 0x3e8

    .line 39
    .line 40
    div-long/2addr v4, v10

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    invoke-virtual {v8, v12}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 46
    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    int-to-long v13, v12

    .line 50
    add-long/2addr v4, v13

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v8, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v7}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/16 v7, 0x20

    .line 68
    .line 69
    const-string v13, "scope"

    .line 70
    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    invoke-static {v7}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v8, v13, v4}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v7}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5, v4}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v8, v13, v4}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :goto_0
    sget-object v4, Lcom/google/auth/oauth2/OAuth2Utils;->a:Ljava/net/URI;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v8, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 105
    .line 106
    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 108
    .line 109
    invoke-static {v4, v2, v6, v8}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 113
    new-instance v5, Lcom/google/api/client/util/GenericData;

    .line 114
    .line 115
    invoke-direct {v5}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v6, "grant_type"

    .line 119
    .line 120
    const-string v7, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    .line 121
    .line 122
    invoke-virtual {v5, v6, v7}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 123
    .line 124
    .line 125
    const-string v6, "assertion"

    .line 126
    .line 127
    invoke-virtual {v5, v6, v4}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 128
    .line 129
    .line 130
    new-instance v4, Lcom/google/api/client/http/UrlEncodedContent;

    .line 131
    .line 132
    invoke-direct {v4, v5}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 136
    .line 137
    invoke-interface {v5}, Lcom/google/auth/http/HttpTransportFactory;->a()Lcom/google/api/client/http/HttpTransport;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v6, Lcom/google/api/client/http/GenericUrl;

    .line 146
    .line 147
    iget-object v7, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 148
    .line 149
    invoke-direct {v6, v7}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URI;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v6, v4}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_1

    .line 161
    .line 162
    sget-object v5, Lcom/google/auth/CredentialTypeForMetrics;->f:Lcom/google/auth/CredentialTypeForMetrics;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    sget-object v5, Lcom/google/auth/CredentialTypeForMetrics;->g:Lcom/google/auth/CredentialTypeForMetrics;

    .line 166
    .line 167
    :goto_1
    sget-object v6, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->f:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 168
    .line 169
    invoke-static {v6, v5}, Lcom/google/auth/oauth2/MetricsUtils;->a(Lcom/google/auth/oauth2/MetricsUtils$RequestType;Lcom/google/auth/CredentialTypeForMetrics;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const-string v7, "x-goog-api-client"

    .line 178
    .line 179
    invoke-virtual {v6, v7, v5}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v12}, Lcom/google/api/client/http/HttpRequest;->setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;

    .line 183
    .line 184
    .line 185
    new-instance v5, Lcom/google/api/client/json/JsonObjectParser;

    .line 186
    .line 187
    invoke-direct {v5, v2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 191
    .line 192
    .line 193
    const-string v2, "Sending request to refresh access token"

    .line 194
    .line 195
    sget-object v5, Lcom/google/auth/oauth2/ServiceAccountCredentials;->y:Lcom/google/auth/oauth2/LoggerProvider;

    .line 196
    .line 197
    invoke-static {v4, v5, v2}, Lcom/google/auth/oauth2/LoggingUtils;->a(Lcom/google/api/client/http/HttpRequest;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 201
    .line 202
    invoke-direct {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    .line 203
    .line 204
    .line 205
    const/16 v6, 0x3e8

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setInitialIntervalMillis(I)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v6, v7}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setRandomizationFactor(D)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 221
    .line 222
    invoke-virtual {v2, v6, v7}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setMultiplier(D)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->build()Lcom/google/api/client/util/ExponentialBackOff;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    new-instance v6, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;

    .line 231
    .line 232
    invoke-direct {v6, v2}, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;-><init>(Lcom/google/api/client/util/BackOff;)V

    .line 233
    .line 234
    .line 235
    new-instance v7, Lcom/google/auth/oauth2/a;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v7}, Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;->setBackOffRequired(Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler$BackOffRequired;)Lcom/google/api/client/http/HttpBackOffUnsuccessfulResponseHandler;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v4, v6}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 245
    .line 246
    .line 247
    new-instance v6, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;

    .line 248
    .line 249
    invoke-direct {v6, v2}, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;-><init>(Lcom/google/api/client/util/BackOff;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v6}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 253
    .line 254
    .line 255
    :try_start_1
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    const-string v4, "Received response for refresh access token"

    .line 260
    .line 261
    invoke-static {v2, v5, v4}, Lcom/google/auth/oauth2/LoggingUtils;->b(Lcom/google/api/client/http/HttpResponse;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .line 263
    .line 264
    const-class v0, Lcom/google/api/client/util/GenericData;

    .line 265
    .line 266
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lcom/google/api/client/util/GenericData;

    .line 271
    .line 272
    const-string v1, "Response payload"

    .line 273
    .line 274
    invoke-static {v0, v5, v1}, Lcom/google/auth/oauth2/LoggingUtils;->c(Lcom/google/api/client/util/GenericData;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v1, "access_token"

    .line 278
    .line 279
    const-string v2, "Error parsing token refresh response. "

    .line 280
    .line 281
    invoke-static {v1, v2, v0}, Lcom/google/auth/oauth2/OAuth2Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Utils;->a(Lcom/google/api/client/util/GenericData;)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-interface {v3}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    int-to-long v4, v0

    .line 294
    mul-long/2addr v4, v10

    .line 295
    add-long/2addr v4, v2

    .line 296
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    .line 297
    .line 298
    new-instance v2, Ljava/util/Date;

    .line 299
    .line 300
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 304
    .line 305
    .line 306
    return-object v0

    .line 307
    :catch_0
    move-exception v2

    .line 308
    goto :goto_2

    .line 309
    :catch_1
    move-exception v2

    .line 310
    goto :goto_4

    .line 311
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {v1, v3, v0, v9}, Landroid/support/v4/media/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    if-nez v0, :cond_2

    .line 320
    .line 321
    new-instance v0, Lcom/google/auth/oauth2/GoogleAuthException;

    .line 322
    .line 323
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_2
    new-instance v1, Lcom/google/auth/oauth2/GoogleAuthException;

    .line 328
    .line 329
    invoke-direct {v1, v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    move-object v0, v1

    .line 333
    :goto_3
    throw v0

    .line 334
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-static {v1, v3, v0, v9}, Landroid/support/v4/media/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v2, v0}, Lcom/google/auth/oauth2/GoogleAuthException;->a(Lcom/google/api/client/http/HttpResponseException;Ljava/lang/String;)Lcom/google/auth/oauth2/GoogleAuthException;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    throw v0

    .line 347
    :catch_2
    move-exception v0

    .line 348
    new-instance v1, Ljava/io/IOException;

    .line 349
    .line 350
    const-string v2, "Error signing service account access token request with private key."

    .line 351
    .line 352
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    throw v1
.end method

.method public final l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->f:Ljava/security/PrivateKey;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->i:Lcom/google/auth/http/HttpTransportFactory;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->g:Ljava/net/URI;

    .line 21
    .line 22
    iput-object p1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;->h:Ljava/util/Collection;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, v0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 26
    .line 27
    new-instance p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;-><init>(Lcom/google/auth/oauth2/ServiceAccountCredentials$Builder;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public final n()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->n()Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "clientId"

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "clientEmail"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "privateKeyId"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "transportFactoryClassName"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->s:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v3, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "tokenServerUri"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->t:Ljava/net/URI;

    .line 33
    .line 34
    invoke-virtual {v0, v3, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "scopes"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "defaultScopes"

    .line 45
    .line 46
    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 47
    .line 48
    invoke-virtual {v0, v3, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "serviceAccountUser"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    const-string v2, "lifetime"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "useJwtAccessWithScope"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->d(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const-string v2, "defaultRetriesEnabled"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->d(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final p(Ljava/net/URI;)Ljava/util/Map;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Missing required properties: additionalClaims"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 8
    .line 9
    const-string v3, "Null additionalClaims"

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->r:Ljava/security/PrivateKey;

    .line 12
    .line 13
    const-wide/16 v5, 0x1

    .line 14
    .line 15
    const-string v7, "scope"

    .line 16
    .line 17
    const/16 v8, 0x20

    .line 18
    .line 19
    iget-object v9, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->v:Lcom/google/common/collect/ImmutableSet;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->u:Lcom/google/common/collect/ImmutableSet;

    .line 24
    .line 25
    const/4 v12, 0x0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->x:Lcom/google/auth/oauth2/JwtCredentials;

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v10, v11

    .line 40
    :goto_0
    new-instance p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 50
    .line 51
    iput-object v9, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->b:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v9, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v8}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v10}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v7, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iput-object v0, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 70
    .line 71
    sget v0, Lcom/google/auth/oauth2/JwtCredentials;->m:I

    .line 72
    .line 73
    new-instance v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v3, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    .line 79
    .line 80
    iput-object v3, v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;->c:Lcom/google/api/client/util/Clock;

    .line 81
    .line 82
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;->d:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iput-object v4, v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;->a:Ljava/security/PrivateKey;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 100
    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    new-instance v1, Lcom/google/auth/oauth2/AutoValue_JwtClaims;

    .line 104
    .line 105
    iget-object v4, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->a:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v5, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->b:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v1, v4, v5, p1, v3}, Lcom/google/auth/oauth2/AutoValue_JwtClaims;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;->b:Lcom/google/auth/oauth2/JwtClaims;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iput-object v2, v0, Lcom/google/auth/oauth2/JwtCredentials$Builder;->c:Lcom/google/api/client/util/Clock;

    .line 120
    .line 121
    new-instance p1, Lcom/google/auth/oauth2/JwtCredentials;

    .line 122
    .line 123
    invoke-direct {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials;-><init>(Lcom/google/auth/oauth2/JwtCredentials$Builder;)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->x:Lcom/google/auth/oauth2/JwtCredentials;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 136
    .line 137
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->x:Lcom/google/auth/oauth2/JwtCredentials;

    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    .line 145
    :cond_4
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move-object v10, v11

    .line 153
    :goto_2
    new-instance v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    iput-object v11, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 163
    .line 164
    iput-object v9, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->b:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v9, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->c:Ljava/lang/String;

    .line 167
    .line 168
    if-nez p1, :cond_7

    .line 169
    .line 170
    invoke-static {v8}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, v10}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v7, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    iput-object p1, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 188
    .line 189
    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_7
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-eqz v3, :cond_9

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-nez v3, :cond_8

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_8
    :try_start_0
    new-instance v3, Ljava/net/URI;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    const-string v9, "/"

    .line 217
    .line 218
    invoke-direct {v3, v7, v8, v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    move-object p1, v3

    .line 222
    :catch_0
    :cond_9
    :goto_3
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->a:Ljava/lang/String;

    .line 227
    .line 228
    :goto_4
    sget p1, Lcom/google/auth/oauth2/JwtCredentials;->m:I

    .line 229
    .line 230
    new-instance p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 233
    .line 234
    .line 235
    sget-object v3, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    .line 236
    .line 237
    iput-object v3, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->c:Lcom/google/api/client/util/Clock;

    .line 238
    .line 239
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 240
    .line 241
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    iput-object v3, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->d:Ljava/lang/Long;

    .line 250
    .line 251
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    iput-object v4, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->a:Ljava/security/PrivateKey;

    .line 255
    .line 256
    iget-object v3, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->d:Ljava/util/Map;

    .line 257
    .line 258
    if-eqz v3, :cond_a

    .line 259
    .line 260
    new-instance v1, Lcom/google/auth/oauth2/AutoValue_JwtClaims;

    .line 261
    .line 262
    iget-object v4, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->a:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v5, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->b:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/google/auth/oauth2/AutoValue_JwtClaims$Builder;->c:Ljava/lang/String;

    .line 267
    .line 268
    invoke-direct {v1, v4, v5, v0, v3}, Lcom/google/auth/oauth2/AutoValue_JwtClaims;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    .line 270
    .line 271
    iput-object v1, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->b:Lcom/google/auth/oauth2/JwtClaims;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    iput-object v2, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->c:Lcom/google/api/client/util/Clock;

    .line 277
    .line 278
    new-instance v0, Lcom/google/auth/oauth2/JwtCredentials;

    .line 279
    .line 280
    invoke-direct {v0, p1}, Lcom/google/auth/oauth2/JwtCredentials;-><init>(Lcom/google/auth/oauth2/JwtCredentials$Builder;)V

    .line 281
    .line 282
    .line 283
    move-object p1, v0

    .line 284
    :goto_5
    invoke-virtual {p1, v12}, Lcom/google/auth/oauth2/JwtCredentials;->a(Ljava/net/URI;)Ljava/util/Map;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p1}, Lcom/google/auth/oauth2/GoogleCredentials;->k(Ljava/util/Map;)Ljava/util/Map;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    return-object p1

    .line 293
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method public final q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

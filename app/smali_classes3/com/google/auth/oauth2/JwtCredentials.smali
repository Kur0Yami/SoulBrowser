.class public Lcom/google/auth/oauth2/JwtCredentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/JwtProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/JwtCredentials$Builder;
    }
.end annotation


# static fields
.field public static final l:J

.field public static final synthetic m:I


# instance fields
.field public final c:[B

.field public final f:Ljava/security/PrivateKey;

.field public final g:Lcom/google/auth/oauth2/JwtClaims;

.field public final h:Ljava/lang/Long;

.field public transient i:Lcom/google/api/client/util/Clock;

.field public transient j:Ljava/lang/String;

.field public transient k:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/auth/oauth2/JwtCredentials;->l:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/JwtCredentials$Builder;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->c:[B

    .line 8
    .line 9
    iget-object v1, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->a:Ljava/security/PrivateKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->f:Ljava/security/PrivateKey;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->b:Lcom/google/auth/oauth2/JwtClaims;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/auth/oauth2/JwtClaims;->a()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "scope"

    .line 28
    .line 29
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/auth/oauth2/JwtClaims;->a()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    move v2, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v0

    .line 55
    :goto_0
    invoke-virtual {v1}, Lcom/google/auth/oauth2/JwtClaims;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v1}, Lcom/google/auth/oauth2/JwtClaims;->c()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/auth/oauth2/JwtClaims;->d()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    move v0, v4

    .line 76
    :cond_2
    const-string v1, "JWT claims must contain audience, issuer, and subject."

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->d:Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->h:Ljava/lang/Long;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/google/auth/oauth2/JwtCredentials$Builder;->c:Lcom/google/api/client/util/Clock;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials;->i:Lcom/google/api/client/util/Clock;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/util/Map;
    .locals 7

    .line 1
    const-string p1, "Bearer "

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->c:[B

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->k:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->i:Lcom/google/api/client/util/Clock;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->i:Lcom/google/api/client/util/Clock;

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->i:Lcom/google/api/client/util/Clock;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide/16 v3, 0x3e8

    .line 25
    .line 26
    div-long/2addr v1, v3

    .line 27
    iget-object v3, p0, Lcom/google/auth/oauth2/JwtCredentials;->k:Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    sget-wide v5, Lcom/google/auth/oauth2/JwtCredentials;->l:J

    .line 34
    .line 35
    sub-long/2addr v3, v5

    .line 36
    cmp-long v1, v1, v3

    .line 37
    .line 38
    if-lez v1, :cond_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtCredentials;->b()V

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "Authorization"

    .line 62
    .line 63
    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    monitor-exit v0

    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p1
.end method

.method public final b()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->g()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->c()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->h(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->i:Lcom/google/api/client/util/Clock;

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    const-wide/16 v4, 0x3e8

    .line 55
    .line 56
    div-long/2addr v2, v4

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/auth/oauth2/JwtCredentials;->h:Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    add-long/2addr v4, v2

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->a()Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->c:[B

    .line 88
    .line 89
    monitor-enter v2

    .line 90
    :try_start_0
    invoke-virtual {v1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->getExpirationTimeSeconds()Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, p0, Lcom/google/auth/oauth2/JwtCredentials;->k:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    :try_start_1
    iget-object v3, p0, Lcom/google/auth/oauth2/JwtCredentials;->f:Ljava/security/PrivateKey;

    .line 97
    .line 98
    sget-object v4, Lcom/google/auth/oauth2/OAuth2Utils;->d:Lcom/google/api/client/json/gson/GsonFactory;

    .line 99
    .line 100
    invoke-static {v3, v4, v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    :try_start_2
    monitor-exit v2

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/io/IOException;

    .line 112
    .line 113
    const-string v3, "Error signing service account JWT access header with private key."

    .line 114
    .line 115
    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/JwtCredentials;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/JwtCredentials;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->f:Ljava/security/PrivateKey;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/auth/oauth2/JwtCredentials;->f:Ljava/security/PrivateKey;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->h:Ljava/lang/Long;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/auth/oauth2/JwtCredentials;->h:Ljava/lang/Long;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->f:Ljava/security/PrivateKey;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->g:Lcom/google/auth/oauth2/JwtClaims;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->h:Ljava/lang/Long;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

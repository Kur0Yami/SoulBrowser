.class public Lcom/google/auth/oauth2/ImpersonatedCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/ServiceAccountSigner;
.implements Lcom/google/auth/oauth2/IdTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;
    }
.end annotation


# static fields
.field public static final A:Lcom/google/auth/oauth2/LoggerProvider;


# instance fields
.field public q:Lcom/google/auth/oauth2/GoogleCredentials;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/util/ArrayList;

.field public final t:Lcom/google/common/collect/ImmutableList;

.field public final u:I

.field public final v:Ljava/lang/String;

.field public final transient w:Lcom/google/auth/http/HttpTransportFactory;

.field public final transient x:Ljava/util/Calendar;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/LoggerProvider;

    .line 2
    .line 3
    const-class v1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/LoggerProvider;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->A:Lcom/google/auth/oauth2/LoggerProvider;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/auth/oauth2/GoogleCredentials$Builder;->d:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->e:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->f:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->g:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->h:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 25
    .line 26
    iget v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->i:I

    .line 27
    .line 28
    iput v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 29
    .line 30
    iget-object v3, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->j:Lcom/google/auth/http/HttpTransportFactory;

    .line 31
    .line 32
    sget-object v4, Lcom/google/auth/oauth2/OAuth2Utils;->c:Lcom/google/auth/http/HttpTransportFactory;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/google/auth/oauth2/OAuth2Credentials;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/google/auth/http/HttpTransportFactory;

    .line 43
    .line 44
    iput-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iput-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->v:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->k:Ljava/util/Calendar;

    .line 57
    .line 58
    iput-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->x:Ljava/util/Calendar;

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 68
    .line 69
    :cond_0
    const v1, 0xa8c0

    .line 70
    .line 71
    .line 72
    if-gt v2, v1, :cond_3

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/auth/oauth2/GoogleCredentials;->m()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/auth/oauth2/GoogleCredentials;->m()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, " in source credentials does not match "

    .line 100
    .line 101
    const-string v3, " universe domain set for impersonated credentials."

    .line 102
    .line 103
    const-string v4, "Universe domain "

    .line 104
    .line 105
    invoke-static {v4, v1, v2, v0, v3}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_2
    :goto_0
    iget v0, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->l:I

    .line 114
    .line 115
    iput v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->y:I

    .line 116
    .line 117
    iget p1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->m:I

    .line 118
    .line 119
    iput p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->z:I

    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v0, "lifetime must be less than or equal to 43200"

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    check-cast p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    iget-object v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->v:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->v:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 86
    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x7

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 17
    .line 18
    aput-object v3, v2, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 22
    .line 23
    aput-object v3, v2, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    aput-object v3, v2, v0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    aput-object v1, v2, v0

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    const/4 v1, 0x0

    .line 35
    aput-object v1, v2, v0

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    aput-object v1, v2, v0

    .line 39
    .line 40
    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->d()Lcom/google/auth/oauth2/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 10
    .line 11
    const-string v1, "https://www.googleapis.com/auth/cloud-platform"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/GoogleCredentials;->l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 24
    .line 25
    instance-of v0, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->m()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "googleapis.com"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 42
    .line 43
    check-cast v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->q()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 52
    .line 53
    instance-of v1, v0, Lcom/google/auth/oauth2/IdentityPoolCredentials;

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->c(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/google/auth/http/HttpTransportFactory;->a()Lcom/google/api/client/http/HttpTransport;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser;

    .line 75
    .line 76
    sget-object v2, Lcom/google/auth/oauth2/OAuth2Utils;->d:Lcom/google/api/client/json/gson/GsonFactory;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/google/auth/http/HttpCredentialsAdapter;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 84
    .line 85
    invoke-direct {v2, v3}, Lcom/google/auth/http/HttpCredentialsAdapter;-><init>(Lcom/google/auth/Credentials;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/google/auth/oauth2/GoogleCredentials;->m()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "/v1/projects/-/serviceAccounts/"

    .line 99
    .line 100
    const-string v5, ":generateAccessToken"

    .line 101
    .line 102
    const-string v6, "https://iamcredentials."

    .line 103
    .line 104
    iget-object v7, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v6, v3, v4, v7, v5}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-instance v4, Lcom/google/api/client/http/GenericUrl;

    .line 111
    .line 112
    invoke-direct {v4, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget v5, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 121
    .line 122
    const-string v6, "s"

    .line 123
    .line 124
    invoke-static {v5, v6, v3}, Landroid/support/v4/media/a;->g(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const-string v7, "delegates"

    .line 129
    .line 130
    iget-object v8, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 131
    .line 132
    const-string v9, "scope"

    .line 133
    .line 134
    iget-object v10, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 135
    .line 136
    const-string v11, "lifetime"

    .line 137
    .line 138
    invoke-static/range {v7 .. v12}, Lcom/google/common/collect/ImmutableMap;->m(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v5, Lcom/google/api/client/http/json/JsonHttpContent;

    .line 143
    .line 144
    iget-object v6, v1, Lcom/google/api/client/json/JsonObjectParser;->a:Lcom/google/api/client/json/JsonFactory;

    .line 145
    .line 146
    invoke-direct {v5, v6, v3}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->y:I

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 156
    .line 157
    .line 158
    iget v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->z:I

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lcom/google/api/client/http/HttpRequest;->setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Lcom/google/auth/http/HttpCredentialsAdapter;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 167
    .line 168
    .line 169
    sget-object v1, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->f:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 170
    .line 171
    sget-object v2, Lcom/google/auth/CredentialTypeForMetrics;->i:Lcom/google/auth/CredentialTypeForMetrics;

    .line 172
    .line 173
    invoke-static {v1, v2}, Lcom/google/auth/oauth2/MetricsUtils;->a(Lcom/google/auth/oauth2/MetricsUtils$RequestType;Lcom/google/auth/CredentialTypeForMetrics;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "x-goog-api-client"

    .line 182
    .line 183
    invoke-virtual {v2, v3, v1}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 184
    .line 185
    .line 186
    :try_start_1
    sget-object v1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->A:Lcom/google/auth/oauth2/LoggerProvider;

    .line 187
    .line 188
    const-string v2, "Sending request to refresh access token"

    .line 189
    .line 190
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/LoggingUtils;->a(Lcom/google/api/client/http/HttpRequest;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v2, "Received response for refresh access token"

    .line 198
    .line 199
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/LoggingUtils;->b(Lcom/google/api/client/http/HttpResponse;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .line 201
    .line 202
    const-class v2, Lcom/google/api/client/util/GenericData;

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 209
    .line 210
    const-string v3, "Response payload for access token"

    .line 211
    .line 212
    invoke-static {v2, v1, v3}, Lcom/google/auth/oauth2/LoggingUtils;->c(Lcom/google/api/client/util/GenericData;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 216
    .line 217
    .line 218
    const-string v0, "accessToken"

    .line 219
    .line 220
    const-string v1, "Expected to find an accessToken"

    .line 221
    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/OAuth2Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "expireTime"

    .line 227
    .line 228
    const-string v3, "Expected to find an expireTime"

    .line 229
    .line 230
    invoke-static {v1, v3, v2}, Lcom/google/auth/oauth2/OAuth2Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 235
    .line 236
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssX"

    .line 237
    .line 238
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->x:Ljava/util/Calendar;

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 244
    .line 245
    .line 246
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    .line 251
    .line 252
    invoke-direct {v2, v0, v1}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    .line 254
    .line 255
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ljava/io/IOException;

    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v3, "Error parsing expireTime: "

    .line 262
    .line 263
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v1

    .line 281
    :catch_1
    move-exception v0

    .line 282
    new-instance v1, Ljava/io/IOException;

    .line 283
    .line 284
    const-string v2, "Error requesting access token"

    .line 285
    .line 286
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    throw v1

    .line 290
    :catch_2
    move-exception v0

    .line 291
    new-instance v1, Ljava/io/IOException;

    .line 292
    .line 293
    const-string v2, "Unable to refresh sourceCredentials"

    .line 294
    .line 295
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    throw v1

    .line 299
    :cond_3
    check-cast v0, Lcom/google/auth/oauth2/IdentityPoolCredentials;

    .line 300
    .line 301
    new-instance v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$Builder;

    .line 302
    .line 303
    invoke-direct {v1, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;)V

    .line 304
    .line 305
    .line 306
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials;

    .line 307
    .line 308
    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;)V

    .line 309
    .line 310
    .line 311
    const/4 v0, 0x0

    .line 312
    throw v0
.end method

.method public final l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xe10

    .line 7
    .line 8
    iput v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->i:I

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->k:Ljava/util/Calendar;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->e:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->h:Ljava/util/List;

    .line 31
    .line 32
    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 33
    .line 34
    iput v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->i:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->w:Lcom/google/auth/http/HttpTransportFactory;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->j:Lcom/google/auth/http/HttpTransportFactory;

    .line 39
    .line 40
    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->y:I

    .line 41
    .line 42
    iput v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->l:I

    .line 43
    .line 44
    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->z:I

    .line 45
    .line 46
    iput v1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->m:I

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "Scopes cannot be null"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;->h:Ljava/util/List;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-object p1, v0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 61
    .line 62
    :try_start_0
    new-instance p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;-><init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$Builder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/auth/oauth2/GoogleCredentials;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "sourceCredentials"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->q:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "targetPrincipal"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->r:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "delegates"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->s:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "scopes"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->t:Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "lifetime"

    .line 34
    .line 35
    iget v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->u:I

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "transportFactoryClassName"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->v:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v2, "quotaProjectId"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "iamEndpointOverride"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

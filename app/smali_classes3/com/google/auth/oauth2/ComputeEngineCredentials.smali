.class public Lcom/google/auth/oauth2/ComputeEngineCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/ServiceAccountSigner;
.implements Lcom/google/auth/oauth2/IdTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;,
        Lcom/google/auth/oauth2/ComputeEngineCredentials$BindingEnforcement;,
        Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;
    }
.end annotation


# static fields
.field public static final u:Lcom/google/auth/oauth2/LoggerProvider;


# instance fields
.field public final q:Ljava/lang/String;

.field public final r:Lcom/google/common/collect/ImmutableSet;

.field public final transient s:Lcom/google/auth/http/HttpTransportFactory;

.field public t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3

    .line 2
    .line 3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x2d

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    .line 13
    .line 14
    .line 15
    const-class v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/auth/oauth2/LoggerProvider;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/google/auth/oauth2/LoggerProvider;-><init>(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->u:Lcom/google/auth/oauth2/LoggerProvider;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials$Builder;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->e:Lcom/google/auth/http/HttpTransportFactory;

    .line 8
    .line 9
    sget-object v2, Lcom/google/auth/oauth2/OAuth2Utils;->c:Lcom/google/auth/http/HttpTransportFactory;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/auth/oauth2/OAuth2Credentials;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/auth/http/HttpTransportFactory;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->s:Lcom/google/auth/http/HttpTransportFactory;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->q:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->f:Ljava/util/Collection;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    :cond_0
    iget-object v1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->g:Ljava/util/Collection;

    .line 44
    .line 45
    :cond_1
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->w()Lcom/google/common/collect/ImmutableSet;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    const-string v1, ""

    .line 60
    .line 61
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

    .line 77
    .line 78
    return-void
.end method

.method public static p()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->a:I

    .line 2
    .line 3
    const-string v0, "GCE_METADATA_HOST"

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "http://"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v0, "http://metadata.google.internal"

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;

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
    check-cast p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->q:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->q:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

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
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->q:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final i()Lcom/google/auth/oauth2/AccessToken;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    .line 2
    .line 3
    sget v1, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->a:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->p()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "/computeMetadata/v1/instance/service-accounts/default/token"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const/16 v2, 0x2c

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/common/base/Joiner;->d(C)Lcom/google/common/base/Joiner;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Lcom/google/common/base/Joiner;->c(Ljava/util/Iterator;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "scopes"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/GenericUrl;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->f:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->o(Ljava/lang/String;Lcom/google/auth/oauth2/MetricsUtils$RequestType;Z)Lcom/google/api/client/http/HttpResponse;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v2, 0x194

    .line 72
    .line 73
    if-eq v1, v2, :cond_3

    .line 74
    .line 75
    const/16 v2, 0xc8

    .line 76
    .line 77
    if-ne v1, v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const-class v1, Lcom/google/api/client/util/GenericData;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/google/api/client/util/GenericData;

    .line 92
    .line 93
    sget-object v1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->u:Lcom/google/auth/oauth2/LoggerProvider;

    .line 94
    .line 95
    const-string v2, "Response payload for access token"

    .line 96
    .line 97
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/LoggingUtils;->c(Lcom/google/api/client/util/GenericData;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "access_token"

    .line 101
    .line 102
    const-string v2, "Error parsing token refresh response. "

    .line 103
    .line 104
    invoke-static {v1, v2, v0}, Lcom/google/auth/oauth2/OAuth2Utils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Utils;->a(Lcom/google/api/client/util/GenericData;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 113
    .line 114
    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    mul-int/lit16 v0, v0, 0x3e8

    .line 119
    .line 120
    int-to-long v4, v0

    .line 121
    add-long/2addr v2, v4

    .line 122
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    .line 123
    .line 124
    new-instance v4, Ljava/util/Date;

    .line 125
    .line 126
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 134
    .line 135
    const-string v1, "Empty content from metadata token server request."

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v4, "Unexpected Error code "

    .line 150
    .line 151
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, " trying to get security access token from Compute Engine metadata for the default service account: "

    .line 158
    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v2

    .line 173
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 174
    .line 175
    const-string v2, "Error code "

    .line 176
    .line 177
    const-string v3, " trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified. It is possible to skip checking for Compute Engine metadata by specifying the environment  variable NO_GCE_CHECK=true."

    .line 178
    .line 179
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public final l(Ljava/util/List;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->v()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->s:Lcom/google/auth/http/HttpTransportFactory;

    .line 11
    .line 12
    iput-object v2, v1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->e:Lcom/google/auth/http/HttpTransportFactory;

    .line 13
    .line 14
    iput-object p1, v1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->f:Ljava/util/Collection;

    .line 15
    .line 16
    iput-object v0, v1, Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;->g:Ljava/util/Collection;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, v1, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 20
    .line 21
    new-instance p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    .line 22
    .line 23
    invoke-direct {p1, v1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Lcom/google/auth/oauth2/ComputeEngineCredentials$Builder;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public final m()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string v0, "googleapis.com"

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->a:I

    .line 26
    .line 27
    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->p()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "/computeMetadata/v1/universe/universe-domain"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->h:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->o(Ljava/lang/String;Lcom/google/auth/oauth2/MetricsUtils$RequestType;Z)Lcom/google/api/client/http/HttpResponse;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0x194

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/16 v3, 0xc8

    .line 60
    .line 61
    if-ne v2, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v0, v1

    .line 75
    :goto_0
    monitor-enter p0

    .line 76
    :try_start_1
    iput-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object v0

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    throw v0

    .line 83
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v4, "Unexpected Error code "

    .line 92
    .line 93
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, " trying to get universe domain from Compute Engine metadata for the default service account: "

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/google/auth/oauth2/GoogleAuthException;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw v0
.end method

.method public final n()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->n()Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "transportFactoryClassName"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->q:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "scopes"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->r:Lcom/google/common/collect/ImmutableSet;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "universeDomainFromMetadata"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->t:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0
.end method

.method public final o(Ljava/lang/String;Lcom/google/auth/oauth2/MetricsUtils$RequestType;Z)Lcom/google/api/client/http/HttpResponse;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->s:Lcom/google/auth/http/HttpTransportFactory;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/auth/http/HttpTransportFactory;->a()Lcom/google/api/client/http/HttpTransport;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    .line 21
    .line 22
    sget-object v1, Lcom/google/auth/oauth2/OAuth2Utils;->d:Lcom/google/api/client/json/gson/GsonFactory;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Metadata-Flavor"

    .line 35
    .line 36
    const-string v2, "Google"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 39
    .line 40
    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    sget-object p3, Lcom/google/auth/CredentialTypeForMetrics;->h:Lcom/google/auth/CredentialTypeForMetrics;

    .line 44
    .line 45
    invoke-static {p2, p3}, Lcom/google/auth/oauth2/MetricsUtils;->a(Lcom/google/auth/oauth2/MetricsUtils$RequestType;Lcom/google/auth/CredentialTypeForMetrics;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "x-goog-api-client"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 56
    .line 57
    .line 58
    :cond_0
    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 60
    .line 61
    .line 62
    :try_start_0
    sget-object p3, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->g:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    const-string p2, "Sending request to get ID token"

    .line 71
    .line 72
    const-string p3, "Received response for ID token request"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    sget-object p3, Lcom/google/auth/oauth2/MetricsUtils$RequestType;->f:Lcom/google/auth/oauth2/MetricsUtils$RequestType;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    const-string p2, "Sending request to refresh access token"

    .line 86
    .line 87
    const-string p3, "Received response for refresh access token"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string p2, "Sending request for universe domain/default service account"

    .line 91
    .line 92
    const-string p3, "Received response for universe domain/default service account"

    .line 93
    .line 94
    :goto_0
    sget-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->u:Lcom/google/auth/oauth2/LoggerProvider;

    .line 95
    .line 96
    invoke-static {p1, v0, p2}, Lcom/google/auth/oauth2/LoggingUtils;->a(Lcom/google/api/client/http/HttpRequest;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1, v0, p3}, Lcom/google/auth/oauth2/LoggingUtils;->b(Lcom/google/api/client/http/HttpResponse;Lcom/google/auth/oauth2/LoggerProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    const/16 p3, 0x1f7

    .line 111
    .line 112
    if-eq p2, p3, :cond_3

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_3
    new-instance p2, Lcom/google/api/client/http/HttpResponseException;

    .line 116
    .line 117
    invoke-direct {p2, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-static {p2, p1}, Lcom/google/auth/oauth2/GoogleAuthException;->a(Lcom/google/api/client/http/HttpResponseException;Ljava/lang/String;)Lcom/google/auth/oauth2/GoogleAuthException;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    throw p1

    .line 126
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 127
    .line 128
    const-string p3, "ComputeEngineCredentials cannot find the metadata server. This is likely because code is not running on Google Compute Engine."

    .line 129
    .line 130
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p2
.end method

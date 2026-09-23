.class Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublicKeyLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;,
        Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/security/PublicKey;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader;->c:Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;

    .line 5
    .line 6
    return-void
.end method

.method public static d(Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;)Ljava/security/PublicKey;
    .locals 4

    .line 1
    const-string v0, "ES256"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->alg:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->kty:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "EC"

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "P-256"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->crv:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/math/BigInteger;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->x:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/math/BigInteger;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->y:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v3, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/security/spec/ECPoint;

    .line 57
    .line 58
    invoke-direct {p0, v0, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    .line 66
    .line 67
    const-string v3, "secp256r1"

    .line 68
    .line 69
    invoke-direct {v1, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    .line 74
    .line 75
    const-class v1, Ljava/security/spec/ECParameterSpec;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 82
    .line 83
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 84
    .line 85
    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_0
    const-string v0, "RS256"

    .line 98
    .line 99
    iget-object v2, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->alg:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->kty:Ljava/lang/String;

    .line 108
    .line 109
    const-string v2, "RSA"

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->d(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->n:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/math/BigInteger;

    .line 129
    .line 130
    iget-object v3, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->n:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 137
    .line 138
    .line 139
    new-instance v3, Ljava/math/BigInteger;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->e:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {p0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-direct {v3, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 148
    .line 149
    .line 150
    new-instance p0, Ljava/security/spec/RSAPublicKeySpec;

    .line 151
    .line 152
    invoke-direct {p0, v0, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :cond_1
    const/4 p0, 0x0

    .line 165
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader;->c:Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/api/client/auth/openidconnect/HttpTransportFactory;->a()Lcom/google/api/client/http/HttpTransport;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/api/client/json/gson/GsonFactory;->getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonFactory;->createJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKeySet;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKeySet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 45
    .line 46
    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKeySet;->keys:Ljava/util/List;

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    const-string v5, "X.509"

    .line 83
    .line 84
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 89
    .line 90
    const-string v7, "UTF-8"

    .line 91
    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;

    .line 126
    .line 127
    :try_start_1
    iget-object v3, v2, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;->kid:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader;->d(Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$PublicKeyLoader$JsonWebKey;)Ljava/security/PublicKey;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception v2

    .line 138
    goto :goto_2

    .line 139
    :catch_1
    move-exception v2

    .line 140
    goto :goto_2

    .line 141
    :catch_2
    move-exception v2

    .line 142
    :goto_2
    invoke-static {}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->access$000()Ljava/util/logging/Logger;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 147
    .line 148
    const-string v5, "Failed to put a key into the cache"

    .line 149
    .line 150
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    const/4 v0, 0x1

    .line 155
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_2
    new-instance v0, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier$VerificationException;

    .line 171
    .line 172
    const-string v1, "No valid public key returned by the keystore: "

    .line 173
    .line 174
    invoke-static {v1, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :catch_3
    move-exception v0

    .line 183
    invoke-static {}, Lcom/google/api/client/auth/openidconnect/IdTokenVerifier;->access$000()Ljava/util/logging/Logger;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v4, "Failed to get a certificate from certificate location "

    .line 192
    .line 193
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v1, v2, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v0
.end method

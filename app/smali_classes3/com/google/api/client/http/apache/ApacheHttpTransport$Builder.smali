.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/apache/ApacheHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private params:Lorg/apache/http/params/HttpParams;

.field private proxySelector:Ljava/net/ProxySelector;

.field private socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 15
    .line 16
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/apache/ApacheHttpTransport;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;Lorg/apache/http/params/HttpParams;Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public doNotValidateCertificate()Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 2
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->trustAllSSLContext()Ljavax/net/ssl/SSLContext;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 11
    .line 12
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSSLSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public setProxy(Lorg/apache/http/HttpHost;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->params:Lorg/apache/http/params/HttpParams;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 8
    .line 9
    return-object p0
.end method

.method public trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->getTlsSslContext()Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->getPkixTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/SslUtils;->initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/google/api/client/http/apache/SSLSocketFactoryExtension;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public trustCertificatesFromJavaKeyStore(Ljava/io/InputStream;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getJavaKeyStore()Ljava/security/KeyStore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public trustCertificatesFromStream(Ljava/io/InputStream;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getJavaKeyStore()Ljava/security/KeyStore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getX509CertificateFactory()Ljava/security/cert/CertificateFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;->trustCertificates(Ljava/security/KeyStore;)Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

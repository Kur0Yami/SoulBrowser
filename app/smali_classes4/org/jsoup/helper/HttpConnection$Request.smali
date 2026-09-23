.class public Lorg/jsoup/helper/HttpConnection$Request;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Request;",
        ">;",
        "Lorg/jsoup/Connection$Request;"
    }
.end annotation


# instance fields
.field public f:Ljava/net/Proxy;

.field public g:I

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Lorg/jsoup/parser/Parser;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljavax/net/ssl/SSLSocketFactory;

.field public s:Ljavax/net/ssl/SSLContext;

.field public t:Ljava/net/CookieManager;

.field public u:Lorg/jsoup/helper/RequestAuthenticator;

.field public v:Lorg/jsoup/Progress;

.field public final w:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "sun.net.http.allowRestrictedHeaders"

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    .line 34
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    .line 35
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    .line 36
    sget-object v0, Lorg/jsoup/helper/DataUtil;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->w:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x7530

    .line 38
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    const/high16 v0, 0x200000

    .line 39
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/util/ArrayList;

    .line 42
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    .line 43
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 44
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36"

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 45
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Lorg/jsoup/parser/Parser;

    .line 46
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->t:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/helper/HttpConnection$Request;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/jsoup/helper/HttpConnection$Base;->e:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 3
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    .line 4
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 5
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/LinkedHashMap;

    .line 7
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->d:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lorg/jsoup/helper/HttpConnection$Base;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    .line 12
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    .line 13
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    .line 14
    sget-object v0, Lorg/jsoup/helper/DataUtil;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->w:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->f:Ljava/net/Proxy;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:Ljava/net/Proxy;

    .line 17
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    .line 18
    iget v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    .line 19
    iget v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->h:I

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:I

    .line 20
    iget-boolean v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/util/ArrayList;

    .line 22
    iget-boolean v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    .line 23
    iget-boolean v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    .line 24
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->o:Lorg/jsoup/parser/Parser;

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->newInstance()Lorg/jsoup/parser/Parser;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Lorg/jsoup/parser/Parser;

    .line 25
    iget-boolean v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    .line 26
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    .line 27
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->s:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->s:Ljavax/net/ssl/SSLContext;

    .line 28
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->t:Ljava/net/CookieManager;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->t:Ljava/net/CookieManager;

    .line 29
    iget-object v0, p1, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    .line 30
    iget-object p1, p1, Lorg/jsoup/helper/HttpConnection$Request;->v:Lorg/jsoup/Progress;

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->v:Lorg/jsoup/Progress;

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public auth(Lorg/jsoup/helper/RequestAuthenticator;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    return-object p0
.end method

.method public auth()Lorg/jsoup/helper/RequestAuthenticator;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public cookies()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->d:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public data()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p1

    return-object p1
.end method

.method public data(Lorg/jsoup/Connection$KeyVal;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 1

    .line 2
    const-string v0, "keyval"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public followRedirects(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    return-object p0
.end method

.method public followRedirects()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->i:Z

    return v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public ignoreContentType(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    return-object p0
.end method

.method public ignoreContentType()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->n:Z

    return v0
.end method

.method public ignoreHttpErrors(Z)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    return-object p0
.end method

.method public ignoreHttpErrors()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->m:Z

    return v0
.end method

.method public maxBodySize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:I

    return v0
.end method

.method public maxBodySize(I)Lorg/jsoup/Connection$Request;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 3
    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->h:I

    return-object p0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public multiHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p1

    return-object p1
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Lorg/jsoup/parser/Parser;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    return-object p0
.end method

.method public parser()Lorg/jsoup/parser/Parser;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->o:Lorg/jsoup/parser/Parser;

    return-object v0
.end method

.method public postDataCharset()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    return-object v0
.end method

.method public postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection$Request;
    .locals 1

    .line 1
    const-string v0, "charset"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->q:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v0, p1}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public bridge synthetic proxy(Ljava/lang/String;I)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/lang/String;I)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->proxy(Ljava/net/Proxy;)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 2

    .line 5
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->f:Ljava/net/Proxy;

    return-object p0
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public requestBody()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public requestBodyStream(Ljava/io/InputStream;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public sslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->s:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public sslContext(Ljavax/net/ssl/SSLContext;)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->s:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public timeout()I
    .locals 1

    .line 2
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    return v0
.end method

.method public bridge synthetic timeout(I)Lorg/jsoup/Connection$Request;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Request;->timeout(I)Lorg/jsoup/helper/HttpConnection$Request;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lorg/jsoup/helper/HttpConnection$Request;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const-string v1, "Timeout milliseconds must be 0 (infinite) or greater"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 4
    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Request;->g:I

    return-object p0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

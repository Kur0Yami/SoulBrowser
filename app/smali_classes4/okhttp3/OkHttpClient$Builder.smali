.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,1388:1\n1#2:1389\n242#3:1390\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n*L\n1048#1:1390\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/Dispatcher;

.field public b:Lokhttp3/ConnectionPool;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lokhttp3/internal/c;

.field public final f:Z

.field public final g:Z

.field public final h:Lokhttp3/Authenticator;

.field public final i:Z

.field public final j:Z

.field public final k:Lokhttp3/CookieJar;

.field public final l:Lokhttp3/Dns;

.field public final m:Lokhttp3/Authenticator;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Lokhttp3/internal/tls/OkHostnameVerifier;

.field public final r:Lokhttp3/CertificatePinner;

.field public final s:I

.field public final t:I

.field public final u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 26
    .line 27
    const-string v0, "<this>"

    .line 28
    .line 29
    sget-object v1, Lokhttp3/EventListener;->a:Lokhttp3/EventListener$Companion$NONE$1;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lokhttp3/internal/c;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/internal/c;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 45
    .line 46
    sget-object v1, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    .line 47
    .line 48
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 49
    .line 50
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 53
    .line 54
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    .line 55
    .line 56
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 57
    .line 58
    sget-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    .line 59
    .line 60
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Dns;

    .line 61
    .line 62
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/Authenticator;

    .line 63
    .line 64
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "getDefault(...)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/SocketFactory;

    .line 74
    .line 75
    sget-object v0, Lokhttp3/OkHttpClient;->C:Ljava/util/List;

    .line 76
    .line 77
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Ljava/util/List;

    .line 78
    .line 79
    sget-object v0, Lokhttp3/OkHttpClient;->B:Ljava/util/List;

    .line 80
    .line 81
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Ljava/util/List;

    .line 82
    .line 83
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 84
    .line 85
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 86
    .line 87
    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 88
    .line 89
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/CertificatePinner;

    .line 90
    .line 91
    const/16 v0, 0x2710

    .line 92
    .line 93
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->s:I

    .line 94
    .line 95
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->t:I

    .line 96
    .line 97
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->u:I

    .line 98
    .line 99
    return-void
.end method

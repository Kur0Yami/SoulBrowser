.class public Lcom/google/auth/oauth2/OAuth2Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/OAuth2Utils$DefaultHttpTransportFactory;
    }
.end annotation


# static fields
.field public static final a:Ljava/net/URI;

.field public static final b:Lcom/google/api/client/http/javanet/NetHttpTransport;

.field public static final c:Lcom/google/auth/http/HttpTransportFactory;

.field public static final d:Lcom/google/api/client/json/gson/GsonFactory;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "https://oauth2.googleapis.com/token"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->a:Ljava/net/URI;

    .line 8
    .line 9
    const-string v0, "https://oauth2.googleapis.com/revoke"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 12
    .line 13
    .line 14
    const-string v0, "https://accounts.google.com/o/oauth2/auth"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->b:Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 25
    .line 26
    new-instance v0, Lcom/google/auth/oauth2/OAuth2Utils$DefaultHttpTransportFactory;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->c:Lcom/google/auth/http/HttpTransportFactory;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/api/client/json/gson/GsonFactory;->getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->d:Lcom/google/api/client/json/gson/GsonFactory;

    .line 38
    .line 39
    const-string v0, "%sExpected value %s not found."

    .line 40
    .line 41
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->e:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "%sExpected %s value %s of wrong type."

    .line 44
    .line 45
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->f:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashSet;

    .line 48
    .line 49
    const/16 v1, 0x1f4

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/16 v2, 0x1f7

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/16 v3, 0x198

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/16 v4, 0x1ad

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v5, 0x4

    .line 74
    new-array v5, v5, [Ljava/lang/Integer;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    aput-object v1, v5, v6

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    aput-object v2, v5, v1

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    aput-object v3, v5, v1

    .line 84
    .line 85
    const/4 v1, 0x3

    .line 86
    aput-object v4, v5, v1

    .line 87
    .line 88
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->g:Ljava/util/HashSet;

    .line 96
    .line 97
    return-void
.end method

.method public static a(Lcom/google/api/client/util/GenericData;)I
    .locals 6

    .line 1
    const-string v0, "expires_in"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "Error parsing token refresh response. "

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    instance-of v5, p0, Ljava/math/BigDecimal;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    check-cast p0, Ljava/math/BigDecimal;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    instance-of v5, p0, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    new-array v5, v5, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v4, v5, v3

    .line 42
    .line 43
    const-string v3, "integer"

    .line 44
    .line 45
    aput-object v3, v5, v2

    .line 46
    .line 47
    aput-object v0, v5, v1

    .line 48
    .line 49
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 60
    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v4, v1, v3

    .line 64
    .line 65
    aput-object v0, v1, v2

    .line 66
    .line 67
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Utils;->e:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    instance-of v3, p2, Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    check-cast p2, Ljava/lang/String;

    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object p1, v3, v2

    .line 23
    .line 24
    const-string p1, "string"

    .line 25
    .line 26
    aput-object p1, v3, v1

    .line 27
    .line 28
    aput-object p0, v3, v0

    .line 29
    .line 30
    sget-object p0, Lcom/google/auth/oauth2/OAuth2Utils;->f:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 41
    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v0, v2

    .line 45
    .line 46
    aput-object p0, v0, v1

    .line 47
    .line 48
    sget-object p0, Lcom/google/auth/oauth2/OAuth2Utils;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

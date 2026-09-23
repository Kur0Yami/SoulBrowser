.class final Lorg/apache/commons/text/lookup/InetAddressStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field public static final c:Lorg/apache/commons/text/lookup/InetAddressStringLookup;

.field public static final d:Lorg/apache/commons/text/lookup/InetAddressStringLookup;


# instance fields
.field public final b:Lorg/apache/commons/lang3/function/FailableSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/text/lookup/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lorg/apache/commons/text/lookup/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/InetAddressStringLookup;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->c:Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 13
    .line 14
    new-instance v0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 15
    .line 16
    new-instance v1, Lorg/apache/commons/text/lookup/a;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v2}, Lorg/apache/commons/text/lookup/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/apache/commons/text/lookup/InetAddressStringLookup;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->d:Lorg/apache/commons/text/lookup/InetAddressStringLookup;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->b:Lorg/apache/commons/lang3/function/FailableSupplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const v1, -0x4468640c

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/commons/text/lookup/InetAddressStringLookup;->b:Lorg/apache/commons/lang3/function/FailableSupplier;

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const v1, 0x337a8b

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const v1, 0x4fd2efc4    # 7.0778573E9f

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    :try_start_1
    const-string v0, "canonical-name"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v2}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/net/InetAddress;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    const-string v0, "name"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-interface {v2}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/net/InetAddress;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_2
    const-string v0, "address"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-interface {v2}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/net/InetAddress;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :catch_0
    :goto_0
    const/4 p1, 0x0

    .line 89
    return-object p1
.end method

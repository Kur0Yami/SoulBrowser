.class abstract Lorg/apache/commons/lang3/time/AbstractFormatCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/text/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;
.end method

.method public final b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 3

    .line 1
    const-string v0, "pattern"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lorg/apache/commons/lang3/time/TimeZones;->a:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    sget v0, Lorg/apache/commons/lang3/LocaleUtils;->a:I

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :goto_1
    new-instance v0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object p1, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    aput-object p2, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    aput-object p3, v1, v2

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lorg/apache/commons/lang3/time/a;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/a;-><init>(Lorg/apache/commons/lang3/time/AbstractFormatCache;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/text/Format;

    .line 53
    .line 54
    return-object p1
.end method

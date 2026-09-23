.class public final synthetic Lorg/apache/commons/lang3/time/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/time/AbstractFormatCache;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/TimeZone;

.field public final synthetic d:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/time/AbstractFormatCache;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/a;->a:Lorg/apache/commons/lang3/time/AbstractFormatCache;

    iput-object p2, p0, Lorg/apache/commons/lang3/time/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/commons/lang3/time/a;->c:Ljava/util/TimeZone;

    iput-object p4, p0, Lorg/apache/commons/lang3/time/a;->d:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 2
    .line 3
    sget-object p1, Lorg/apache/commons/lang3/time/AbstractFormatCache;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/apache/commons/lang3/time/a;->a:Lorg/apache/commons/lang3/time/AbstractFormatCache;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/lang3/time/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/lang3/time/a;->c:Ljava/util/TimeZone;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/commons/lang3/time/a;->d:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

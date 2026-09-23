.class final Lorg/apache/commons/text/lookup/DateStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field public static final b:Lorg/apache/commons/text/lookup/DateStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/DateStringLookup;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/lookup/DateStringLookup;->b:Lorg/apache/commons/text/lookup/DateStringLookup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/lang3/time/FastDateFormat;->b(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object p1, v1, v2

    .line 18
    .line 19
    const-string p1, "Invalid date format: [%s]"

    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateFormat;->a()Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    new-instance v2, Ljava/util/Date;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.class public final synthetic Lorg/apache/commons/lang3/time/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/time/FastDateParser;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser;ILjava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/d;->a:Lorg/apache/commons/lang3/time/FastDateParser;

    iput p2, p0, Lorg/apache/commons/lang3/time/d;->b:I

    iput-object p3, p0, Lorg/apache/commons/lang3/time/d;->c:Ljava/util/Calendar;

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
    check-cast p1, Ljava/util/Locale;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/apache/commons/lang3/time/d;->a:Lorg/apache/commons/lang3/time/FastDateParser;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

    .line 6
    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/lang3/time/d;->b:I

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/apache/commons/lang3/time/d;->c:Ljava/util/Calendar;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

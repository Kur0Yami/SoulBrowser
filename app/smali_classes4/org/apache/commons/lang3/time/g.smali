.class public final synthetic Lorg/apache/commons/lang3/time/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/TimeZone;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/g;->a:Ljava/util/TimeZone;

    iput-boolean p2, p0, Lorg/apache/commons/lang3/time/g;->b:Z

    iput p3, p0, Lorg/apache/commons/lang3/time/g;->c:I

    iput-object p4, p0, Lorg/apache/commons/lang3/time/g;->d:Ljava/util/Locale;

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
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 2
    .line 3
    sget-object p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->j:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/apache/commons/lang3/time/g;->a:Ljava/util/TimeZone;

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/apache/commons/lang3/time/g;->b:Z

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/lang3/time/g;->c:I

    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/commons/lang3/time/g;->d:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

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

.class public final Lorg/apache/commons/text/matcher/StringMatcherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field public static final b:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field public static final c:Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

.field public static final d:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

.field public static final e:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field public static final f:Lorg/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->a:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->b:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 18
    .line 19
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

    .line 25
    .line 26
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 27
    .line 28
    const-string v1, "\'\""

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 38
    .line 39
    const-string v1, " \t\n\r\u000c"

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->d:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 49
    .line 50
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 51
    .line 52
    const/16 v1, 0x9

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->e:Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 58
    .line 59
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->f:Lorg/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/commons/text/matcher/StringMatcher;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_0
    if-nez v1, :cond_2

    .line 22
    .line 23
    :goto_1
    sget-object p0, Lorg/apache/commons/text/matcher/StringMatcherFactory;->c:Lorg/apache/commons/text/matcher/AbstractStringMatcher$NoneMatcher;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    new-instance v1, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 30
    .line 31
    aget-char p0, p0, v0

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    new-instance v0, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lorg/apache/commons/text/matcher/AbstractStringMatcher$CharArrayMatcher;-><init>([C)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

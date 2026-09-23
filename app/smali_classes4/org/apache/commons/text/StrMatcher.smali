.class public abstract Lorg/apache/commons/text/StrMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrMatcher$CharMatcher;,
        Lorg/apache/commons/text/StrMatcher$CharSetMatcher;,
        Lorg/apache/commons/text/StrMatcher$StringMatcher;,
        Lorg/apache/commons/text/StrMatcher$TrimMatcher;,
        Lorg/apache/commons/text/StrMatcher$NoMatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/text/StrMatcher;

.field public static final b:Lorg/apache/commons/text/StrMatcher;

.field public static final c:Lorg/apache/commons/text/StrMatcher;

.field public static final d:Lorg/apache/commons/text/StrMatcher;

.field public static final e:Lorg/apache/commons/text/StrMatcher;

.field public static final f:Lorg/apache/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->a:Lorg/apache/commons/text/StrMatcher;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->b:Lorg/apache/commons/text/StrMatcher;

    .line 18
    .line 19
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    .line 20
    .line 21
    const-string v1, " \t\n\r\u000c"

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->c:Lorg/apache/commons/text/StrMatcher;

    .line 31
    .line 32
    new-instance v0, Lorg/apache/commons/text/StrMatcher$TrimMatcher;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->d:Lorg/apache/commons/text/StrMatcher;

    .line 38
    .line 39
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    .line 40
    .line 41
    const/16 v1, 0x22

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->e:Lorg/apache/commons/text/StrMatcher;

    .line 47
    .line 48
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    .line 49
    .line 50
    const-string v1, "\'\""

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lorg/apache/commons/text/StrMatcher$NoMatcher;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lorg/apache/commons/text/StrMatcher;->f:Lorg/apache/commons/text/StrMatcher;

    .line 65
    .line 66
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrMatcher$StringMatcher;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract a([CII)I
.end method

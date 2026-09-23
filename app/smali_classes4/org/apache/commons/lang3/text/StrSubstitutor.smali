.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->a:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 2
    .line 3
    const-string v0, "${"

    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-string v0, "}"

    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    const-string v0, ":-"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v1, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

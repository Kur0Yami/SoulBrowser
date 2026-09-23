.class public Lorg/apache/commons/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "${"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "}"

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ":-"

    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/commons/text/StrMatcher;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

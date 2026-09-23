.class final Lorg/apache/commons/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/text/StrMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharMatcher"
.end annotation


# instance fields
.field public final g:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lorg/apache/commons/text/StrMatcher$CharMatcher;->g:C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a([CII)I
    .locals 0

    .line 1
    iget-char p3, p0, Lorg/apache/commons/text/StrMatcher$CharMatcher;->g:C

    .line 2
    .line 3
    aget-char p1, p1, p2

    .line 4
    .line 5
    if-ne p3, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

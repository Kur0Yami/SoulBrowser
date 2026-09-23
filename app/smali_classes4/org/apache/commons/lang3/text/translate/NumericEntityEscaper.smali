.class public Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->b:I

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(ILjava/io/StringWriter;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->b:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->c:I

    .line 6
    .line 7
    if-le p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "&#"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x3b

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

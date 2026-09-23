.class public Lorg/apache/commons/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/text/translate/CodePointTranslator;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/text/translate/UnicodeEscaper;->b:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(ILjava/io/StringWriter;)Z
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/text/translate/UnicodeEscaper;->b:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const v0, 0xffff

    .line 12
    .line 13
    .line 14
    if-le p1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/commons/text/translate/UnicodeEscaper;->d(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "\\u"

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    shr-int/lit8 v0, p1, 0xc

    .line 30
    .line 31
    and-int/lit8 v0, v0, 0xf

    .line 32
    .line 33
    sget-object v1, Lorg/apache/commons/text/translate/CharSequenceTranslator;->a:[C

    .line 34
    .line 35
    aget-char v0, v1, v0

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 38
    .line 39
    .line 40
    shr-int/lit8 v0, p1, 0x8

    .line 41
    .line 42
    and-int/lit8 v0, v0, 0xf

    .line 43
    .line 44
    aget-char v0, v1, v0

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 47
    .line 48
    .line 49
    shr-int/lit8 v0, p1, 0x4

    .line 50
    .line 51
    and-int/lit8 v0, v0, 0xf

    .line 52
    .line 53
    aget-char v0, v1, v0

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 56
    .line 57
    .line 58
    and-int/lit8 p1, p1, 0xf

    .line 59
    .line 60
    aget-char p1, v1, p1

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const/4 p1, 0x1

    .line 66
    return p1
.end method

.method public d(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\\u"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

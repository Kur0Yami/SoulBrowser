.class public Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;
.super Lorg/apache/commons/text/translate/SinglePassTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/translate/CsvTranslators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsvEscaper"
.end annotation


# virtual methods
.method public final c(Ljava/lang/CharSequence;Ljava/io/StringWriter;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->c:[C

    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;[C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/16 v0, 0x22

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lorg/apache/commons/text/translate/CsvTranslators;->a:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v2, Lorg/apache/commons/text/translate/CsvTranslators;->b:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Lorg/apache/commons/lang3/Strings;->b:Lorg/apache/commons/lang3/Strings;

    .line 27
    .line 28
    invoke-virtual {v3, p1, v1, v2}, Lorg/apache/commons/lang3/Strings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.class final Lorg/apache/commons/text/numbers/DoubleFormat$ScientificDoubleFormat;
.super Lorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/numbers/DoubleFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScientificDoubleFormat"
.end annotation


# virtual methods
.method public final a(Lorg/apache/commons/text/numbers/ParsedDecimal;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, p0}, Lorg/apache/commons/text/numbers/ParsedDecimal;->f(ILorg/apache/commons/text/numbers/DoubleFormat$AbstractDoubleFormat;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

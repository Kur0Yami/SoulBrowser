.class Lorg/jsoup/select/NodeEvaluator$BlankValue;
.super Lorg/jsoup/select/NodeEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/NodeEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlankValue"
.end annotation


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public final e(Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ":blank"

    .line 2
    .line 3
    return-object v0
.end method

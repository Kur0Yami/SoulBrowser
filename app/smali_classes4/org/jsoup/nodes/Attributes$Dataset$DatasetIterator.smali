.class Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes$Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatasetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;

.field public f:Lorg/jsoup/nodes/Attribute;

.field public final synthetic g:Lorg/jsoup/nodes/Attributes$Dataset;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->g:Lorg/jsoup/nodes/Attributes$Dataset;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/jsoup/nodes/Attributes$Dataset;->c:Lorg/jsoup/nodes/Attributes;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Ljava/util/Iterator;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->f:Lorg/jsoup/nodes/Attribute;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/jsoup/nodes/Attribute;->c:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "data-"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x5

    .line 32
    if-le v0, v1, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Attribute;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->f:Lorg/jsoup/nodes/Attribute;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->f:Lorg/jsoup/nodes/Attribute;

    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->g:Lorg/jsoup/nodes/Attributes$Dataset;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/nodes/Attributes$Dataset;->c:Lorg/jsoup/nodes/Attributes;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->f:Lorg/jsoup/nodes/Attribute;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

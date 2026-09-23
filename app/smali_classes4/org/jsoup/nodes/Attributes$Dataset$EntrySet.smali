.class Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Attributes$Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lorg/jsoup/nodes/Attributes$Dataset;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Attributes$Dataset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->c:Lorg/jsoup/nodes/Attributes$Dataset;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->c:Lorg/jsoup/nodes/Attributes$Dataset;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final size()I
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$Dataset$EntrySet;->c:Lorg/jsoup/nodes/Attributes$Dataset;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;-><init>(Lorg/jsoup/nodes/Attributes$Dataset;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes$Dataset$DatasetIterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v1
.end method

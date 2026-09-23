.class public Lnet/dankito/readability4j/model/ReadabilityOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/dankito/readability4j/model/ReadabilityOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lnet/dankito/readability4j/model/ReadabilityOptions;",
        "",
        "Companion",
        "Readability4J"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    iput v1, p0, Lnet/dankito/readability4j/model/ReadabilityOptions;->a:I

    .line 11
    .line 12
    const/16 v1, 0x1f4

    .line 13
    .line 14
    iput v1, p0, Lnet/dankito/readability4j/model/ReadabilityOptions;->b:I

    .line 15
    .line 16
    iput-object v0, p0, Lnet/dankito/readability4j/model/ReadabilityOptions;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

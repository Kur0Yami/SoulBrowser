.class final Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "element",
        "Lorg/jsoup/nodes/Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic c:Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;


# direct methods
.method public constructor <init>(Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;)V
    .locals 0

    iput-object p1, p0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;->c:Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1$isDataTable$1;->c:Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;

    .line 4
    .line 5
    iget-object v0, v0, Lnet/dankito/readability4j/processor/ArticleGrabber$cleanConditionally$1;->c:Lnet/dankito/readability4j/processor/ArticleGrabber;

    .line 6
    .line 7
    iget-object v0, v0, Lnet/dankito/readability4j/processor/ArticleGrabber;->g:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

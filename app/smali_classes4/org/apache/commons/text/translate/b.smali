.class public final synthetic Lorg/apache/commons/text/translate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/text/translate/b;->c:I

    iput-object p2, p0, Lorg/apache/commons/text/translate/b;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/translate/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/commons/text/translate/b;->f:Ljava/util/ArrayList;

    check-cast v0, Lorg/jsoup/select/Elements;

    check-cast p1, Lorg/jsoup/nodes/Element;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/text/translate/b;->f:Ljava/util/ArrayList;

    check-cast p1, Lorg/apache/commons/text/translate/CharSequenceTranslator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/text/translate/b;->c:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

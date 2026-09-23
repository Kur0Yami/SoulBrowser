.class public final synthetic Lcom/google/auth/oauth2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/slf4j/spi/LoggingEventBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/slf4j/spi/LoggingEventBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auth/oauth2/c;->a:Lorg/slf4j/spi/LoggingEventBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/c;->a:Lorg/slf4j/spi/LoggingEventBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/spi/LoggingEventBuilder;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method

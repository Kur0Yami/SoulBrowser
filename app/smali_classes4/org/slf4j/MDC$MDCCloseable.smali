.class public Lorg/slf4j/MDC$MDCCloseable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/MDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDCCloseable"
.end annotation


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    .line 5
    const-string v1, "key parameter cannot be null"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

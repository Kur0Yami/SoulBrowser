.class public Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/MDC$MDCCloseable;
    }
.end annotation


# static fields
.field public static final a:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/MDC;->a()Lorg/slf4j/spi/MDCAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "MDC binding unsuccessful."

    .line 10
    .line 11
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    .line 16
    new-instance v1, Lorg/slf4j/helpers/NOPMDCAdapter;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v2, "StaticMDCBinder"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const-string v0, "Failed to load class \"org.slf4j.impl.StaticMDCBinder\"."

    .line 38
    .line 39
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "Defaulting to no-operation MDCAdapter implementation."

    .line 43
    .line 44
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "See http://www.slf4j.org/codes.html#no_static_mdc_binder for further details."

    .line 48
    .line 49
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_0
    throw v0
.end method

.method public static a()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticMDCBinder;->getSingleton()Lorg/slf4j/impl/StaticMDCBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    sget-object v0, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

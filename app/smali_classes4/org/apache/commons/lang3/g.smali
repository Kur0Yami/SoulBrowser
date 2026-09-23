.class public final synthetic Lorg/apache/commons/lang3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/lang3/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "user.region"

    .line 9
    .line 10
    sget-object v1, Lorg/apache/commons/lang3/function/Suppliers;->a:Lorg/apache/commons/lang3/builder/a;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    const-string v0, "99.0"

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_2
    invoke-static {}, Lorg/apache/commons/lang3/RandomUtils;->a()Ljava/security/SecureRandom;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_3
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->c:Landroidx/emoji2/text/flatbuffer/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Random;

    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_4
    new-instance v0, Ljava/security/SecureRandom;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_5
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_6
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->b:Lorg/apache/commons/lang3/RandomUtils;

    .line 52
    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

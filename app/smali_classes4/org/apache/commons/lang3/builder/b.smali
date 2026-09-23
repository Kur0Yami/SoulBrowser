.class public final synthetic Lorg/apache/commons/lang3/builder/b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/lang3/builder/a;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/builder/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/apache/commons/lang3/builder/b;->a:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/b;->b:Lorg/apache/commons/lang3/builder/a;

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/b;->b:Lorg/apache/commons/lang3/builder/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/b;->b:Lorg/apache/commons/lang3/builder/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

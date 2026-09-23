.class public final synthetic Lcom/google/gson/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/google/gson/InstanceCreator;

.field public final synthetic g:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/gson/internal/a;->c:I

    iput-object p1, p0, Lcom/google/gson/internal/a;->f:Lcom/google/gson/InstanceCreator;

    iput-object p2, p0, Lcom/google/gson/internal/a;->g:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/internal/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/gson/internal/a;->f:Lcom/google/gson/InstanceCreator;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/gson/InstanceCreator;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lcom/google/gson/internal/a;->f:Lcom/google/gson/InstanceCreator;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/gson/InstanceCreator;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

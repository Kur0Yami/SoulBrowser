.class public final synthetic Lorg/jsoup/parser/a;
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
    iput p1, p0, Lorg/jsoup/parser/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->r:Lorg/jsoup/internal/SoftPool;

    .line 7
    .line 8
    const/16 v0, 0x800

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->r:Lorg/jsoup/internal/SoftPool;

    .line 14
    .line 15
    const/16 v0, 0x200

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/String;

    .line 18
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

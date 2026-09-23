.class public final synthetic Lkotlin/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/e;->c:I

    iput-object p2, p0, Lkotlin/text/e;->f:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/text/e;->f:Ljava/lang/CharSequence;

    check-cast p1, Lkotlin/ranges/IntRange;

    invoke-static {v0, p1}, Lkotlin/text/StringsKt__StringsKt;->e(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lkotlin/text/e;->f:Ljava/lang/CharSequence;

    check-cast p1, Lkotlin/ranges/IntRange;

    invoke-static {v0, p1}, Lkotlin/text/StringsKt__StringsKt;->g(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

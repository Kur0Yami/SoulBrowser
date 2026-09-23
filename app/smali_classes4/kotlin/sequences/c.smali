.class public final synthetic Lkotlin/sequences/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/c;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->o(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lkotlin/collections/IndexedValue;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->p(Lkotlin/collections/IndexedValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->e(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lkotlin/sequences/Sequence;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->d(Lkotlin/sequences/Sequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

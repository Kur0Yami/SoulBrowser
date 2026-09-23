.class public final synthetic Lkotlin/comparisons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/comparisons/a;->c:I

    iput-object p2, p0, Lkotlin/comparisons/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/comparisons/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/comparisons/a;->f:Ljava/lang/Object;

    check-cast v0, [Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->d([Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lkotlin/comparisons/a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lkotlin/comparisons/a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

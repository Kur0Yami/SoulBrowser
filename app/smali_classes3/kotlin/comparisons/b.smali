.class public final synthetic Lkotlin/comparisons/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/util/Comparator;

.field public final synthetic g:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlin/comparisons/b;->c:I

    iput-object p1, p0, Lkotlin/comparisons/b;->f:Ljava/util/Comparator;

    iput-object p2, p0, Lkotlin/comparisons/b;->g:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/comparisons/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/comparisons/b;->f:Ljava/util/Comparator;

    iget-object v1, p0, Lkotlin/comparisons/b;->g:Ljava/util/Comparator;

    invoke-static {v0, v1, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->c(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lkotlin/comparisons/b;->f:Ljava/util/Comparator;

    iget-object v1, p0, Lkotlin/comparisons/b;->g:Ljava/util/Comparator;

    invoke-static {v0, v1, p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->b(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

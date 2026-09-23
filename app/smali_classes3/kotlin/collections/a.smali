.class public final synthetic Lkotlin/collections/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lkotlin/jvm/internal/markers/KMappedMarker;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/markers/KMappedMarker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/collections/a;->c:I

    iput-object p1, p0, Lkotlin/collections/a;->f:Lkotlin/jvm/internal/markers/KMappedMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/collections/a;->f:Lkotlin/jvm/internal/markers/KMappedMarker;

    check-cast v0, Lkotlin/collections/AbstractMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lkotlin/collections/AbstractMap;->a(Lkotlin/collections/AbstractMap;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/a;->f:Lkotlin/jvm/internal/markers/KMappedMarker;

    check-cast v0, Lkotlin/collections/AbstractCollection;

    invoke-static {v0, p1}, Lkotlin/collections/AbstractCollection;->a(Lkotlin/collections/AbstractCollection;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

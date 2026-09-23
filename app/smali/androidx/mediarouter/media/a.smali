.class public final synthetic Landroidx/mediarouter/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/media/a;->c:I

    iput-object p2, p0, Landroidx/mediarouter/media/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/mediarouter/media/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/media/a;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/mediarouter/media/a;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->n:I

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Landroidx/mediarouter/media/a;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->n()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

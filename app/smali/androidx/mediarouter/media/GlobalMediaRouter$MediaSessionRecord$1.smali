.class Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;
.super Landroidx/media/VolumeProviderCompat;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->g:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->g:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/media/b;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Landroidx/mediarouter/media/b;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;->g:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/media/b;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Landroidx/mediarouter/media/b;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

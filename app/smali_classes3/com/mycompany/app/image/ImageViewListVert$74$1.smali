.class Lcom/mycompany/app/image/ImageViewListVert$74$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListVert$74;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert$74;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$74$1;->c:Lcom/mycompany/app/image/ImageViewListVert$74;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$74$1;->c:Lcom/mycompany/app/image/ImageViewListVert$74;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert$74;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/image/ImageViewListVert;->N(Lcom/mycompany/app/image/ImageViewListVert;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageTransView;->e()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

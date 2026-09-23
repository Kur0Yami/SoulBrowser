.class Lcom/mycompany/app/image/ImageViewListHori$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$21;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->n0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewListHori$21;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/image/ImageViewListHori;->N(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->O0:Lcom/mycompany/app/image/ImageTransView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageTransView;->e()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->O0:Lcom/mycompany/app/image/ImageTransView;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

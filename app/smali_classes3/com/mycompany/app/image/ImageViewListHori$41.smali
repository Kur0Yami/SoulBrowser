.class Lcom/mycompany/app/image/ImageViewListHori$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$41;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewListHori$41;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->i0:Z

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewListHori;->X0(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

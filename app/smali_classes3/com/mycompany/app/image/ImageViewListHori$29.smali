.class Lcom/mycompany/app/image/ImageViewListHori$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainActivity$SystemBarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$29;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$29;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->E0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->G0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

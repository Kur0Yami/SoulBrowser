.class Lcom/mycompany/app/image/ImageViewListHori$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;


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
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    const-string v1, "Copied URL"

    .line 6
    .line 7
    sget v2, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 8
    .line 9
    invoke-static {v2, v0, v1, p1}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewListHori;->i0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->i0()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, p1, v1, p2}, Lcom/mycompany/app/image/ImageViewListHori;->W(Lcom/mycompany/app/image/ImageViewListHori;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->i0()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->s:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, p1, v0}, Lcom/mycompany/app/main/MainUtil;->a8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$51;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewListHori;->s0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

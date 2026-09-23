.class Lcom/mycompany/app/dialog/DialogPassLoad$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogPassLoad$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad$10;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$10$1;->f:Lcom/mycompany/app/dialog/DialogPassLoad$10;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPassLoad$10$1;->c:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$10$1;->f:Lcom/mycompany/app/dialog/DialogPassLoad$10;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad$10;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassLoad$10;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$10$1;->c:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.class Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogWebBookLoad$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookLoad$9;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;->f:Lcom/mycompany/app/dialog/DialogWebBookLoad$9;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;->c:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;->f:Lcom/mycompany/app/dialog/DialogWebBookLoad$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;->c:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

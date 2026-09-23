.class Lcom/mycompany/app/dialog/DialogBlockLink$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogBlockLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogBlockLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$6;->a:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogBlockLink;->w0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$6;->a:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogBlockLink;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBlockLink$6;->a:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogBlockLink;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogBlockLink;->D()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

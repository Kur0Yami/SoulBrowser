.class Lcom/mycompany/app/dialog/DialogEditSearch$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$9;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$9;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditSearch;->D()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$9;->a:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

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
    iput-object p3, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    iput p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 p2, 0x0

    .line 31
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditSearch;->D()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

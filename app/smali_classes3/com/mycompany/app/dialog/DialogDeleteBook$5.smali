.class Lcom/mycompany/app/dialog/DialogDeleteBook$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDeleteBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$5;->a:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 2
    .line 3
    const/4 p2, 0x4

    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$5;->a:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 9
    .line 10
    const p2, -0x70708

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteBook;->C()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

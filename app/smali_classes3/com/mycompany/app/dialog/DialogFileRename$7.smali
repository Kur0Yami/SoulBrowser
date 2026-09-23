.class Lcom/mycompany/app/dialog/DialogFileRename$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogFileRename;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileRename;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename$7;->a:Lcom/mycompany/app/dialog/DialogFileRename;

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
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogFileRename$7;->a:Lcom/mycompany/app/dialog/DialogFileRename;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 11
    .line 12
    const v0, -0x70708

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

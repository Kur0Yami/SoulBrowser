.class Lcom/mycompany/app/dialog/DialogInfo$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$6;->a:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogInfo$6;->a:Lcom/mycompany/app/dialog/DialogInfo;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p2, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 20
    .line 21
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogInfo$6;->a:Lcom/mycompany/app/dialog/DialogInfo;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2, p3}, Lcom/mycompany/app/dialog/DialogInfo;->E(Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    const v0, -0x70708

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p2, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

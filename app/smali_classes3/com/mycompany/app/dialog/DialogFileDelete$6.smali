.class Lcom/mycompany/app/dialog/DialogFileDelete$6;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic b:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogFileDelete;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileDelete;Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->b:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->b:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 17
    .line 18
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 19
    .line 20
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 21
    .line 22
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 4
    .line 5
    const/4 p3, 0x4

    .line 6
    if-ne p2, p3, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->b:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$6;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const p2, -0x70708

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/mycompany/app/image/ImageViewPageScroll$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$36;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$36;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->K0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefImage;->l:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$36;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const-string v3, "mRotate"

    .line 15
    .line 16
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->o7(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewControl;->o()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return v0
.end method

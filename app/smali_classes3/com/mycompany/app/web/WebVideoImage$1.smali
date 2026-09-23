.class Lcom/mycompany/app/web/WebVideoImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$1;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoImage$1;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p2, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p2, p2, Lcom/mycompany/app/web/WebVideoImage;->u:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    :cond_1
    sget p1, Lcom/mycompany/app/web/WebVideoImage;->w:I

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebVideoImage;->A()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

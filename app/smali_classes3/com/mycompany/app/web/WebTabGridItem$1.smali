.class Lcom/mycompany/app/web/WebTabGridItem$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebTabGridItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabGridItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem$1;->a:Lcom/mycompany/app/web/WebTabGridItem;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem$1;->a:Lcom/mycompany/app/web/WebTabGridItem;

    .line 5
    .line 6
    iget v1, p1, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v2, p1, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 13
    .line 14
    sub-int v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v2, p1, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 21
    .line 22
    sub-int v4, v0, v2

    .line 23
    .line 24
    iget p1, p1, Lcom/mycompany/app/web/WebTabGridItem;->c:I

    .line 25
    .line 26
    int-to-float v5, p1

    .line 27
    move v2, v1

    .line 28
    move-object v0, p2

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

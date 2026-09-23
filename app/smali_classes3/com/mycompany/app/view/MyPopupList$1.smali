.class Lcom/mycompany/app/view/MyPopupList$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyPopupList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupList$1;->a:Lcom/mycompany/app/view/MyPopupList;

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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyPopupList$1;->a:Lcom/mycompany/app/view/MyPopupList;

    .line 15
    .line 16
    iget p1, p1, Lcom/mycompany/app/view/MyPopupList;->Q0:I

    .line 17
    .line 18
    int-to-float v5, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v0, p2

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

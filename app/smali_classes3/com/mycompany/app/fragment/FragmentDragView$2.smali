.class Lcom/mycompany/app/fragment/FragmentDragView$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/fragment/FragmentDragView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/fragment/FragmentDragView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView$2;->a:Lcom/mycompany/app/fragment/FragmentDragView;

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
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentDragView$2;->a:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 5
    .line 6
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
    iget p1, p1, Lcom/mycompany/app/fragment/FragmentDragView;->r0:I

    .line 15
    .line 16
    int-to-float v5, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v0, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
